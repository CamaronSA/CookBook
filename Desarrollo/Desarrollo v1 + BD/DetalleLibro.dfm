object FormDetalleLibro: TFormDetalleLibro
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Detalle de Libro'
  ClientHeight = 435
  ClientWidth = 532
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 23
    Top = 10
    Width = 37
    Height = 16
    Caption = 'Titulo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 23
    Top = 70
    Width = 36
    Height = 16
    Caption = 'Autor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 23
    Top = 100
    Width = 89
    Height = 16
    Caption = 'A'#241'o de edici'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 23
    Top = 130
    Width = 51
    Height = 16
    Caption = 'Editorial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 23
    Top = 160
    Width = 44
    Height = 16
    Caption = 'Idioma:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 23
    Top = 229
    Width = 70
    Height = 16
    Caption = 'Descripci'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 23
    Top = 370
    Width = 40
    Height = 16
    Caption = 'Precio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 23
    Top = 40
    Width = 60
    Height = 16
    Caption = 'Categoria:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 170
    Top = 399
    Width = 111
    Height = 26
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object DBText1: TDBText
    Left = 160
    Top = 40
    Width = 177
    Height = 20
    DataField = 'Etiqueta'
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 160
    Top = 10
    Width = 177
    Height = 23
    DataField = 'Titulo'
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 160
    Top = 66
    Width = 64
    Height = 23
    DataField = 'NomAutor'
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 160
    Top = 95
    Width = 121
    Height = 23
    DataField = 'AnioEditorial'
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText5: TDBText
    Left = 160
    Top = 130
    Width = 177
    Height = 23
    DataField = 'Editorial'
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText6: TDBText
    Left = 160
    Top = 160
    Width = 177
    Height = 23
    DataField = 'Idioma'
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText8: TDBText
    Left = 160
    Top = 370
    Width = 64
    Height = 23
    DataField = 'Precio'
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText7: TDBText
    Left = 230
    Top = 66
    Width = 64
    Height = 23
    DataField = 'ApeAutor'
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBImage1: TDBImage
    Left = 352
    Top = 8
    Width = 170
    Height = 237
    DataField = 'Imagen'
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Enabled = False
    ReadOnly = True
    Stretch = True
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 23
    Top = 262
    Width = 499
    Height = 89
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
