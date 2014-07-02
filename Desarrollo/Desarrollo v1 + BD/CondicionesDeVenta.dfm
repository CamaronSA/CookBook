object FormModifCondicionesVenta: TFormModifCondicionesVenta
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  BorderIcons = []
  Caption = 'Condiciones de venta'
  ClientHeight = 599
  ClientWidth = 505
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 8
    Top = 8
    Width = 251
    Height = 33
    Caption = 'Condiciones de venta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 304
    Top = 8
    Width = 193
    Height = 38
    Caption = 'Modificar condiciones'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 408
    Top = 559
    Width = 89
    Height = 38
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 489
    Height = 497
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyPress = LetrasSimbolosYEspacio
  end
  object CheckBox1: TCheckBox
    Left = 20
    Top = 570
    Width = 239
    Height = 17
    Caption = 'He le'#237'do y Acepto las condiciones de venta'
    TabOrder = 1
  end
end
