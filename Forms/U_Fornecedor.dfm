inherited frm_Fornecedor: Tfrm_Fornecedor
  Caption = 'Cadastro de Fornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 38
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBIdFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 109
    Width = 71
    Height = 13
    Caption = 'Raz'#227'o Social'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 106
    Top = 157
    Width = 52
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 742
    Top = 157
    Width = 44
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 208
    Width = 34
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 384
    Top = 208
    Width = 38
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 755
    Top = 208
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 157
    Width = 20
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 256
    Width = 49
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 150
    Top = 64
    Width = 39
    Height = 13
    Caption = 'C.N.P.J.'
    FocusControl = DBCNPJ
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel [10]
    Left = 133
    Top = 256
    Width = 35
    Height = 13
    Caption = 'E-mail'
    FocusControl = DBEdit11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel [11]
    Left = 652
    Top = 64
    Width = 98
    Height = 13
    Caption = 'Data de Cadastro'
    FocusControl = DBCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel1: TPanel
    TabOrder = 12
    inherited btn_Pesquisar: TBitBtn
      OnClick = btn_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    TabOrder = 13
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBIdFornecedor: TDBEdit [14]
    Left = 8
    Top = 80
    Width = 92
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [15]
    Left = 8
    Top = 125
    Width = 778
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [16]
    Left = 106
    Top = 173
    Width = 630
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit4: TDBEdit [17]
    Left = 742
    Top = 173
    Width = 44
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit5: TDBEdit [18]
    Left = 8
    Top = 224
    Width = 370
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit6: TDBEdit [19]
    Left = 384
    Top = 224
    Width = 365
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit7: TDBEdit [20]
    Left = 756
    Top = 224
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DBEdit8: TDBEdit [21]
    Left = 8
    Top = 173
    Width = 92
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit9: TDBEdit [22]
    Left = 8
    Top = 272
    Width = 119
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DBCNPJ: TDBEdit [23]
    Left = 150
    Top = 80
    Width = 264
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DBEdit11: TDBEdit [24]
    Left = 133
    Top = 272
    Width = 653
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DBCadastro: TDBEdit [25]
    Left = 652
    Top = 80
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 2
  end
  inherited q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT '
      '   id_fornecedor, '
      '   nome,'
      '   endereco,'
      '   numero,'
      '   bairro,'
      '   cidade,'
      '   uf,'
      '   cep,'
      '   telefone,'
      '   cnpj,'
      '   email,'
      '   cadastro'
      'from fornecedor'
      'order by id_fornecedor')
    Left = 8
    Top = 536
    object q_padraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
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
      Size = 16
    end
    object q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 16
    end
    object q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;0;_'
    end
    object q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
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
