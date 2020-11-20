program Controle_Estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {frm_Principal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Padrao in '..\Forms\U_Padrao.pas' {frm_Padrao},
  U_Usuario in '..\Forms\U_Usuario.pas' {frm_Usuario},
  U_Empresa in '..\Forms\U_Empresa.pas' {frm_Empresa},
  U_Cliente in '..\Forms\U_Cliente.pas' {frm_Cliente},
  U_Fornecedor in '..\Forms\U_Fornecedor.pas' {frm_Fornecedor},
  U_Produto in '..\Forms\U_Produto.pas' {frm_Produto},
  U_FormaPgto in '..\Forms\U_FormaPgto.pas' {frm_FormaPgto},
  U_PadraoPesquisa in '..\Forms\U_PadraoPesquisa.pas' {frmPesquisaPadrao},
  U_PesquisaUsuario in '..\Forms\U_PesquisaUsuario.pas' {frmPesquisaUsuarios},
  U_PesquisaCliente in '..\Forms\U_PesquisaCliente.pas' {frmPesquisaCliente},
  U_PesquisaFornecedor in '..\Forms\U_PesquisaFornecedor.pas' {frmPesquisaFornecedor},
  U_PesquisaProduto in '..\Forms\U_PesquisaProduto.pas' {frmPesquisaProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Principal, frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
