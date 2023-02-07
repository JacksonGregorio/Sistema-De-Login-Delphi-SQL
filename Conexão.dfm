object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 268
  Width = 300
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=delphi'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 32
    Top = 40
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\User\Downloads\libmysql.dll'
    Left = 168
    Top = 40
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    TableName = 'delphi.tb_login'
    Left = 24
    Top = 144
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 168
    Top = 144
  end
end
