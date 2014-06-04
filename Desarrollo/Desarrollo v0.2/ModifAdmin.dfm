object FormModifAdmin: TFormModifAdmin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Modificar un Administrador'
  ClientHeight = 389
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 8
    Top = 12
    Width = 320
    Height = 33
    Caption = 'Modificar un Administrador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 51
    Width = 385
    Height = 326
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 51
      Width = 44
      Height = 13
      Caption = 'Nombre: '
    end
    object Label2: TLabel
      Left = 24
      Top = 91
      Width = 41
      Height = 13
      Caption = 'Apellido:'
    end
    object Label3: TLabel
      Left = 24
      Top = 238
      Width = 58
      Height = 13
      Caption = 'Fecha Nac.:'
    end
    object Label4: TLabel
      Left = 24
      Top = 163
      Width = 40
      Height = 13
      Caption = 'Usuario:'
    end
    object Label5: TLabel
      Left = 24
      Top = 128
      Width = 22
      Height = 13
      Caption = 'DNI:'
    end
    object Label6: TLabel
      Left = 24
      Top = 201
      Width = 31
      Height = 13
      Caption = 'Clave:'
    end
    object SpeedButton1: TSpeedButton
      Left = 79
      Top = 278
      Width = 122
      Height = 38
      Caption = 'Modificar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 223
      Top = 278
      Width = 122
      Height = 38
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object Label8: TLabel
      Left = 240
      Top = 64
      Width = 70
      Height = 13
      Caption = 'Administrador:'
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 48
      Width = 121
      Height = 21
      DataField = 'Nombre'
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 88
      Width = 121
      Height = 21
      DataField = 'Apellido'
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 235
      Width = 25
      Height = 21
      DataField = 'Dia'
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 160
      Width = 121
      Height = 21
      DataField = 'Usuario'
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 158
      Top = 235
      Width = 43
      Height = 21
      DataField = 'Anio'
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 127
      Top = 235
      Width = 25
      Height = 21
      DataField = 'Mes'
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 96
      Top = 198
      Width = 121
      Height = 21
      DataField = 'Clave'
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 96
      Top = 125
      Width = 121
      Height = 21
      DataField = 'DNI'
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 7
    end
    object DBGrid1: TDBGrid
      Left = 240
      Top = 83
      Width = 121
      Height = 168
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Usuario'
          Width = 107
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 96
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 9
      Text = 'Edit1'
    end
    object DBComboBox1: TDBComboBox
      Left = 240
      Top = 16
      Width = 145
      Height = 21
      DataField = 'Nombre'
      DataSource = DataModule1.Tabla_Administrador
      TabOrder = 10
    end
    object Edit2: TEdit
      Left = 22
      Top = 8
      Width = 68
      Height = 21
      TabOrder = 11
      Text = 'Edit2'
    end
  end
end
