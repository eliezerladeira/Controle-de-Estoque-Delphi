unit U_PadraoPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TfrmPesquisaPadrao = class(TForm)
    Panel1: TPanel;
    cmbChavePesquisa: TComboBox;
    Label1: TLabel;
    txtNome: TEdit;
    mskInicio: TMaskEdit;
    mskFim: TMaskEdit;
    lblNome: TLabel;
    lblInicio: TLabel;
    lblFim: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btPesquisa: TBitBtn;
    btTransferir: TBitBtn;
    btImprimir: TBitBtn;
    qPesqPadrao: TFDQuery;
    dtsPesqPadrao: TDataSource;
    DSPesqPadrao: TfrxDBDataset;
    RelPesqPadrao: TfrxReport;
    procedure cmbChavePesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo: integer;
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TfrmPesquisaPadrao.cmbChavePesquisaChange(Sender: TObject);
begin
  case cmbChavePesquisa.ItemIndex of
    0:begin
      txtNome.Enabled := True;
      txtNome.SetFocus;
      mskInicio.Enabled := False;
      mskFim.Enabled := False;
      lblNome.Caption := 'Digite o c�digo';
      txtNome.Clear
    end;

    1:begin
      txtNome.Enabled := True;
      txtNome.SetFocus;
      mskInicio.Enabled := False;
      mskFim.Enabled := False;
      lblNome.Caption := 'Digite o nome';
      txtNome.Clear;
    end;

    2:begin
      txtNome.Enabled := False;
      mskInicio.Enabled := True;
      mskFim.Enabled := False;
      mskInicio.SetFocus;
      lblInicio.Caption := 'Data';
      mskInicio.Clear;
    end;

    3:begin
      txtNome.Enabled := False;
      mskInicio.Enabled := True;
      mskFim.Enabled := True;
      mskInicio.SetFocus;
      lblInicio.Caption := 'Data in�cio';
      mskInicio.Clear;
      mskFim.Clear;
    end;

    4:begin
      txtNome.Enabled := True;
      txtNome.SetFocus;
      mskInicio.Enabled := False;
      mskFim.Enabled := False;
      lblNome.Caption := 'Digite o c�digo do fornecedor';
      txtNome.Clear
    end;

  end;

end;

procedure TfrmPesquisaPadrao.DBGrid1DblClick(Sender: TObject);
begin
  btTransferir.Click;
end;

procedure TfrmPesquisaPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qPesqPadrao.Close;
end;

procedure TfrmPesquisaPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.
