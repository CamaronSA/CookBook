object FormCatalogoLibros: TFormCatalogoLibros
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Catalogos De Libros'
  ClientHeight = 700
  ClientWidth = 1013
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
  object Label1: TLabel
    Left = 32
    Top = 168
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
    Top = 24
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
  object SpeedButton3: TSpeedButton
    Left = 815
    Top = 624
    Width = 146
    Height = 41
    Caption = 'Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton1: TSpeedButton
    Left = 64
    Top = 624
    Width = 146
    Height = 41
    Caption = 'A'#241'adir a Carro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 64
    Top = 53
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
      Top = 56
      Width = 113
      Height = 17
      Caption = 'Etiqueta'
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
    Left = 64
    Top = 208
    Width = 897
    Height = 377
    DataSource = DataModule1.Tabla_Libro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ISBN'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Etiqueta'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Titulo'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Autor'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Editorial'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AnioEditorial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Idioma'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Width = 60
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 392
    Top = 88
    Width = 417
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'Edit1'
    OnChange = Edit1Change
  end
end
