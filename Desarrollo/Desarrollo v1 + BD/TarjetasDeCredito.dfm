object FormtarjetasDeCredito: TFormtarjetasDeCredito
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Tarjetas de Credito'
  ClientHeight = 342
  ClientWidth = 352
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 48
    Top = 244
    Width = 56
    Height = 19
    Caption = 'Tarjeta:'
  end
  object SpeedButton1: TSpeedButton
    Left = 124
    Top = 290
    Width = 107
    Height = 41
    Caption = 'Agregar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 124
    Top = 290
    Width = 107
    Height = 41
    Caption = 'Eliminar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 237
    Top = 290
    Width = 107
    Height = 41
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object Label3: TLabel
    Left = 56
    Top = 197
    Width = 247
    Height = 23
    Caption = 'Complete los campos en rojo!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Edit1: TEdit
    Left = 102
    Top = 241
    Width = 203
    Height = 27
    MaxLength = 25
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 336
    Height = 183
    DataSource = DataModule1.Tabla_Tarjetas
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 280
        Visible = True
      end>
  end
  object comprobarTarjetas: TADOQuery
    Connection = DataModule1.SoyUnaConeccion
    Parameters = <
      item
        Name = 'Dato'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select nombre'
      'from tarjetas'
      'where (Nombre =:Dato)')
    Left = 288
    Top = 192
  end
end
