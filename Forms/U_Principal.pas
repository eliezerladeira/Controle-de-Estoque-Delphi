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
    btnEmpresa: TSpeedButton;
    btnCliente: TSpeedButton;
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
    procedure btnEmpresaClick(Sender: TObject);
    procedure AbreTelaEmpresa();
    procedure Usurio1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure AbreTelaCliente();
    procedure Cliente1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure AbreTelaFornecedor();
    procedure Fornecedores1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure AbreTelaProduto();
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses U_Usuario, U_Empresa, U_Cliente, U_Fornecedor, U_Produto;

procedure Tfrm_Principal.AbreTelaUsuario;
begin
  frm_Usuario := Tfrm_Usuario.Create(self);
  frm_Usuario.ShowModal;

  try

  finally
    frm_Usuario.Free;
    frm_Usuario := nil;
  end;
end;

procedure Tfrm_Principal.AbreTelaCliente;
begin
  frm_Cliente := Tfrm_Cliente.Create(self);
  frm_Cliente.ShowModal;
  try

  finally
    frm_Cliente.Free;
    frm_Cliente := nil;
  end;
end;

procedure Tfrm_Principal.AbreTelaEmpresa;
begin
  frm_Empresa := Tfrm_Empresa.Create(self);
  frm_Empresa.ShowModal;
  try

  finally
    // esvazia a memória
    frm_Empresa.Free;
    frm_Empresa := nil;
  end;
end;

procedure Tfrm_Principal.AbreTelaFornecedor;
begin
  frm_Fornecedor := Tfrm_Fornecedor.Create(self);
  frm_Fornecedor.ShowModal;
  try

  finally
    frm_Fornecedor.Free;
    frm_Fornecedor := nil;
  end;
end;

procedure Tfrm_Principal.AbreTelaProduto;
begin
  frm_Produto := Tfrm_Produto.Create(self);
  frm_Produto.ShowModal;
  try

  finally
    frm_Produto.Free;
    frm_Produto := nil;
  end;
end;

procedure Tfrm_Principal.btnUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure Tfrm_Principal.Cliente1Click(Sender: TObject);
begin
  AbreTelaCliente;
end;

procedure Tfrm_Principal.Empresa1Click(Sender: TObject);
begin
  AbreTelaEmpresa
end;

procedure Tfrm_Principal.Fornecedores1Click(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure Tfrm_Principal.Produtos1Click(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure Tfrm_Principal.SpeedButton10Click(Sender: TObject);
begin
  if MessageDlg('Deseja sair do sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Application.Terminate;
    end
  else
    Abort;

  close;
end;

procedure Tfrm_Principal.SpeedButton4Click(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure Tfrm_Principal.SpeedButton5Click(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure Tfrm_Principal.btnClienteClick(Sender: TObject);
begin
  AbreTelaCliente;
end;

procedure Tfrm_Principal.btnEmpresaClick(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure Tfrm_Principal.Timer1Timer(Sender: TObject);
begin
  // insere dados no status bar
  StatusBar1.Panels[0].Text := DateTostr(now);
  StatusBar1.Panels[1].Text := TimeTostr(now);
  StatusBar1.Panels[2].Text := 'Seja bem vindo ao sistema ';
end;

procedure Tfrm_Principal.Usurio1Click(Sender: TObject);
begin
  AbreTelaUsuario;
end;

end.
