unit U_FormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_FormaPgto = class(Tfrm_Padrao)
    q_padraoID_FORMA_PGTO: TIntegerField;
    q_padraoDESCRICAO: TStringField;
    q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBCodigo: TDBEdit;
    Label2: TLabel;
    DBDescricao: TDBEdit;
    Label3: TLabel;
    DBCadastro: TDBEdit;
    procedure btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_FormaPgto: Tfrm_FormaPgto;

implementation

{$R *.dfm}

procedure Tfrm_FormaPgto.btn_NovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text := DateToStr(now);
  DBDescricao.SetFocus;
end;

end.
