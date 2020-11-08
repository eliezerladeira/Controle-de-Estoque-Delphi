inherited frm_Cliente: Tfrm_Cliente
  Caption = 'Cadastro de Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 40
    Top = 80
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 138
    Top = 125
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 138
    Top = 171
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 688
    Top = 171
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 40
    Top = 216
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit5
  end
  object Cidade: TLabel [5]
    Left = 356
    Top = 216
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 708
    Top = 216
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 40
    Top = 171
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit8
  end
  object Telefone: TLabel [8]
    Left = 40
    Top = 264
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 40
    Top = 125
    Width = 31
    Height = 13
    Caption = 'C.P.F.'
    FocusControl = DBCPF
  end
  object Label11: TLabel [10]
    Left = 138
    Top = 264
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 40
    Top = 312
    Width = 70
    Height = 13
    Caption = 'Data Cadastro'
    FocusControl = DBCadastro
  end
  inherited Panel1: TPanel
    TabOrder = 12
  end
  inherited Panel2: TPanel
    TabOrder = 13
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 40
    Top = 96
    Width = 58
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [15]
    Left = 138
    Top = 141
    Width = 600
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [16]
    Left = 138
    Top = 187
    Width = 544
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [17]
    Left = 688
    Top = 187
    Width = 50
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [18]
    Left = 40
    Top = 232
    Width = 310
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [19]
    Left = 356
    Top = 232
    Width = 346
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [20]
    Left = 708
    Top = 232
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [21]
    Left = 40
    Top = 187
    Width = 92
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit9: TDBEdit [22]
    Left = 40
    Top = 280
    Width = 92
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DBCPF: TDBEdit [23]
    Left = 40
    Top = 141
    Width = 92
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DBEdit11: TDBEdit [24]
    Left = 138
    Top = 280
    Width = 600
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DBCadastro: TDBEdit [25]
    Left = 40
    Top = 328
    Width = 92
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 11
  end
  inherited q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT '
      '   id_cliente, '
      '   nome,'
      '   endereco,'
      '   numero,'
      '   bairro,'
      '   cidade,'
      '   uf,'
      '   cep,'
      '   telefone,'
      '   cpf,'
      '   email,'
      '   cadastro'
      'from cliente'
      'order by id_cliente')
    Left = 8
    Top = 536
    object q_padraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
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
    object q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\.000\.000\-00;0;_'
      Size = 16
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
    Left = 56
    Top = 536
  end
end
