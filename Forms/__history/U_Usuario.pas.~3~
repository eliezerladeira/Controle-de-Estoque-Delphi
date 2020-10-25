unit U_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_Usuario = class(Tfrm_Padrao)
    q_padraoID_USUARIO: TIntegerField;
    q_padraoNOME: TStringField;
    q_padraoSENHA: TStringField;
    q_padraoTIPO: TStringField;
    q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBNome: TDBEdit;
    Label3: TLabel;
    DBSenha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBCadastro: TDBEdit;
    DBTipo: TDBComboBox;
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Usuario: Tfrm_Usuario;

implementation

{$R *.dfm}

procedure Tfrm_Usuario.btn_GravarClick(Sender: TObject);
begin
  inherited;
  DBNome.Enabled := false;
  DBSenha.Enabled := false;
  DBTipo.Enabled := false;
end;

procedure Tfrm_Usuario.btn_NovoClick(Sender: TObject);
begin
  inherited;

  DBCadastro.Text := DateToStr(now);
  DBNome.Enabled := true;
  DBSenha.Enabled := true;
  DBTipo.Enabled := true;
  DBNome.SetFocus;

end;

end.
