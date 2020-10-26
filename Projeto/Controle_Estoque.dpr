program Controle_Estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {frm_Principal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Padrao in '..\Forms\U_Padrao.pas' {frm_Padrao},
  U_Usuario in '..\Forms\U_Usuario.pas' {frm_Usuario},
  U_Empresa in '..\Forms\U_Empresa.pas' {frm_Empresa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Principal, frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_Padrao, frm_Padrao);
  Application.CreateForm(Tfrm_Usuario, frm_Usuario);
  Application.CreateForm(Tfrm_Empresa, frm_Empresa);
  Application.Run;
end.
