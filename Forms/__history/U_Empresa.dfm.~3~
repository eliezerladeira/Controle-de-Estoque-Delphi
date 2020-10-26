inherited frm_Empresa: Tfrm_Empresa
  Caption = 'Cadastro de Empresas'
  ExplicitLeft = -37
  ExplicitTop = -83
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 60
    Width = 63
    Height = 13
    Caption = 'ID_EMPRESA'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 160
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = DBRazaoSocial
  end
  object Label3: TLabel [2]
    Left = 498
    Top = 160
    Width = 63
    Height = 13
    Caption = 'N_FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 119
    Top = 210
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 723
    Top = 213
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 264
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 271
    Top = 264
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 565
    Top = 264
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 213
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 601
    Top = 264
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 8
    Top = 112
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 8
    Top = 312
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [12]
    Left = 681
    Top = 312
    Width = 28
    Height = 13
    Caption = 'LOGO'
    FocusControl = DBImage1
  end
  object Label14: TLabel [13]
    Left = 8
    Top = 364
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DBCadastro
  end
  inherited Panel1: TPanel
    TabOrder = 14
  end
  inherited Panel2: TPanel
    TabOrder = 15
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [16]
    Left = 8
    Top = 79
    Width = 63
    Height = 21
    DataField = 'ID_EMPRESA'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DBRazaoSocial: TDBEdit [17]
    Left = 8
    Top = 176
    Width = 484
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [18]
    Left = 498
    Top = 176
    Width = 288
    Height = 21
    DataField = 'N_FANTASIA'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [19]
    Left = 119
    Top = 229
    Width = 598
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [20]
    Left = 723
    Top = 229
    Width = 63
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [21]
    Left = 8
    Top = 280
    Width = 257
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [22]
    Left = 271
    Top = 280
    Width = 288
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [23]
    Left = 565
    Top = 280
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [24]
    Left = 8
    Top = 229
    Width = 105
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit10: TDBEdit [25]
    Left = 601
    Top = 280
    Width = 185
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DBEdit11: TDBEdit [26]
    Left = 8
    Top = 128
    Width = 190
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DBEdit12: TDBEdit [27]
    Left = 8
    Top = 328
    Width = 484
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DBImage1: TDBImage [28]
    Left = 681
    Top = 328
    Width = 105
    Height = 105
    DataField = 'LOGO'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DBCadastro: TDBEdit [29]
    Left = 8
    Top = 380
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 13
  end
  object Button1: TButton [30]
    Left = 600
    Top = 377
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 16
  end
  object Button2: TButton [31]
    Left = 600
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 17
  end
  inherited q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '   ID_EMPRESA,'
      '   RAZAO_SOCIAL,'
      '   N_FANTASIA,'
      '   ENDERECO,'
      '   NUMERO,'
      '   BAIRRO,'
      '   CIDADE,'
      '   UF,'
      '   CEP,'
      '   TELEFONE,'
      '   CNPJ,'
      '   EMAIL,'
      '   LOGO,'
      '   CADASTRO'
      'FROM EMPRESA')
    Left = 8
    Top = 536
    object q_padraoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_padraoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object q_padraoN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 14
    end
    object q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      EditMask = '00.000.000/0000-00;0;_'
    end
    object q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object q_padraoLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 64
    Top = 536
  end
end
