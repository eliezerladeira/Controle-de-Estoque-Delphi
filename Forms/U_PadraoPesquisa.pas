unit U_PadraoPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    procedure cmbChavePesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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
    end;

    1:begin
      txtNome.Enabled := True;
      txtNome.SetFocus;
      mskInicio.Enabled := False;
      mskFim.Enabled := False;
      lblNome.Caption := 'Digite o nome';
    end;

    2:begin
      txtNome.Enabled := False;
      mskInicio.Enabled := True;
      mskFim.Enabled := False;
      mskInicio.SetFocus;
      lblNome.Caption := 'Data';
    end;

    3:begin
      txtNome.Enabled := False;
      mskInicio.Enabled := True;
      mskFim.Enabled := True;
      mskInicio.SetFocus;
      lblNome.Caption := 'Data in�cio';
    end;

  end;

end;

end.
