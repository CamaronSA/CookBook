object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 476
  Width = 681
  object ADOAdministrador: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Administrador'
    Left = 48
    Top = 32
  end
  object ADOLibro: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Libro'
    Left = 48
    Top = 88
  end
  object ADOEjemplar: TADOTable
    AutoCalcFields = False
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Ejemplar'
    Left = 48
    Top = 152
  end
  object ADOPedidos: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Pedidos'
    Left = 48
    Top = 208
  end
  object ADOCliente: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Cliente'
    Left = 48
    Top = 272
  end
  object Tabla_Libro: TDataSource
    DataSet = ADOLibro
    Left = 152
    Top = 96
  end
  object Tabla_Ejemplar: TDataSource
    DataSet = ADOEjemplar
    Left = 152
    Top = 152
  end
  object Tabla_Pedidos: TDataSource
    DataSet = ADOPedidos
    Left = 152
    Top = 208
  end
  object Tabla_Cliente: TDataSource
    DataSet = ADOCliente
    Left = 152
    Top = 272
  end
  object ADOEtiqueta: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Etiqueta'
    Left = 48
    Top = 328
  end
  object ADOIdioma: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Idioma'
    Left = 48
    Top = 384
  end
  object ADOEditorial: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Editorial'
    Left = 256
    Top = 32
  end
  object ADOAutor: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Autor'
    Left = 256
    Top = 96
  end
  object ADOFechaVenta: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Fecha_Venta'
    Left = 256
    Top = 160
  end
  object Tabla_Editorial: TDataSource
    DataSet = ADOEditorial
    Left = 336
    Top = 32
  end
  object Tabla_Idioma: TDataSource
    DataSet = ADOIdioma
    Left = 152
    Top = 384
  end
  object Tabla_Etiqueta: TDataSource
    DataSet = ADOEtiqueta
    Left = 152
    Top = 328
  end
  object Tabla_Autor: TDataSource
    DataSet = ADOAutor
    Left = 336
    Top = 96
  end
  object Tabla_Fecha_Venta: TDataSource
    DataSet = ADOFechaVenta
    Left = 336
    Top = 160
  end
  object SoyUnaConeccion: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 96
    Top = 424
  end
  object VerificarAdministrador: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'QUser'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'QClave'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Administrador'
      'where (Usuario = :QUser) and (Clave = :QClave)')
    Left = 560
    Top = 32
  end
  object Tabla_Administrador: TDataSource
    DataSet = ADOAdministrador
    Left = 152
    Top = 32
  end
  object VerificarCliente: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'QUser'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'QClave'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Cliente'
      'where (Usuario = :QUser) and (Clave = :QClave)')
    Left = 560
    Top = 104
  end
end
