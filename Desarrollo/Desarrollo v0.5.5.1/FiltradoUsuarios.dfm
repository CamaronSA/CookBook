object FormFiltradoUsuarios: TFormFiltradoUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Filtrado Usuarios'
  ClientHeight = 577
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 416
    Top = 528
    Width = 105
    Height = 33
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 151
    Width = 545
    Height = 362
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 545
    Height = 129
    Caption = 'Usuarios registrados entre dos fechas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 64
      Top = 40
      Width = 88
      Height = 19
      Caption = 'Fecha inicio:'
    end
    object Label2: TLabel
      Left = 296
      Top = 40
      Width = 69
      Height = 19
      Caption = 'Fecha fin:'
    end
    object SpeedButton1: TSpeedButton
      Left = 408
      Top = 80
      Width = 105
      Height = 33
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 158
      Top = 40
      Width = 121
      Height = 27
      Date = 41801.935912372680000000
      Time = 41801.935912372680000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 371
      Top = 40
      Width = 126
      Height = 27
      Date = 41801.935920520830000000
      Time = 41801.935920520830000000
      TabOrder = 1
    end
  end
end
