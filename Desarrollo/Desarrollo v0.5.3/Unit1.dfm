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
    Active = True
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Libro'
    Left = 48
    Top = 88
    object ADOLibroIDLibro: TAutoIncField
      FieldName = 'IDLibro'
      ReadOnly = True
    end
    object ADOLibroPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object ADOLibroImagen: TBlobField
      FieldName = 'Imagen'
    end
    object ADOLibroAnioEditorial: TIntegerField
      FieldName = 'AnioEditorial'
    end
    object ADOLibroTitulo: TWideStringField
      FieldName = 'Titulo'
      Size = 255
    end
    object ADOLibroDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object ADOLibroAutor: TWideStringField
      FieldName = 'Autor'
      Size = 255
    end
    object ADOLibroEditorial: TWideStringField
      FieldName = 'Editorial'
      Size = 255
    end
    object ADOLibroIdioma: TWideStringField
      FieldName = 'Idioma'
      Size = 255
    end
    object ADOLibroEtiqueta: TWideStringField
      FieldName = 'Etiqueta'
      Size = 255
    end
    object ADOLibroISBN: TIntegerField
      FieldName = 'ISBN'
    end
  end
  object ADOPedidos: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Pedidos'
    Left = 48
    Top = 208
  end
  object ADOCliente: TADOTable
    Active = True
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Cliente'
    Left = 48
    Top = 272
    object ADOClienteDNI: TIntegerField
      FieldName = 'DNI'
    end
    object ADOClienteNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOClienteApellido: TWideStringField
      FieldName = 'Apellido'
      Size = 255
    end
    object ADOClienteUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 255
    end
    object ADOClienteClave: TWideStringField
      FieldName = 'Clave'
      Size = 255
    end
    object ADOClienteCalle: TWideStringField
      FieldName = 'Calle'
      Size = 255
    end
    object ADOClienteNro: TIntegerField
      FieldName = 'Nro'
    end
    object ADOClienteLocalidad: TWideStringField
      FieldName = 'Localidad'
      Size = 255
    end
    object ADOClienteProvincia: TWideStringField
      FieldName = 'Provincia'
      Size = 255
    end
    object ADOClientePais: TWideStringField
      FieldName = 'Pais'
      Size = 255
    end
    object ADOClienteMail: TWideStringField
      FieldName = 'Mail'
      Size = 255
    end
    object ADOClienteTelefono: TIntegerField
      FieldName = 'Telefono'
    end
    object ADOClienteFechaNacimiento: TDateTimeField
      FieldName = 'Fecha Nacimiento'
    end
    object ADOClienteFechaDeInicioCliente: TDateTimeField
      FieldName = 'FechaDeInicioCliente'
    end
  end
  object Tabla_Libro: TDataSource
    DataSet = ADOLibro
    Left = 152
    Top = 96
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
    Active = True
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
    Left = 40
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
    Left = 48
    Top = 152
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
    Left = 152
    Top = 152
  end
  object SoyUnaConeccion: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Nicolas\Do' +
      'cuments\GitHub\CookBook\Desarrollo\Desarrollo v0.5.2\CookBookDB.' +
      'mdb;Persist Security Info=False'
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
    Top = 88
  end
  object ComprobarIdioma: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'consultarIdioma'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Idioma'
      'where (Idioma = :consultarIdioma)')
    Left = 560
    Top = 152
  end
  object EditorialNoEstaEnLibro: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Dato'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select Editorial'
      'from Libro'
      'where (Editorial = :Dato)')
    Left = 560
    Top = 216
  end
  object IdiomaEstaEnLibro: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Dato'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select Idioma '
      'from Libro'
      'where (Idioma =:Dato)')
    Left = 560
    Top = 272
  end
  object ComprobarEditorial: TADOQuery
    Active = True
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Dato'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select NombreEditorial from Editorial'
      'where (NombreEditorial =:Dato)')
    Left = 560
    Top = 328
  end
  object ComprobarAutor: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <>
    SQL.Strings = (
      'SELECT dni'
      'FROM autor'
      'WHERE (dni = :dato)')
    Left = 384
    Top = 264
  end
end