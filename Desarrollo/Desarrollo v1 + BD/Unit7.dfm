object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Detalle Compra'
  ClientHeight = 554
  ClientWidth = 400
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
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object DBText1: TDBText
      Left = 130
      Top = 1
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'Titulo'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 130
      Top = 30
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'Etiqueta'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 93
      Top = 60
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'NomAutor'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 130
      Top = 90
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'AnioEditorial'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 130
      Top = 120
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'Editorial'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 2
      Top = 244
      Width = 77
      Height = 18
      Caption = 'Descripci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 2
      Top = 472
      Width = 43
      Height = 18
      Caption = 'Precio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 2
      Top = 150
      Width = 50
      Height = 18
      Caption = 'Idioma:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 2
      Top = 120
      Width = 53
      Height = 18
      Caption = 'Editorial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 2
      Top = 90
      Width = 99
      Height = 18
      Caption = 'A'#241'o de edici'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 2
      Top = 60
      Width = 40
      Height = 18
      Caption = 'Autor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 40
      Height = 18
      Caption = 'Titulo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 2
      Top = 30
      Width = 57
      Height = 18
      Caption = 'Etiqueta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 221
      Top = 1
      Width = 55
      Height = 18
      Caption = 'Portada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 2
      Top = 401
      Width = 108
      Height = 18
      Caption = 'Cantidad Pedida:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 130
      Top = 406
      Width = 5
      Height = 18
    end
    object DBText6: TDBText
      Left = 130
      Top = 150
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'Idioma'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 130
      Top = 472
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'Precio'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 294
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
      Width = 91
      Height = 18
      Caption = 'Tarjetas Hab:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 157
      Top = 60
      Width = 58
      Height = 18
      AutoSize = True
      DataField = 'ApeAutor'
      DataSource = Tabla_DetLibro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 2
      Top = 273
      Width = 388
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
      Left = 221
      Top = 25
      Width = 169
      Height = 226
      DataField = 'Imagen'
      DataSource = Tabla_DetLibro
      ReadOnly = True
      Stretch = True
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 130
      Top = 436
      Width = 146
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    Left = 304
    Top = 176
    object DetLibroIDLibro: TAutoIncField
      FieldName = 'IDLibro'
      ReadOnly = True
    end
    object DetLibroPrecio: TFloatField
      FieldName = 'Precio'
    end
    object DetLibroImagen: TBlobField
      FieldName = 'Imagen'
    end
    object DetLibroAnioEditorial: TIntegerField
      FieldName = 'AnioEditorial'
    end
    object DetLibroTitulo: TWideStringField
      FieldName = 'Titulo'
      Size = 255
    end
    object DetLibroDescripcion: TWideMemoField
      FieldName = 'Descripcion'
      BlobType = ftWideMemo
    end
    object DetLibroDNIAutor: TIntegerField
      FieldName = 'DNIAutor'
    end
    object DetLibroEditorial: TWideStringField
      FieldName = 'Editorial'
      Size = 255
    end
    object DetLibroIdioma: TWideStringField
      FieldName = 'Idioma'
      Size = 255
    end
    object DetLibroEtiqueta: TWideStringField
      FieldName = 'Etiqueta'
      Size = 255
    end
    object DetLibroISBN: TIntegerField
      FieldName = 'ISBN'
    end
    object DetLibroEsDestacado: TBooleanField
      FieldName = 'EsDestacado'
    end
    object DetLibroDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object DetLibroApeAutor: TStringField
      FieldKind = fkLookup
      FieldName = 'ApeAutor'
      LookupDataSet = DataModule1.ADOAutor
      LookupKeyFields = 'DNI'
      LookupResultField = 'Apellido'
      KeyFields = 'DNIAutor'
      Lookup = True
    end
    object DetLibroNomAutor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomAutor'
      LookupDataSet = DataModule1.ADOAutor
      LookupKeyFields = 'DNI'
      LookupResultField = 'Nombre'
      KeyFields = 'DNIAutor'
      Lookup = True
    end
  end
  object Tabla_DetLibro: TDataSource
    DataSet = DetLibro
    Left = 304
    Top = 232
  end
end
