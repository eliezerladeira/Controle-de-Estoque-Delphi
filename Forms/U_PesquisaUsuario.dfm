inherited frmPesquisaUsuarios: TfrmPesquisaUsuarios
  Caption = 'Pesquisa de Usu'#225'rios'
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
    inherited btTransferir: TBitBtn
      OnClick = btTransferirClick
    end
  end
  inherited DBGrid1: TDBGrid
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
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
      '   id_usuario,'
      '   nome,'
      '   tipo,'
      '   cadastro'
      'from usuario order by id_usuario')
    object qPesqPadraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPesqPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qPesqPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
