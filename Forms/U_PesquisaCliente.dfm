inherited frmPesquisaCliente: TfrmPesquisaCliente
  Caption = 'Pesquisa de Clientes'
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
    DataSource = dtsPesqPadrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'ENDERE'#199'O'
        Width = 400
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
        Width = 300
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
        FieldName = 'CPF'
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
    Active = True
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
    object qPesqPadraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPesqPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qPesqPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object qPesqPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qPesqPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object qPesqPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object qPesqPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qPesqPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object qPesqPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object qPesqPadraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 16
    end
    object qPesqPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object qPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
