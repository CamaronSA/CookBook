object FormRecuperarClave: TFormRecuperarClave
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Recuperar Clave'
  ClientHeight = 300
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 15
    Width = 353
    Height = 19
    Caption = 'Complete con la siguiente informacion para poder'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 130
    Height = 19
    Caption = 'recuperar la clave:'
  end
  object Label3: TLabel
    Left = 32
    Top = 96
    Width = 144
    Height = 19
    Caption = 'Nombre de Usuario:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 144
    Width = 121
    Height = 19
    Caption = 'Cuenta de Email:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 192
    Width = 34
    Height = 19
    Caption = 'DNI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 184
    Top = 240
    Width = 97
    Height = 41
    Caption = 'Recuperar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 296
    Top = 240
    Width = 97
    Height = 41
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 176
    Top = 93
    Width = 217
    Height = 27
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 159
    Top = 141
    Width = 234
    Height = 27
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 72
    Top = 189
    Width = 129
    Height = 27
    TabOrder = 2
    Text = 'Edit3'
  end
end
