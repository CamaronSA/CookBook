object FormCarritoDeCompras: TFormCarritoDeCompras
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FormCarritoDeCompras'
  ClientHeight = 490
  ClientWidth = 722
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 14
    Width = 111
    Height = 33
    Caption = 'Articulos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 24
    Top = 440
    Width = 145
    Height = 42
    Caption = 'Realizar Compra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 175
    Top = 440
    Width = 145
    Height = 42
    Caption = 'Quitar Articulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 464
    Top = 440
    Width = 137
    Height = 42
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object Label2: TLabel
    Left = 408
    Top = 390
    Width = 84
    Height = 19
    Caption = 'Sub Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 536
    Top = 375
    Width = 65
    Height = 34
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 53
    Width = 577
    Height = 316
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
end
