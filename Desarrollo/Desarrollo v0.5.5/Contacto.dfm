object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contacto'
  ClientHeight = 458
  ClientWidth = 619
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 22
    Top = 91
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
  object Label2: TLabel
    Left = 22
    Top = 157
    Width = 74
    Height = 19
    Caption = 'Mensaje:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 336
    Top = 415
    Width = 129
    Height = 30
    Caption = 'Enviar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Button1Click
  end
  object Label11: TLabel
    Left = 22
    Top = 21
    Width = 278
    Height = 33
    Caption = 'Formulario de Contacto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 318
    Top = 91
    Width = 99
    Height = 19
    Caption = 'Contrase'#241'a:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 22
    Top = 126
    Width = 63
    Height = 19
    Caption = 'Asunto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 471
    Top = 415
    Width = 122
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
  object Label5: TLabel
    Left = 22
    Top = 60
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
  object Edit1: TEdit
    Left = 96
    Top = 88
    Width = 204
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 40
    ParentFont = False
    TabOrder = 0
    TextHint = 'Ingrese su email'
    OnChange = Edit1Change
    OnKeyPress = LetrasNumnerosETC
  end
  object Memo1: TMemo
    Left = 96
    Top = 154
    Width = 497
    Height = 233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 200
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    OnChange = Memo1Change
    OnKeyPress = LetrasNumnerosETC
  end
  object Edit2: TEdit
    Left = 423
    Top = 88
    Width = 170
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Ingrese su contrase'#241'a'
    OnChange = Edit2Change
    OnKeyPress = LetrasNumnerosETC
  end
  object Edit3: TEdit
    Left = 96
    Top = 121
    Width = 204
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 40
    ParentFont = False
    TabOrder = 2
    TextHint = 'Ingrese el asunto'
    OnChange = Edit3Change
    OnKeyPress = Letras
  end
end