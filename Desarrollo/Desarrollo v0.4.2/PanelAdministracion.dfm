object FormPanelAdministracion: TFormPanelAdministracion
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Panel de administraci'#243'n'
  ClientHeight = 700
  ClientWidth = 1011
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 266
    Top = 88
    Width = 94
    Height = 33
    Caption = 'Agregar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 522
    Top = 88
    Width = 84
    Height = 33
    Caption = 'Edici'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton14: TSpeedButton
    Left = 856
    Top = 624
    Width = 105
    Height = 38
    Caption = 'Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton14Click
  end
  object Label3: TLabel
    Left = 775
    Top = 88
    Width = 52
    Height = 33
    Caption = 'Baja'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 88
    Width = 40
    Height = 33
    Caption = 'Ver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 16
    Width = 499
    Height = 57
    Caption = 'Panel de Administraci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -47
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 266
    Top = 136
    Width = 222
    Height = 310
    AutoSize = True
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 222
      Height = 38
      Caption = 'Agregar un Administrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 0
      Top = 52
      Width = 222
      Height = 38
      Caption = 'Agregar un libro'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 0
      Top = 108
      Width = 222
      Height = 38
      Caption = 'Agregar un editorial'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 0
      Top = 164
      Width = 222
      Height = 38
      Caption = 'Agregar un autor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 0
      Top = 216
      Width = 222
      Height = 38
      Caption = 'Agregar un idioma'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton11: TSpeedButton
      Left = 0
      Top = 272
      Width = 222
      Height = 38
      Caption = 'Agregar un ejemplar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 522
    Top = 136
    Width = 220
    Height = 366
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton6: TSpeedButton
      Left = 0
      Top = 0
      Width = 220
      Height = 38
      Caption = 'Modificar Administrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 0
      Top = 52
      Width = 220
      Height = 38
      Caption = 'Modificar libro'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton8: TSpeedButton
      Left = 0
      Top = 108
      Width = 220
      Height = 38
      Caption = 'Modificar editorial'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton9: TSpeedButton
      Left = 0
      Top = 164
      Width = 220
      Height = 38
      Caption = 'Modificar autor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton9Click
    end
    object SpeedButton10: TSpeedButton
      Left = 0
      Top = 216
      Width = 220
      Height = 38
      Caption = 'Modificar idioma'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton12: TSpeedButton
      Left = 0
      Top = 272
      Width = 220
      Height = 38
      Caption = 'Modificar ejemplar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton13: TSpeedButton
      Left = 0
      Top = 328
      Width = 220
      Height = 38
      Caption = 'Modificar pedido'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 775
    Top = 136
    Width = 210
    Height = 366
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton15: TSpeedButton
      Left = 0
      Top = 0
      Width = 210
      Height = 38
      Caption = 'Eliminar Administrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton15Click
    end
    object SpeedButton16: TSpeedButton
      Left = 0
      Top = 52
      Width = 210
      Height = 38
      Caption = 'Eliminar libro'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton17: TSpeedButton
      Left = 0
      Top = 108
      Width = 210
      Height = 38
      Caption = 'Eliminar editorial'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton18: TSpeedButton
      Left = 0
      Top = 164
      Width = 210
      Height = 38
      Caption = 'Eliminar autor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton18Click
    end
    object SpeedButton19: TSpeedButton
      Left = 0
      Top = 216
      Width = 210
      Height = 38
      Caption = 'Eliminar idioma'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton20: TSpeedButton
      Left = 0
      Top = 272
      Width = 210
      Height = 38
      Caption = 'Eliminar ejemplar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton21: TSpeedButton
      Left = 0
      Top = 328
      Width = 210
      Height = 38
      Caption = 'Eliminar pedido'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 24
    Top = 136
    Width = 210
    Height = 333
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object SpeedButton22: TSpeedButton
      Left = 0
      Top = 0
      Width = 210
      Height = 38
      Caption = 'Ver Administrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton22Click
    end
    object SpeedButton23: TSpeedButton
      Left = 0
      Top = 52
      Width = 210
      Height = 38
      Caption = 'Ver libro'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton24: TSpeedButton
      Left = 0
      Top = 108
      Width = 210
      Height = 38
      Caption = 'Ver editorial'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton25: TSpeedButton
      Left = 0
      Top = 163
      Width = 210
      Height = 38
      Caption = 'Ver autor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton25Click
    end
    object SpeedButton26: TSpeedButton
      Left = 0
      Top = 207
      Width = 210
      Height = 38
      Caption = 'Ver idioma'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton27: TSpeedButton
      Left = 0
      Top = 251
      Width = 210
      Height = 38
      Caption = 'Ver ejemplar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton28: TSpeedButton
      Left = 0
      Top = 295
      Width = 210
      Height = 38
      Caption = 'Ver pedido'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end