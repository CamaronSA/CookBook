object FormCatalogoLibros: TFormCatalogoLibros
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Catalogos De Libros'
  ClientHeight = 644
  ClientWidth = 1184
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 825
    Height = 633
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 184
      Top = 118
      Width = 293
      Height = 13
      Caption = 'Para poder Realizar una compra usted debe estar registrado '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 288
      Top = 64
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
    object SpeedButton2: TSpeedButton
      Left = 24
      Top = 574
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
    object SpeedButton3: TSpeedButton
      Left = 655
      Top = 574
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
    object SpeedButton4: TSpeedButton
      Left = 176
      Top = 574
      Width = 146
      Height = 41
      Caption = 'Ver en detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 328
      Top = 574
      Width = 146
      Height = 41
      Caption = 'Ver Carrito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 151
      Width = 793
      Height = 409
      DataSource = DataModule1.Tabla_LibrosALaVenta
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clPurple
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Titulo'
          Width = 172
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
          Width = 142
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
      Left = 268
      Top = 31
      Width = 176
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 148
      Top = 0
      Width = 421
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object RadioButton1: TRadioButton
        Left = 33
        Top = 3
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
        Left = 310
        Top = 5
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
        Left = 120
        Top = 3
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
        Left = 215
        Top = 1
        Width = 89
        Height = 21
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
  end
  object Panel2: TPanel
    Left = 839
    Top = 8
    Width = 339
    Height = 633
    TabOrder = 1
  end
end
