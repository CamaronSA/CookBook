object FrmMensajeConTemporizador: TFrmMensajeConTemporizador
  Left = 990
  Top = 776
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Aviso'
  ClientHeight = 30
  ClientWidth = 252
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 241
    Height = 19
    AutoSize = False
    Caption = 'Se agrego el libro correctamente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object TimerEscondeVentana: TTimer
    Enabled = False
    Interval = 4000
    OnTimer = TimerEscondeVentanaTimer
    Left = 544
    Top = 40
  end
end
