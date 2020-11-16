inherited frmPesquisaFornecedor: TfrmPesquisaFornecedor
  Caption = 'Pesquisa de Fornecedores'
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'ENDERE'#199'O'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#218'MERO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
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
  end
end
