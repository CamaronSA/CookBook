object Form6: TForm6
  Left = 920
  Top = 284
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Form6'
  ClientHeight = 28
  ClientWidth = 190
  Color = 5690156
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
    Width = 185
    Height = 19
    AutoSize = False
    Caption = 'Se quito el libro de la lista de ventas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 4000
    OnTimer = Timer1Timer
    Left = 272
    Top = 64
  end
end
