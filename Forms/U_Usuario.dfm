inherited frm_Usuario: Tfrm_Usuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 336
  ClientWidth = 751
  ExplicitWidth = 757
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 18
    Top = 72
    Width = 63
    Height = 13
    Caption = 'ID_USUARIO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 18
    Top = 112
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBNome
  end
  object Label3: TLabel [2]
    Left = 18
    Top = 152
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = DBSenha
  end
  object Label4: TLabel [3]
    Left = 18
    Top = 192
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 18
    Top = 232
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DBCadastro
  end
  inherited Panel1: TPanel
    Width = 751
  end
  inherited Panel2: TPanel
    Top = 295
    Width = 751
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [7]
    Left = 18
    Top = 88
    Width = 134
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBNome: TDBEdit [8]
    Left = 18
    Top = 128
    Width = 654
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBSenha: TDBEdit [9]
    Left = 18
    Top = 168
    Width = 134
    Height = 21
    DataField = 'SENHA'
    DataSource = ds_padrao
    PasswordChar = '*'
    TabOrder = 4
  end
  object DBCadastro: TDBEdit [10]
    Left = 18
    Top = 251
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBTipo: TDBComboBox [11]
    Left = 18
    Top = 205
    Width = 134
    Height = 21
    Items.Strings = (
      'Administrador'
      'Apoio')
    TabOrder = 6
  end
  inherited q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'id_usuario'
    SQL.Strings = (
      
        'select id_usuario, nome, senha, tipo, cadastro from usuario orde' +
        'r by id_usuario')
    Left = 656
    Top = 248
    object q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 712
    Top = 248
  end
end
