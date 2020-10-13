unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  Tfrm_Principal = class(TForm)
    Panel1: TPanel;
    btnUsuario: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Usurio1: TMenuItem;
    Empresa1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    FormasdePagamento1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    ListadeUsurios1: TMenuItem;
    ListadeFornecedores1: TMenuItem;
    ListadeClientes1: TMenuItem;
    ListadeProdutos1: TMenuItem;
    ListadeCompras1: TMenuItem;
    ListadeVendas1: TMenuItem;
    Sobre1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure AbreTelaUsuario();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses U_Usuario;

procedure Tfrm_Principal.AbreTelaUsuario;
begin
  frm_Usuario ;+Tfrm_Usuario.Create(self);
  frm_Usuario.ShowModal;

  try

  finally
    frm_Usuario.Free;
    frm_Usuario := nil;
  end;
end;

procedure Tfrm_Principal.btnUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure Tfrm_Principal.SpeedButton10Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_Principal.Timer1Timer(Sender: TObject);
begin
  // insere dados no status bar
  StatusBar1.Panels[0].Text := DateTostr(now);
  StatusBar1.Panels[1].Text := TimeTostr(now);
  StatusBar1.Panels[2].Text := 'Seja bem vindo ao sistema ';
end;

end.
