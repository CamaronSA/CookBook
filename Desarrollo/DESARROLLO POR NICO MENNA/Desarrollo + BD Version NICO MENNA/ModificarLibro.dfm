object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Libro'
  ClientHeight = 791
  ClientWidth = 953
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
  object SpeedButton2: TSpeedButton
    Left = 832
    Top = 737
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
  object Label9: TLabel
    Left = 352
    Top = 367
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
    Left = 19
    Top = 546
    Width = 87
    Height = 19
    Caption = 'Categoria: *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 19
    Top = 511
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
    Top = 442
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
  object Label2: TLabel
    Left = 19
    Top = 585
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
    Left = 19
    Top = 409
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
    Left = 19
    Top = 367
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
    Left = 19
    Top = 475
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
    Left = 721
    Top = 737
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
  object Label13: TLabel
    Left = 743
    Top = 367
    Width = 127
    Height = 19
    Caption = 'Portada del Libro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton4: TSpeedButton
    Left = 721
    Top = 737
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
  object Label14: TLabel
    Left = 743
    Top = 392
    Width = 155
    Height = 13
    Caption = 'Doble Click para ingresar imagen'
  end
  object Label15: TLabel
    Left = 352
    Top = 392
    Width = 3
    Height = 13
  end
  object SpeedButton1: TSpeedButton
    Left = 721
    Top = 737
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
  object Label3: TLabel
    Left = 19
    Top = 625
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
  object Label16: TLabel
    Left = 18
    Top = 663
    Width = 111
    Height = 19
    Caption = 'Esta a la venta*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 17
    Top = 704
    Width = 93
    Height = 19
    Caption = 'Es Destacado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton5: TSpeedButton
    Left = 352
    Top = 729
    Width = 113
    Height = 22
    Caption = 'Limpiar Descripcion'
    OnClick = SpeedButton5Click
  end
  object DBGrid1: TDBGrid
    Left = 19
    Top = 111
    Width = 918
    Height = 250
    DataSource = DataModule1.Tabla_Libro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyUp = DBGrid1KeyUp
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Titulo'
        Width = 203
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
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Etiqueta'
        Title.Caption = 'Categoria'
        Width = 107
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
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AnioEditorial'
        Title.Caption = 'A'#241'o Edicion'
        Width = 78
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
    TabOrder = 4
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
    TabOrder = 0
  end
  object RadioButton3: TRadioButton
    Left = 167
    Top = 36
    Width = 113
    Height = 40
    Caption = 'Categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
    TabOrder = 3
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
    TabOrder = 1
    TabStop = True
  end
  object Edit6: TEdit
    Left = 135
    Top = 439
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
    TabOrder = 8
    OnChange = Edit6Change
  end
  object Edit3: TEdit
    Left = 135
    Top = 406
    Width = 162
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 7
    OnChange = Edit3Change
    OnKeyPress = Edit3KeyPress
  end
  object Edit2: TEdit
    Left = 135
    Top = 373
    Width = 65
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    NumbersOnly = True
    ParentFont = False
    TabOrder = 6
    OnChange = Edit2Change
  end
  object Edit10: TEdit
    Left = 135
    Top = 472
    Width = 65
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 9
    OnChange = Edit10Change
    OnKeyPress = Edit10KeyPress
  end
  object Memo1: TMemo
    Left = 352
    Top = 411
    Width = 385
    Height = 312
    MaxLength = 65536
    ScrollBars = ssVertical
    TabOrder = 16
    OnChange = Memo1Change
    OnKeyPress = Memo1KeyPress
  end
  object ComboBox1: TComboBox
    Left = 135
    Top = 510
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 10
    OnClick = ComboBox1Click
  end
  object ComboBox2: TComboBox
    Left = 135
    Top = 548
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 11
    OnClick = ComboBox2Click
  end
  object ComboBox3: TComboBox
    Left = 135
    Top = 587
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 12
    OnClick = ComboBox3Click
  end
  object ComboBox4: TComboBox
    Left = 135
    Top = 623
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 13
  end
  object Panel1: TPanel
    Left = 752
    Top = 411
    Width = 185
    Height = 312
    Color = clSilver
    ParentBackground = False
    TabOrder = 17
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 185
      Height = 320
      ParentShowHint = False
      ShowHint = False
      Stretch = True
      OnDblClick = Image1DblClick
    end
  end
  object ComboBox5: TComboBox
    Left = 135
    Top = 665
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 14
    OnClick = ComboBox5Click
  end
  object ComboBox6: TComboBox
    Left = 135
    Top = 702
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 15
    OnClick = ComboBox6Click
  end
end
