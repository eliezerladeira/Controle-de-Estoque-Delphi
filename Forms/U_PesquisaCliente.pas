unit U_PesquisaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PadraoPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesquisaCliente = class(TfrmPesquisaPadrao)
    qPesqPadraoID_CLIENTE: TIntegerField;
    qPesqPadraoNOME: TStringField;
    qPesqPadraoENDERECO: TStringField;
    qPesqPadraoNUMERO: TIntegerField;
    qPesqPadraoBAIRRO: TStringField;
    qPesqPadraoCIDADE: TStringField;
    qPesqPadraoUF: TStringField;
    qPesqPadraoCEP: TStringField;
    qPesqPadraoTELEFONE: TStringField;
    qPesqPadraoCPF: TStringField;
    qPesqPadraoEMAIL: TStringField;
    qPesqPadraoCADASTRO: TDateField;
    procedure btPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaCliente: TfrmPesquisaCliente;

implementation

{$R *.dfm}

procedure TfrmPesquisaCliente.btPesquisaClick(Sender: TObject);
begin
  qPesqPadrao.Close;
  qPesqPadrao.SQL.Add('');
  qPesqPadrao.Params.Clear;
  qPesqPadrao.SQL.Clear;

  qPesqPadrao.SQL.Add('SELECT ID_CLIENTE, NOME, ENDERECO, NUMERO, BAIRRO, CIDADE, UF, CEP, TELEFONE, CPF, EMAIL, CADASTRO FROM CLIENTE');

  case cmbChavePesquisa.ItemIndex of
    0:begin
      Qpesqpadrao.SQL.Add('WHERE ID_CLIENTE =:PID_CLIENTE');
      Qpesqpadrao.ParamByName('PID_CLIENTE').AsString := txtnome.Text;
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
      MessageDlg('Registro não encontrado', mtInformation, [mbOK], 0);
    end
  else
    abort;

end;

end.
