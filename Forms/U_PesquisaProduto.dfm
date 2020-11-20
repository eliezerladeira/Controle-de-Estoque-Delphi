inherited frmPesquisaProduto: TfrmPesquisaProduto
  Caption = 'Pesquisa de Produtos'
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cmbChavePesquisa: TComboBox
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o'
        'Cadastro'
        'Per'#237'odo'
        'Fornecedor')
    end
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO_DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Title.Caption = 'CUSTO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Title.Caption = 'VENDA'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_MIN'
        Title.Caption = 'M'#205'NIMO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'UN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'C'#211'D.FORN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'FORNECEDOR'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited qPesqPadrao: TFDQuery
    SQL.Strings = (
      'select '
      '   a.id_produto,'
      '   a.produto_descricao,'
      '   a.vl_custo,'
      '   a.vl_venda,'
      '   a.estoque,'
      '   a.estoque_min,'
      '   a.unidade,'
      '   a.id_fornecedor,'
      '   b.nome,'
      '   a.cadastro'
      'from produto a'
      'inner join fornecedor b on b.id_fornecedor = a.id_fornecedor')
    object qPesqPadraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPesqPadraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object qPesqPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qPesqPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qPesqPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qPesqPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qPesqPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object qPesqPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qPesqPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
