object FormVerMisCompras: TFormVerMisCompras
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Compras realizadas'
  ClientHeight = 326
  ClientWidth = 647
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 16
    Top = 8
    Width = 148
    Height = 33
    Caption = 'Mis compras'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 509
    Top = 278
    Width = 116
    Height = 38
    Caption = 'Volver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 47
    Width = 609
    Height = 218
    DataSource = DataModule1.DS_MisCompras
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ISBN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Libro'
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estado'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FechaDeInicio'
        Title.Caption = 'Fecha Inicio'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FechaDeFin'
        Title.Caption = 'Fecha Fin'
        Width = 62
        Visible = True
      end>
  end
end
