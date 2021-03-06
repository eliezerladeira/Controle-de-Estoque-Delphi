unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_Produto = class(Tfrm_Padrao)
    q_padraoID_PRODUTO: TIntegerField;
    q_padraoPRODUTO_DESCRICAO: TStringField;
    q_padraoVL_CUSTO: TFMTBCDField;
    q_padraoVL_VENDA: TFMTBCDField;
    q_padraoESTOQUE: TFMTBCDField;
    q_padraoESTOQUE_MIN: TFMTBCDField;
    q_padraoUNIDADE: TStringField;
    q_padraoCADASTRO: TDateField;
    q_padraoID_FORNECEDOR: TIntegerField;
    q_padraoNOME: TStringField;
    Label1: TLabel;
    DBCodigo: TDBEdit;
    Label2: TLabel;
    DBProduto: TDBEdit;
    Label3: TLabel;
    DBVlCusto: TDBEdit;
    Label4: TLabel;
    DBVlVenda: TDBEdit;
    Label5: TLabel;
    DBEstoque: TDBEdit;
    Label6: TLabel;
    DBEstoqueMin: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBCadastro: TDBEdit;
    Label9: TLabel;
    DBCodFornecedor: TDBEdit;
    Label10: TLabel;
    DBFornecedor: TDBEdit;
    cmbUnidade: TDBComboBox;
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Produto: Tfrm_Produto;

implementation

{$R *.dfm}

uses U_PesquisaProduto;

procedure Tfrm_Produto.btn_NovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text := DateToStr(now);
  DBProduto.SetFocus;
end;

procedure Tfrm_Produto.btn_PesquisarClick(Sender: TObject);
begin
  frmPesquisaProduto := TfrmPesquisaProduto.Create(self);
  frmPesquisaProduto.ShowModal;

  try
    if frmPesquisaProduto.codigo > 0 then
      begin
        q_padrao.Open();
        q_padrao.Locate('ID_PRODUTO', frmPesquisaProduto.codigo, []);
      end;
  finally
    frmPesquisaProduto.Free;
    frmPesquisaProduto := nil;
  end;
end;

end.
