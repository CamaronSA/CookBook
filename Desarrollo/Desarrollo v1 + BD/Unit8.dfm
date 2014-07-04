object Form8: TForm8
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Ingrese Datos de Tarjeta'
  ClientHeight = 216
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 233
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 60
      Width = 56
      Height = 19
      Caption = 'Tarjeta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 92
      Width = 87
      Height = 19
      Caption = 'Nro Tarjeta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 48
      Top = 121
      Width = 115
      Height = 19
      Caption = 'Cod. Seguridad:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 48
      Top = 166
      Width = 129
      Height = 30
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton1: TSpeedButton
      Left = 183
      Top = 166
      Width = 130
      Height = 30
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 96
      Top = 41
      Width = 158
      Height = 14
      Caption = 'Complete los campos en rojo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 96
      Top = 21
      Width = 185
      Height = 14
      Caption = 'Todos los campos son obligatorios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 168
      Top = 61
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object Edit1: TEdit
      Left = 168
      Top = 94
      Width = 145
      Height = 21
      MaxLength = 20
      NumbersOnly = True
      TabOrder = 1
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 168
      Top = 123
      Width = 49
      Height = 21
      MaxLength = 4
      NumbersOnly = True
      TabOrder = 2
      OnChange = Edit2Change
    end
  end
  object ClaroQueSiCampeon: TADOQuery
    Connection = DataModule1.SoyUnaConeccion
    Parameters = <>
    Left = 65528
    Top = 88
  end
  object EncontrarTarjeta: TADOQuery
    Connection = DataModule1.SoyUnaConeccion
    Parameters = <>
    Left = 65520
    Top = 48
  end
end
