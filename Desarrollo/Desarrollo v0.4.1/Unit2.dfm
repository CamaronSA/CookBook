object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 255
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 48
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 40
    Height = 13
    Caption = 'Mensaje'
  end
  object SpeedButton1: TSpeedButton
    Left = 168
    Top = 223
    Width = 105
    Height = 30
    Caption = 'Enviar'
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 96
    Top = 40
    Width = 201
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 96
    Top = 67
    Width = 201
    Height = 150
    TabOrder = 1
    Text = 'Edit2'
  end
end
