object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Detalle Compra'
  ClientHeight = 554
  ClientWidth = 492
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 553
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object DBText1: TDBText
      Left = 218
      Top = 1
      Width = 60
      Height = 19
      AutoSize = True
      DataField = 'Titulo'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 218
      Top = 41
      Width = 60
      Height = 19
      AutoSize = True
      DataField = 'Etiqueta'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 218
      Top = 84
      Width = 60
      Height = 19
      AutoSize = True
      DataField = 'Autor'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 218
      Top = 129
      Width = 60
      Height = 19
      AutoSize = True
      DataField = 'AnioEditorial'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 218
      Top = 164
      Width = 60
      Height = 19
      AutoSize = True
      DataField = 'Editorial'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 2
      Top = 244
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
      Left = 2
      Top = 472
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
    object Label6: TLabel
      Left = 2
      Top = 204
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
    object Label5: TLabel
      Left = 2
      Top = 164
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
    object Label4: TLabel
      Left = 1
      Top = 129
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
    object Label3: TLabel
      Left = 2
      Top = 84
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
    object Label2: TLabel
      Left = 1
      Top = 1
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
    object Label9: TLabel
      Left = 2
      Top = 41
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
    object Label1: TLabel
      Left = 320
      Top = 1
      Width = 71
      Height = 23
      Caption = 'Portada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 2
      Top = 401
      Width = 143
      Height = 23
      Caption = 'Cantidad Pedida:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 218
      Top = 406
      Width = 6
      Height = 23
    end
    object DBText6: TDBText
      Left = 218
      Top = 204
      Width = 60
      Height = 19
      AutoSize = True
      DataField = 'Idioma'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 218
      Top = 472
      Width = 60
      Height = 19
      AutoSize = True
      DataField = 'Precio'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 393
      Top = 512
      Width = 96
      Height = 30
      Caption = 'Volver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label12: TLabel
      Left = 0
      Top = 437
      Width = 171
      Height = 23
      Caption = 'Tarjetas Habilitadas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 291
      Top = 512
      Width = 96
      Height = 30
      Caption = 'Quitar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 2
      Top = 273
      Width = 487
      Height = 127
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object DBImage1: TDBImage
      Left = 320
      Top = 41
      Width = 169
      Height = 226
      DataField = 'Imagen'
      DataSource = Tabla_DetLibro
      ReadOnly = True
      Stretch = True
      TabOrder = 1
    end
  end
  object DetLibro: TADOQuery
    Connection = DataModule1.SoyUnaConeccion
    CursorType = ctStatic
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
      'Select * '
      'From Libro'
      ' where (ISBN =:Dato)')
    Left = 456
  end
  object Tabla_DetLibro: TDataSource
    DataSet = DetLibro
    Left = 408
  end
end
