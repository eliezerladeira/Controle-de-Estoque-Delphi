unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_Cliente = class(Tfrm_Padrao)
    q_padraoID_CLIENTE: TFDAutoIncField;
    q_padraoNOME: TStringField;
    q_padraoENDERECO: TStringField;
    q_padraoNUMERO: TIntegerField;
    q_padraoBAIRRO: TStringField;
    q_padraoCIDADE: TStringField;
    q_padraoUF: TStringField;
    q_padraoCEP: TStringField;
    q_padraoTELEFONE: TStringField;
    q_padraoCPF: TStringField;
    q_padraoEMAIL: TStringField;
    q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Cidade: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Telefone: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBCPF: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBCadastro: TDBEdit;
    procedure btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Cliente: Tfrm_Cliente;

implementation

{$R *.dfm}

procedure Tfrm_Cliente.btn_NovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text := DateToStr(now);
  DBCPF.SetFocus;
end;

end.
