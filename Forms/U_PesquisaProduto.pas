unit U_PesquisaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PadraoPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesquisaProduto = class(TfrmPesquisaPadrao)
    qPesqPadraoID_PRODUTO: TIntegerField;
    qPesqPadraoPRODUTO_DESCRICAO: TStringField;
    qPesqPadraoVL_CUSTO: TFMTBCDField;
    qPesqPadraoVL_VENDA: TFMTBCDField;
    qPesqPadraoESTOQUE: TFMTBCDField;
    qPesqPadraoESTOQUE_MIN: TFMTBCDField;
    qPesqPadraoUNIDADE: TStringField;
    qPesqPadraoID_FORNECEDOR: TIntegerField;
    qPesqPadraoNOME: TStringField;
    qPesqPadraoCADASTRO: TDateField;
    procedure btPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaProduto: TfrmPesquisaProduto;

implementation

{$R *.dfm}

procedure TfrmPesquisaProduto.btPesquisaClick(Sender: TObject);
begin
  qPesqPadrao.Close;
  qPesqPadrao.SQL.Add('');
  qPesqPadrao.Params.Clear;
  qPesqPadrao.SQL.Clear;

  qPesqPadrao.SQL.Add('SELECT a.id_produto, a.produto_descricao, a.vl_custo, a.vl_venda, '
    + 'a.estoque, a.estoque_min, a.unidade, a.id_fornecedor, b.nome, a.cadastro '
    + 'from produto a inner join fornecedor b on b.id_fornecedor = a.id_fornecedor');

  case cmbChavePesquisa.ItemIndex of
    0:begin
      Qpesqpadrao.SQL.Add('WHERE A.ID_PRODUTO =:PID_PRODUTO');
      Qpesqpadrao.ParamByName('PID_PRODUTO').AsString := txtnome.Text;
    end;

    1:begin
      qPesqPadrao.SQL.Add('WHERE A.PRODUTO_DESCRICAO LIKE :PDESCRICAO');
      qPesqPadrao.ParamByName('PDESCRICAO').AsString := '%' + txtNome.Text + '%';
    end;

    2:begin
      qPesqPadrao.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
      qPesqPadrao.ParamByName('PCADASTRO').AsDate := StrToDate(mskInicio.Text);
    end;

    3:begin
      qPesqPadrao.SQL.Add('WHERE A.CADASTRO BETWEEN =:PINICIO AND =:PFIM');
      qPesqPadrao.ParamByName('PINICIO').AsDate := StrToDate(mskInicio.Text);
      qPesqPadrao.ParamByName('PFIM').AsDate := StrToDate(mskFim.Text);
    end;

    4:begin
      Qpesqpadrao.SQL.Add('WHERE A.ID_FORNECEDOR =:PID_FORNECEDOR');
      Qpesqpadrao.ParamByName('PID_FORNECEDOR').AsString := txtnome.Text;
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
