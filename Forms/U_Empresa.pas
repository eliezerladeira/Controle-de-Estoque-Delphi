unit U_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_Empresa = class(Tfrm_Padrao)
    q_padraoID_EMPRESA: TIntegerField;
    q_padraoRAZAO_SOCIAL: TStringField;
    q_padraoN_FANTASIA: TStringField;
    q_padraoENDERECO: TStringField;
    q_padraoNUMERO: TIntegerField;
    q_padraoBAIRRO: TStringField;
    q_padraoCIDADE: TStringField;
    q_padraoUF: TStringField;
    q_padraoCEP: TStringField;
    q_padraoTELEFONE: TStringField;
    q_padraoCNPJ: TStringField;
    q_padraoEMAIL: TStringField;
    q_padraoLOGO: TBlobField;
    q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBRazaoSocial: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBCNPJ: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBImage1: TDBImage;
    Label14: TLabel;
    DBCadastro: TDBEdit;
    btFoto: TBitBtn;
    btClear: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure btn_NovoClick(Sender: TObject);
    procedure btFotoClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Empresa: Tfrm_Empresa;

implementation

{$R *.dfm}

procedure Tfrm_Empresa.btClearClick(Sender: TObject);
begin
  // limpa a foto
  q_padrao.Edit;
  q_padraoLOGO.AsVariant := null;
  q_padrao.Refresh;
  MessageDlg('Imagem deletada com sucesso!', mtInformation, [mbOk], 0);
end;

procedure Tfrm_Empresa.btFotoClick(Sender: TObject);
begin
  // insere foto
  q_padrao.Edit;
  OpenDialog1.Execute;
  DBImage1.Picture.LoadFromFile(OpenDialog1.FileName);
  q_padrao.Refresh;
  MessageDlg('Imagem inserida com sucesso!', mtInformation, [mbOk], 0);
end;

procedure Tfrm_Empresa.btn_NovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text := DateToStr(now);
  DBCNPJ.SetFocus;
end;

end.
