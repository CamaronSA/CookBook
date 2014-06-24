object FormDetalleLibro: TFormDetalleLibro
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Detalle de Libro'
  ClientHeight = 522
  ClientWidth = 498
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 88
    Width = 53
    Height = 23
    Caption = 'Titulo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 136
    Width = 52
    Height = 23
    Caption = 'Autor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 176
    Width = 131
    Height = 23
    Caption = 'A'#241'o de edici'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 216
    Width = 74
    Height = 23
    Caption = 'Editorial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 256
    Width = 65
    Height = 23
    Caption = 'Idioma:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 296
    Width = 103
    Height = 23
    Caption = 'Descripci'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 426
    Width = 57
    Height = 23
    Caption = 'Precio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 32
    Top = 56
    Width = 76
    Height = 23
    Caption = 'Etiqueta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 329
    Top = 56
    Width = 161
    Height = 234
  end
  object SpeedButton1: TSpeedButton
    Left = 32
    Top = 471
    Width = 192
    Height = 43
    Caption = 'A'#241'adir al Carro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 379
    Top = 471
    Width = 111
    Height = 43
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object DBText1: TDBText
    Left = 128
    Top = 56
    Width = 177
    Height = 23
  end
  object DBText2: TDBText
    Left = 128
    Top = 96
    Width = 177
    Height = 23
  end
  object DBText3: TDBText
    Left = 128
    Top = 136
    Width = 177
    Height = 23
  end
  object DBText4: TDBText
    Left = 184
    Top = 184
    Width = 130
    Height = 23
  end
  object DBText5: TDBText
    Left = 128
    Top = 224
    Width = 177
    Height = 23
  end
  object DBText6: TDBText
    Left = 128
    Top = 267
    Width = 177
    Height = 23
  end
  object DBText7: TDBText
    Left = 32
    Top = 325
    Width = 401
    Height = 84
  end
  object DBText8: TDBText
    Left = 128
    Top = 434
    Width = 177
    Height = 23
  end
end
