inherited frm_Produto: Tfrm_Produto
  Caption = 'Cadastro de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 17
    Top = 72
    Width = 38
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBCodigo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 17
    Top = 120
    Width = 45
    Height = 13
    Caption = 'Produto'
    FocusControl = DBProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 17
    Top = 168
    Width = 81
    Height = 13
    Caption = 'Valor de Custo'
    FocusControl = DBVlCusto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 168
    Top = 168
    Width = 84
    Height = 13
    Caption = 'Valor de Venda'
    FocusControl = DBVlVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 324
    Top = 168
    Width = 100
    Height = 13
    Caption = 'Saldo em Estoque'
    FocusControl = DBEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 480
    Top = 168
    Width = 89
    Height = 13
    Caption = 'Estoque M'#237'nimo'
    FocusControl = DBEstoqueMin
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 636
    Top = 168
    Width = 46
    Height = 13
    Caption = 'Unidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 652
    Top = 72
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
  object Label9: TLabel [8]
    Left = 17
    Top = 216
    Width = 91
    Height = 13
    Caption = 'C'#243'd. Fornecedor'
    FocusControl = DBCodFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 106
    Top = 216
    Width = 64
    Height = 13
    Caption = 'Fornecedor'
    FocusControl = DBFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel1: TPanel
    TabOrder = 10
    inherited btn_Pesquisar: TBitBtn
      OnClick = btn_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    TabOrder = 11
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBCodigo: TDBEdit [12]
    Left = 17
    Top = 88
    Width = 83
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DBProduto: TDBEdit [13]
    Left = 17
    Top = 136
    Width = 769
    Height = 21
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBVlCusto: TDBEdit [14]
    Left = 17
    Top = 184
    Width = 145
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBVlVenda: TDBEdit [15]
    Left = 168
    Top = 184
    Width = 150
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEstoque: TDBEdit [16]
    Left = 324
    Top = 184
    Width = 150
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEstoqueMin: TDBEdit [17]
    Left = 480
    Top = 184
    Width = 150
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBCadastro: TDBEdit [18]
    Left = 652
    Top = 88
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 1
  end
  object DBCodFornecedor: TDBEdit [19]
    Left = 17
    Top = 232
    Width = 83
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBFornecedor: TDBEdit [20]
    Left = 106
    Top = 232
    Width = 680
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object cmbUnidade: TDBComboBox [21]
    Left = 636
    Top = 184
    Width = 150
    Height = 21
    DataField = 'UNIDADE'
    DataSource = ds_padrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'PC'
      'LT'
      'UN'
      'GR')
    TabOrder = 7
  end
  inherited q_padrao: TFDQuery
    SQL.Strings = (
      'select '
      '   a.id_produto,'
      '   a.produto_descricao,'
      '   a.vl_custo,'
      '   a.vl_venda,'
      '   a.estoque,'
      '   a.estoque_min,'
      '   a.unidade,'
      '   a.cadastro,'
      '   a.id_fornecedor,'
      '   b.nome'
      'from produto a, fornecedor b'
      'where a.id_fornecedor = b.id_fornecedor'
      'order by a.id_produto')
    Left = 8
    Top = 536
    object q_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object q_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object q_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited ds_padrao: TDataSource
    Left = 56
    Top = 536
  end
end
