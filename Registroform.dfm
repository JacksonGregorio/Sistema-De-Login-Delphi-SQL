object Registro: TRegistro
  Left = 0
  Top = 0
  Caption = 'Registro'
  ClientHeight = 365
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 19
    Top = 123
    Width = 27
    Height = 93
    Caption = 'Nome'
    FocusControl = DBnome
  end
  object Label5: TLabel
    Left = 16
    Top = 80
    Width = 30
    Height = 13
    Caption = 'Senha'
    FocusControl = DBsenha
  end
  object Label6: TLabel
    Left = 19
    Top = 37
    Width = 36
    Height = 13
    Caption = 'Usuario'
    FocusControl = DBusuario
  end
  object Label7: TLabel
    Left = 16
    Top = 160
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBcodigo
  end
  object Button2: TButton
    Left = 96
    Top = 274
    Width = 153
    Height = 61
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = Button2Click
  end
  object DBnome: TDBEdit
    Left = 16
    Top = 56
    Width = 345
    Height = 21
    DataField = 'Nome'
    DataSource = DataRegistro
    TabOrder = 1
  end
  object DBsenha: TDBEdit
    Left = 16
    Top = 96
    Width = 345
    Height = 21
    DataField = 'Senha'
    DataSource = DataRegistro
    TabOrder = 2
  end
  object DBusuario: TDBEdit
    Left = 16
    Top = 136
    Width = 345
    Height = 21
    DataField = 'Usuario'
    DataSource = DataRegistro
    TabOrder = 3
  end
  object DBcodigo: TDBEdit
    Left = 16
    Top = 179
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataRegistro
    TabOrder = 4
  end
  object QueryRe: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from tb_login')
    Left = 72
    Top = 8
    object QueryReNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 50
    end
    object QueryReSenha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Senha'
      Origin = 'Senha'
      Size = 50
    end
    object QueryReUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Usuario'
      Origin = 'Usuario'
      Size = 50
    end
    object QueryReID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DataRegistro: TDataSource
    DataSet = QueryRe
    Left = 128
    Top = 8
  end
  object Querylogin: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 184
    Top = 8
  end
end
