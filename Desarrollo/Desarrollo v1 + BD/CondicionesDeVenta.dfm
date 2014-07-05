object FormModifCondicionesVenta: TFormModifCondicionesVenta
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Condiciones de venta'
  ClientHeight = 601
  ClientWidth = 507
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
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
    Left = 306
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
    Left = 410
    Top = 570
    Width = 89
    Height = 27
    Caption = 'Rechazar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 315
    Top = 570
    Width = 89
    Height = 27
    Caption = 'Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton3Click
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
    Top = 576
    Width = 239
    Height = 17
    Caption = 'He le'#237'do y Acepto las condiciones de venta'
    TabOrder = 1
  end
end
