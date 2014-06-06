object FormPanelAdministracion: TFormPanelAdministracion
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Panel de administraci'#243'n'
  ClientHeight = 700
  ClientWidth = 926
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
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
    Left = 328
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
    Left = 496
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
    Left = 639
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
  object Panel1: TPanel
    Left = 24
    Top = 136
    Width = 273
    Height = 361
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 15
      Width = 233
      Height = 38
      Caption = 'Agregar un Administrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 16
      Top = 67
      Width = 233
      Height = 38
      Caption = 'Agregar un libro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 16
      Top = 123
      Width = 233
      Height = 38
      Caption = 'Agregar un editorial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 16
      Top = 179
      Width = 233
      Height = 38
      Caption = 'Agregar un autor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 16
      Top = 231
      Width = 233
      Height = 38
      Caption = 'Agregar un idioma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton11: TSpeedButton
      Left = 16
      Top = 287
      Width = 233
      Height = 38
      Caption = 'Agregar un ejemplar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 328
    Top = 136
    Width = 273
    Height = 401
    TabOrder = 1
    object SpeedButton6: TSpeedButton
      Left = 16
      Top = 15
      Width = 233
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
      Left = 16
      Top = 67
      Width = 233
      Height = 38
      Caption = 'Modificar libro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton8: TSpeedButton
      Left = 16
      Top = 123
      Width = 233
      Height = 38
      Caption = 'Modificar editorial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton9: TSpeedButton
      Left = 16
      Top = 179
      Width = 233
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
      Left = 16
      Top = 231
      Width = 233
      Height = 38
      Caption = 'Modificar idioma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton12: TSpeedButton
      Left = 16
      Top = 287
      Width = 233
      Height = 38
      Caption = 'Modificar ejemplar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton13: TSpeedButton
      Left = 16
      Top = 343
      Width = 233
      Height = 38
      Caption = 'Modificar pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 639
    Top = 136
    Width = 273
    Height = 401
    TabOrder = 2
    object SpeedButton15: TSpeedButton
      Left = 16
      Top = 15
      Width = 233
      Height = 38
      Caption = 'Eliminar Administrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton16: TSpeedButton
      Left = 16
      Top = 67
      Width = 233
      Height = 38
      Caption = 'Eliminar libro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton17: TSpeedButton
      Left = 16
      Top = 123
      Width = 233
      Height = 38
      Caption = 'Eliminar editorial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton18: TSpeedButton
      Left = 16
      Top = 179
      Width = 233
      Height = 38
      Caption = 'Eliminar autor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton19: TSpeedButton
      Left = 16
      Top = 231
      Width = 233
      Height = 38
      Caption = 'Eliminar idioma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton20: TSpeedButton
      Left = 16
      Top = 287
      Width = 233
      Height = 38
      Caption = 'Eliminar ejemplar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton21: TSpeedButton
      Left = 16
      Top = 343
      Width = 233
      Height = 38
      Caption = 'Eliminar pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end
