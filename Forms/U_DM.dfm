object DM: TDM
  OldCreateOrder = False
  Height = 239
  Width = 628
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\eliez\OneDrive\Projetos\Delphi\Estoque\EXE\Dat' +
        'a\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=123456'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 96
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 184
    Top = 16
  end
end
