object FormOperacionesAutor: TFormOperacionesAutor
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Operaciones Autor'
  ClientHeight = 389
  ClientWidth = 472
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
  object Label7: TLabel
    Left = 8
    Top = 16
    Width = 256
    Height = 33
    Caption = 'Operaciones de Autor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 7
    Top = 55
    Width = 457
    Height = 326
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 5
      Top = 129
      Width = 73
      Height = 19
      Caption = 'Apellido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 92
      Width = 70
      Height = 19
      Caption = 'Nombre:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 87
      Top = 278
      Width = 122
      Height = 38
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
      Left = 231
      Top = 278
      Width = 122
      Height = 38
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object Label8: TLabel
      Left = 215
      Top = 51
      Width = 60
      Height = 19
      Caption = 'Buscar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 87
      Top = 190
      Width = 122
      Height = 38
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
      Left = 88
      Top = 234
      Width = 121
      Height = 38
      Caption = 'Eliminar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object Label1: TLabel
      Left = 59
      Top = 51
      Width = 23
      Height = 19
      Caption = 'Id:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 215
      Top = 83
      Width = 234
      Height = 189
      DataSource = DataModule1.Tabla_Autor
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnKeyDown = DBGrid1KeyDown
      OnKeyUp = DBGrid1KeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'Nombre'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Apellido'
          Width = 100
          Visible = True
        end>
    end
    object Edit2: TEdit
      Tag = 1
      Left = 87
      Top = 89
      Width = 122
      Height = 27
      TabOrder = 1
      Text = 'Edit2'
      OnChange = Edit2Change
    end
    object Edit3: TEdit
      Tag = 2
      Left = 84
      Top = 126
      Width = 125
      Height = 27
      TabOrder = 2
      Text = 'Edit3'
      OnChange = Edit3Change
    end
    object Edit4: TEdit
      Tag = 3
      Left = 284
      Top = 48
      Width = 157
      Height = 27
      TabOrder = 3
      Text = 'Edit4'
      OnChange = Edit4Change
    end
    object RadioButton1: TRadioButton
      Left = 215
      Top = 16
      Width = 91
      Height = 17
      Caption = 'Nombre'
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 312
      Top = 16
      Width = 89
      Height = 17
      Caption = 'Apellido'
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 88
      Top = 48
      Width = 121
      Height = 27
      TabOrder = 6
      Text = 'Edit1'
    end
  end
end
