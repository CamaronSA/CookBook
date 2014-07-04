object FormCatalogoLibros: TFormCatalogoLibros
  Left = 91
  Top = 96
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Catalogos De Libros'
  ClientHeight = 637
  ClientWidth = 738
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 729
    Height = 628
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 132
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
      Left = 559
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
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 328
      Top = 574
      Width = 146
      Height = 41
      Caption = 'Carrito'
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
      Width = 681
      Height = 409
      DataSource = DataModule1.Tabla_LibrosALaVenta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Titulo'
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Editorial'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Autor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Etiqueta'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Idioma'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Precio'
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
    Left = 743
    Top = 8
    Width = 370
    Height = 628
    TabOrder = 1
    Visible = False
    object SpeedButton6: TSpeedButton
      Left = 231
      Top = 31
      Width = 97
      Height = 19
      Caption = 'Ocultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 8
      Top = 5
      Width = 97
      Height = 20
      Caption = 'Borrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 8
      Top = 31
      Width = 97
      Height = 20
      Caption = 'Refrescar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 120
      Top = 5
      Width = 98
      Height = 20
      Caption = 'Borrar Todo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton9Click
    end
    object SpeedButton10: TSpeedButton
      Left = 120
      Top = 31
      Width = 98
      Height = 20
      Caption = 'Ver Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton10Click
    end
    object Label13: TLabel
      Left = 0
      Top = 574
      Width = 121
      Height = 16
      Caption = 'Cantidad de libros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 127
      Top = 574
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 0
      Top = 596
      Width = 91
      Height = 16
      Caption = 'Total a Pagar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 127
      Top = 596
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton11: TSpeedButton
      Left = 232
      Top = 5
      Width = 98
      Height = 20
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton11Click
    end
    object StringGrid1: TStringGrid
      Left = 0
      Top = 176
      Width = 329
      Height = 384
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 0
      OnClick = StringGrid1Click
    end
    object StringGrid2: TStringGrid
      Left = 0
      Top = 151
      Width = 329
      Height = 24
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 56
      Width = 329
      Height = 89
      Caption = 'Libro Seleccionado'
      TabOrder = 2
      object Label1: TLabel
        Left = 192
        Top = 46
        Width = 34
        Height = 16
        Caption = 'ISBN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 20
        Top = 24
        Width = 40
        Height = 16
        Caption = 'Titulo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 20
        Top = 70
        Width = 57
        Height = 16
        Caption = 'Editorial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 20
        Top = 48
        Width = 43
        Height = 16
        Caption = 'Autor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 192
        Top = 24
        Width = 45
        Height = 16
        Caption = 'Precio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 80
        Top = 24
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 80
        Top = 46
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 62
        Top = 22
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 80
        Top = 68
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 245
        Top = 45
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 245
        Top = 25
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Carrito: TADOQuery
    Connection = DataModule1.SoyUnaConeccion
    Parameters = <>
    Left = 680
    Top = 72
  end
  object LaQuerqueteQuery: TADOQuery
    Connection = DataModule1.SoyUnaConeccion
    Parameters = <>
    Left = 584
    Top = 72
  end
end
