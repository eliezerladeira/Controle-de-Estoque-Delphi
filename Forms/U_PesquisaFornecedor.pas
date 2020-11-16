unit U_PesquisaFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PadraoPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesquisaFornecedor = class(TfrmPesquisaPadrao)
    procedure btPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaFornecedor: TfrmPesquisaFornecedor;

implementation

{$R *.dfm}

procedure TfrmPesquisaFornecedor.btPesquisaClick(Sender: TObject);
begin
  qPesqPadrao.Close;
  qPesqPadrao.SQL.Add('');
  qPesqPadrao.Params.Clear;
  qPesqPadrao.SQL.Clear;

  qPesqPadrao.SQL.Add('SELECT ID_FORNECEDOR, NOME, ENDERECO, NUMERO, BAIRRO, CIDADE, UF, CEP, TELEFONE, CNPJ, EMAIL, CADASTRO FROM FORNECEDOR');

  case cmbChavePesquisa.ItemIndex of
    0:begin
      Qpesqpadrao.SQL.Add('WHERE ID_FORNECEDOR =:PID_FORNECEDOR');
      Qpesqpadrao.ParamByName('PID_FORNECEDOR').AsString := txtnome.Text;
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

end.
