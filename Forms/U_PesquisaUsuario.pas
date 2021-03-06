unit U_PesquisaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PadraoPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmPesquisaUsuarios = class(TfrmPesquisaPadrao)
    qPesqPadraoID_USUARIO: TIntegerField;
    qPesqPadraoNOME: TStringField;
    qPesqPadraoTIPO: TStringField;
    qPesqPadraoCADASTRO: TDateField;
    procedure btPesquisaClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaUsuarios: TfrmPesquisaUsuarios;

implementation

{$R *.dfm}

procedure TfrmPesquisaUsuarios.btImprimirClick(Sender: TObject);
  var caminho: string;
begin
  caminho := ExtractFilePath(Application.ExeName);

  if frmPesquisaUsuarios.RelPesqPadrao.LoadFromFile(caminho + 'Rel_Usuario.fr3') then
    begin
      RelPesqPadrao.Clear;
      RelPesqPadrao.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel_Usuario.fr3');
    end
  else
    MessageDlg('Relat�rio n�o encontrado', mtError, [mbOk], 0);

end;

procedure TfrmPesquisaUsuarios.btPesquisaClick(Sender: TObject);
begin
  qPesqPadrao.Close;
  qPesqPadrao.SQL.Add('');
  qPesqPadrao.Params.Clear;
  qPesqPadrao.SQL.Clear;

  qPesqPadrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM USUARIO');

  case cmbChavePesquisa.ItemIndex of
    0:begin
      Qpesqpadrao.SQL.Add('WHERE ID_USUARIO =:PID_USUARIO'); // criamos o parametro
      Qpesqpadrao.ParamByName('PID_USUARIO').AsString := txtnome.Text; // aponta para o campo do parametro
    end;

    1:begin
      qPesqPadrao.SQL.Add('WHERE NOME LIKE :PNOME');
      qPesqPadrao.ParamByName('PNOME').AsString := '%' + txtNome.Text + '%';
    end;

    2:begin
      qPesqPadrao.SQL.Add('WHERE CADASTRO =:PCADASTRO');
      qPesqPadrao.ParamByName('PCADASTRO').AsDate := StrToDate(mskInicio.Text);
    end;

    3:begin
      qPesqPadrao.SQL.Add('WHERE CADASTRO BETWEEN =:PINICIO AND =:PFIM');
      qPesqPadrao.ParamByName('PINICIO').AsDate := StrToDate(mskInicio.Text);
      qPesqPadrao.ParamByName('PFIM').AsDate := StrToDate(mskFim.Text);
    end;
  end;

  qPesqPadrao.Open;

  if qPesqPadrao.IsEmpty then
    begin
      MessageDlg('Registro n�o encontrado', mtInformation, [mbOK], 0);
    end
  else
    abort;

end;

procedure TfrmPesquisaUsuarios.btTransferirClick(Sender: TObject);
begin
  if qPesqPadrao.RecordCount > 0 then
    begin
      codigo := qPesqPadraoID_USUARIO.AsInteger;
    end
  else
  abort;
end;

procedure TfrmPesquisaUsuarios.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btTransferir.Click;
end;

end.
