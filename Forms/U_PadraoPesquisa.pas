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
    nskFim: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btPesquisa: TBitBtn;
    btTransferir: TBitBtn;
    btImprimir: TBitBtn;
    qPesqPadrao: TFDQuery;
    dtsPesqPadrao: TDataSource;
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

end.
