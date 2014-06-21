object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Libro'
  ClientHeight = 726
  ClientWidth = 737
  Color = clBtnFace
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
  object SpeedButton2: TSpeedButton
    Left = 624
    Top = 677
    Width = 105
    Height = 41
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton1: TSpeedButton
    Left = 513
    Top = 677
    Width = 105
    Height = 41
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label9: TLabel
    Left = 352
    Top = 391
    Width = 87
    Height = 19
    Caption = 'Descripcion:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 319
    Top = 30
    Width = 52
    Height = 19
    Caption = 'Buscar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 17
    Top = 570
    Width = 77
    Height = 19
    Caption = 'Etiqueta: *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 17
    Top = 535
    Width = 70
    Height = 19
    Caption = 'Idioma: *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 17
    Top = 470
    Width = 112
    Height = 19
    Caption = 'A'#241'o de edici'#242'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 17
    Top = 645
    Width = 78
    Height = 19
    Caption = 'Editorial: *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 17
    Top = 609
    Width = 60
    Height = 19
    Caption = 'Autor: *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 17
    Top = 431
    Width = 61
    Height = 19
    Caption = 'Titulo: *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 17
    Top = 391
    Width = 55
    Height = 19
    Caption = 'ISBN: *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 17
    Top = 506
    Width = 63
    Height = 19
    Caption = 'Precio: *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 266
    Top = 677
    Width = 105
    Height = 41
    Caption = 'Agregar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 393
    Top = 677
    Width = 105
    Height = 41
    Caption = 'Eliminar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton4Click
  end
  object Label12: TLabel
    Left = 377
    Top = 80
    Width = 163
    Height = 13
    Caption = 'Complete los campos en rojo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton6: TSpeedButton
    Left = 352
    Top = 603
    Width = 377
    Height = 41
    Caption = 'Imagen Portada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label10: TLabel
    Left = 377
    Top = 60
    Width = 121
    Height = 13
    Caption = '*(Campo Obligatorio)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 11
    Top = 111
    Width = 718
    Height = 250
    DataSource = DataModule1.Tabla_Libro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'Titulo'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISBN'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Idioma'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Etiqueta'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Editorial'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Autor'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AnioEditorial'
        Title.Caption = 'A'#241'o Edicion'
        Width = 77
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 377
    Top = 27
    Width = 335
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = Edit1Change
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 20
    Width = 289
    Height = 85
    Caption = 'Criterios de busqueda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object RadioButton3: TRadioButton
    Left = 160
    Top = 47
    Width = 113
    Height = 17
    Caption = 'Etiqueta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object RadioButton2: TRadioButton
    Left = 25
    Top = 70
    Width = 113
    Height = 17
    Caption = 'Editorial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object RadioButton1: TRadioButton
    Left = 25
    Top = 47
    Width = 113
    Height = 17
    Caption = 'Titulo'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TabStop = True
  end
  object Edit6: TEdit
    Left = 135
    Top = 470
    Width = 65
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    NumbersOnly = True
    ParentFont = False
    TabOrder = 4
    OnChange = Edit6Change
  end
  object Edit3: TEdit
    Left = 135
    Top = 424
    Width = 162
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 3
    OnChange = Edit3Change
    OnKeyPress = Edit3KeyPress
  end
  object Edit2: TEdit
    Left = 135
    Top = 391
    Width = 65
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 2
    OnChange = Edit2Change
  end
  object Edit10: TEdit
    Left = 135
    Top = 503
    Width = 65
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 5
    OnChange = Edit10Change
    OnKeyPress = Edit10KeyPress
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 139
    Top = 536
    Width = 182
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'Idioma'
    ListField = 'Idioma'
    ListSource = DataModule1.Tabla_Idioma
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    TabStop = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 138
    Top = 640
    Width = 183
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'NombreEditorial'
    ListField = 'NombreEditorial'
    ListSource = DataModule1.Tabla_Editorial
    ParentFont = False
    TabOrder = 9
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 138
    Top = 607
    Width = 183
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'Apellido'
    ListField = 'Apellido'
    ListSource = DataModule1.Tabla_Autor
    ParentFont = False
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 139
    Top = 570
    Width = 182
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'NombreEtiqueta'
    ListField = 'NombreEtiqueta'
    ListSource = DataModule1.Tabla_Etiqueta
    ParentFont = False
    TabOrder = 7
  end
  object Memo1: TMemo
    Left = 352
    Top = 416
    Width = 377
    Height = 181
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnKeyPress = Memo1KeyPress
  end
end
