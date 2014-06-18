object FormUsuarios: TFormUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Usuarios'
  ClientHeight = 684
  ClientWidth = 739
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 351
    Top = 58
    Width = 60
    Height = 19
    Caption = 'Buscar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 416
    Width = 37
    Height = 19
    Caption = 'DNI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 448
    Width = 70
    Height = 19
    Caption = 'Nombre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 484
    Width = 73
    Height = 19
    Caption = 'Apellido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 19
    Top = 517
    Width = 68
    Height = 19
    Caption = 'Usuario:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 19
    Top = 651
    Width = 83
    Height = 19
    Caption = 'Localidad:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 330
    Top = 416
    Width = 81
    Height = 19
    Caption = 'Provincia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 330
    Top = 448
    Width = 40
    Height = 19
    Caption = 'Pais:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 19
    Top = 585
    Width = 47
    Height = 19
    Caption = 'Calle:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 19
    Top = 618
    Width = 70
    Height = 19
    Caption = 'Numero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 330
    Top = 517
    Width = 78
    Height = 19
    Caption = 'Telefono:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 19
    Top = 551
    Width = 51
    Height = 19
    Caption = 'Clave:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 330
    Top = 481
    Width = 53
    Height = 19
    Caption = 'Fecha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 330
    Top = 551
    Width = 51
    Height = 19
    Caption = 'Email:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 356
    Top = 615
    Width = 108
    Height = 39
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 470
    Top = 615
    Width = 108
    Height = 39
    Caption = 'Eliminar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 584
    Top = 615
    Width = 106
    Height = 39
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object Label11: TLabel
    Left = 351
    Top = 22
    Width = 51
    Height = 19
    Caption = 'Inicio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 521
    Top = 22
    Width = 30
    Height = 19
    Caption = 'Fin:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 330
    Top = 584
    Width = 152
    Height = 19
    Caption = 'Fecha de Registro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 392
    Top = 83
    Width = 247
    Height = 23
    Caption = 'Complete los campos en rojo!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton4: TSpeedButton
    Left = 674
    Top = 19
    Width = 57
    Height = 30
    Caption = 'Buscar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
    OnClick = SpeedButton4Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 337
    Height = 98
    Caption = 'Criterios de Busqueda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnMouseMove = GroupBox1MouseMove
    object RadioButton1: TRadioButton
      Left = 25
      Top = 61
      Width = 80
      Height = 17
      Caption = 'Nombre'
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 128
      Top = 61
      Width = 81
      Height = 17
      Caption = 'Apellido'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 232
      Top = 61
      Width = 89
      Height = 17
      Caption = 'Localidad'
      TabOrder = 2
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 25
      Top = 35
      Width = 153
      Height = 17
      Caption = 'Ver entre 2 fechas'
      TabOrder = 3
      OnClick = RadioButton4Click
    end
  end
  object Edit1: TEdit
    Left = 409
    Top = 55
    Width = 259
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 112
    Width = 721
    Height = 288
    DataSource = DataModule1.Tabla_Cliente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'DNI'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Apellido'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Usuario'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Calle'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nro'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mail'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FechaDeInicioCliente'
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 59
    Top = 415
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 3
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 89
    Top = 448
    Width = 225
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = 'Edit3'
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 89
    Top = 484
    Width = 225
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = 'Edit4'
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 89
    Top = 517
    Width = 225
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = 'Edit5'
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 78
    Top = 550
    Width = 236
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 7
    Text = 'Edit6'
  end
  object Edit7: TEdit
    Left = 74
    Top = 585
    Width = 240
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = 'Edit7'
  end
  object Edit8: TEdit
    Left = 97
    Top = 618
    Width = 217
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 9
    Text = 'Edit8'
  end
  object Edit9: TEdit
    Left = 106
    Top = 651
    Width = 208
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = 'Edit9'
  end
  object Edit10: TEdit
    Left = 415
    Top = 415
    Width = 205
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = 'Edit10'
    OnKeyPress = Edit10KeyPress
  end
  object Edit11: TEdit
    Left = 379
    Top = 448
    Width = 241
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = 'Edit11'
    OnKeyPress = Edit11KeyPress
  end
  object Edit14: TEdit
    Left = 390
    Top = 551
    Width = 230
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    Text = 'Edit14'
    OnKeyPress = Edit14KeyPress
  end
  object Edit16: TEdit
    Left = 413
    Top = 517
    Width = 205
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 14
    Text = 'Edit16'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 402
    Top = 22
    Width = 113
    Height = 27
    Date = 41806.856890914350000000
    Time = 41806.856890914350000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object DateTimePicker2: TDateTimePicker
    Left = 554
    Top = 22
    Width = 114
    Height = 27
    Date = 41806.856899884260000000
    Time = 41806.856899884260000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
  object Edit12: TEdit
    Left = 391
    Top = 481
    Width = 99
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    Text = 'Edit12'
  end
  object Edit13: TEdit
    Left = 488
    Top = 584
    Width = 103
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 18
    Text = 'Edit14'
  end
  object DBGrid2: TDBGrid
    Left = 10
    Top = 112
    Width = 721
    Height = 288
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 19
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
        FieldName = 'DNI'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Apellido'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Usuario'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Calle'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nro'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mail'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FechaDeInicioCliente'
        Visible = True
      end>
  end
end
