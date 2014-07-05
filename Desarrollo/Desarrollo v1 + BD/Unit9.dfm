object Form9: TForm9
  Left = 920
  Top = 230
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Form9'
  ClientHeight = 26
  ClientWidth = 176
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
    Width = 169
    Height = 17
    AutoSize = False
    Caption = 'Se Modifico el libro correctamente'
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
    Left = 248
    Top = 8
  end
end
