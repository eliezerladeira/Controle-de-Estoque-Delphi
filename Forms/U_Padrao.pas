unit U_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_Padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btn_Novo: TBitBtn;
    btn_Deletar: TBitBtn;
    btn_Editar: TBitBtn;
    btn_Gravar: TBitBtn;
    btn_Cancelar: TBitBtn;
    btn_Atualizar: TBitBtn;
    DBNavigator1: TDBNavigator;
    btn_Pesquisar: TBitBtn;
    q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_DeletarClick(Sender: TObject);
    procedure btn_EditarClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_AtualizarClick(Sender: TObject);
    procedure TrataBotoes();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Padrao: Tfrm_Padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure Tfrm_Padrao.btn_AtualizarClick(Sender: TObject);
begin
  // atualiza o registro
  try
    TrataBotoes;
    q_padrao.Post;
    MessageDlg('Registro atualizado com sucesso!', mtInformation, [mbOk], 0);
  except
    ShowMessage('Erro na atualização do registro. Verifique!');
  end;
end;

procedure Tfrm_Padrao.btn_CancelarClick(Sender: TObject);
begin
  // cancela a ação
  TrataBotoes;
  q_padrao.Cancel;
  MessageDlg('Ação cancelada pelo usuário!', mtInformation, [mbOk], 0);
end;

procedure Tfrm_Padrao.btn_DeletarClick(Sender: TObject);
begin
  //deleta o registro
  TrataBotoes;
  if messagedlg('Deseja deletar este registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      q_padrao.Delete;
      Messagedlg('Registro deletado com sucesso!',mtInformation,[mbOk],0);
      Tratabotoes;
    end
  else
    Tratabotoes;
    abort;
end;

procedure Tfrm_Padrao.btn_EditarClick(Sender: TObject);
begin
  // libera para edição
  TrataBotoes;
  if MessageDlg('Deseja editar este registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      q_padrao.Edit;
    end
  else
    TrataBotoes;
    abort;
end;

procedure Tfrm_Padrao.btn_GravarClick(Sender: TObject);
begin
  // salva o registro
  try
    q_padrao.Post;
    MessageDlg('Registro salvo com sucesso!', mtInformation, [mbOk], 0);
    TrataBotoes;
  except
    ShowMessage('Erro na gravação dos dados. Verifique!');
  end;
end;

procedure Tfrm_Padrao.btn_NovoClick(Sender: TObject);
begin
  // cria um novo registro
  TrataBotoes;
  q_padrao.Open;
  q_padrao.Append;
end;

procedure Tfrm_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // faz a tecla enter ter a mesma função da tecla tab
  if key = #13 then
    begin
      key := #0;
      Perform(wm_nextDlgCtl,0,0);
    end;

end;

procedure TFrm_padrao.TrataBotoes;
begin
  btn_novo.enabled := not btn_novo.enabled;
  btn_deletar.enabled := not btn_deletar.enabled;
  btn_editar.enabled := not btn_editar.enabled;
  btn_gravar.enabled := not btn_gravar.enabled;
  btn_atualizar.enabled := not btn_atualizar.enabled;
end;

end.
