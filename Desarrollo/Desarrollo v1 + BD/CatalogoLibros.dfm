object FormCatalogoLibros: TFormCatalogoLibros
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Catalogos De Libros'
  ClientHeight = 631
  ClientWidth = 839
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 135
    Width = 140
    Height = 23
    Caption = 'Listado de Libros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 8
    Width = 83
    Height = 23
    Caption = 'Busqueda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 575
    Top = 47
    Width = 138
    Height = 27
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 679
    Top = 579
    Width = 146
    Height = 41
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton2: TSpeedButton
    Left = 32
    Top = 579
    Width = 146
    Height = 41
    Caption = 'A'#241'adir al carrito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Label3: TLabel
    Left = 312
    Top = 145
    Width = 293
    Height = 13
    Caption = 'Para poder Realizar una compra usted debe estar registrado '
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 37
    Width = 265
    Height = 92
    Caption = 'Criterios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 33
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Por autor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 33
      Top = 56
      Width = 113
      Height = 17
      Caption = 'Por titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 152
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Editorial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RadioButton4: TRadioButton
      Left = 152
      Top = 47
      Width = 113
      Height = 33
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 38
    Top = 164
    Width = 793
    Height = 409
    DataSource = DataModule1.Tabla_LibrosALaVenta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Titulo'
        Width = 188
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Autor'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Editorial'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Etiqueta'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Idioma'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Width = 136
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 312
    Top = 47
    Width = 233
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
