object FrmMensajeConTemporizador: TFrmMensajeConTemporizador
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Aviso'
  ClientHeight = 69
  ClientWidth = 309
  Color = clWhite
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 465
    Height = 57
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 281
      Height = 19
      Caption = 'Se agrego el libro  correctamente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object TimerEscondeVentana: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TimerEscondeVentanaTimer
    Left = 440
    Top = 8
  end
end
