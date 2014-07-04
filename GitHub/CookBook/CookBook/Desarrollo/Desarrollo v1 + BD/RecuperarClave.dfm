object FormRecuperarClave: TFormRecuperarClave
  Left = 37
  Top = 38
  BorderIcons = []
  Caption = 'Recuperar Clave'
  ClientHeight = 329
  ClientWidth = 314
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 16
    Top = 8
    Width = 192
    Height = 33
    Caption = 'Recuperar Clave'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 39
    Top = 207
    Width = 51
    Height = 19
    Caption = 'Email:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 19
    Top = 114
    Width = 212
    Height = 18
    Caption = 'Complete los campos en rojo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 19
    Top = 56
    Width = 258
    Height = 19
    Caption = 'Complete los campos a continuaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 19
    Top = 81
    Width = 265
    Height = 19
    Caption = 'para que podamos recuperar su clave'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 22
    Top = 140
    Width = 68
    Height = 19
    Caption = 'Usuario:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 96
    Top = 291
    Width = 98
    Height = 30
    Caption = 'Enviar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 200
    Top = 291
    Width = 100
    Height = 30
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Label3: TLabel
    Left = 53
    Top = 175
    Width = 37
    Height = 19
    Caption = 'DNI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 290
    Top = 138
    Width = 9
    Height = 19
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 290
    Top = 171
    Width = 9
    Height = 19
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 290
    Top = 207
    Width = 9
    Height = 19
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 21
    Top = 253
    Width = 171
    Height = 19
    Caption = '(*) Campos obligatorios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 204
    Width = 188
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 40
    ParentFont = False
    TabOrder = 2
    TextHint = 'Ingrese su email'
    OnChange = Edit1Change
    OnKeyPress = LetrasNumnerosETC
  end
  object Edit3: TEdit
    Left = 96
    Top = 138
    Width = 188
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 40
    ParentFont = False
    TabOrder = 0
    TextHint = 'Ingrese su Usuario'
    OnChange = Edit3Change
    OnKeyPress = LetrasNumnerosETC
  end
  object Edit2: TEdit
    Left = 96
    Top = 171
    Width = 188
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 40
    NumbersOnly = True
    ParentFont = False
    TabOrder = 1
    TextHint = 'Ingrese su DNI'
    OnChange = Edit2Change
  end
end
