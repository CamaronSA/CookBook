object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 476
  Width = 681
  object ADOAdministrador: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Administrador'
    Left = 48
    Top = 32
    object ADOAdministradorDNI: TIntegerField
      FieldName = 'DNI'
    end
    object ADOAdministradorNombre: TMemoField
      FieldName = 'Nombre'
      BlobType = ftMemo
    end
    object ADOAdministradorApellido: TMemoField
      FieldName = 'Apellido'
      BlobType = ftMemo
    end
    object ADOAdministradorUsuario: TMemoField
      FieldName = 'Usuario'
      BlobType = ftMemo
    end
    object ADOAdministradorClave: TMemoField
      FieldName = 'Clave'
      BlobType = ftMemo
    end
    object ADOAdministradorDia: TIntegerField
      FieldName = 'Dia'
    end
    object ADOAdministradorMes: TIntegerField
      FieldName = 'Mes'
    end
    object ADOAdministradorAnio: TIntegerField
      FieldName = 'Anio'
    end
  end
  object Tabla_Administrador: TDataSource
    DataSet = ADOAdministrador
    Left = 152
    Top = 32
  end
  object ADOMailAdministrador: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'MailAdministrador'
    Left = 48
    Top = 96
  end
  object ADOLibro: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Libro'
    Left = 48
    Top = 160
    object ADOLibroID_Libro: TAutoIncField
      FieldName = 'ID_Libro'
      ReadOnly = True
    end
    object ADOLibroPrecio: TFloatField
      FieldName = 'Precio'
    end
    object ADOLibroImagen: TBlobField
      FieldName = 'Imagen'
    end
    object ADOLibroAnioEdicion: TIntegerField
      FieldName = 'AnioEdicion'
    end
    object ADOLibroTitulo: TMemoField
      FieldName = 'Titulo'
      BlobType = ftMemo
    end
    object ADOLibroDescripcion: TMemoField
      FieldName = 'Descripcion'
      BlobType = ftMemo
    end
    object ADOLibroISBN: TIntegerField
      FieldName = 'ISBN'
    end
    object ADOLibroAutor: TIntegerField
      FieldName = 'Autor'
    end
    object ADOLibroEditorial: TIntegerField
      FieldName = 'Editorial'
    end
    object ADOLibroEtiqueta: TIntegerField
      FieldName = 'Etiqueta'
    end
    object ADOLibroIdioma: TIntegerField
      FieldName = 'Idioma'
    end
  end
  object ADOEjemplar: TADOTable
    Active = True
    AutoCalcFields = False
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Ejemplar'
    Left = 48
    Top = 224
  end
  object ADOPedidos: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Pedidos'
    Left = 48
    Top = 288
  end
  object ADOCliente: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Cliente'
    Left = 48
    Top = 352
  end
  object Tabla_Libro: TDataSource
    DataSet = ADOLibro
    Left = 152
    Top = 160
  end
  object Tabla_Ejemplar: TDataSource
    DataSet = ADOEjemplar
    Left = 152
    Top = 224
  end
  object Tabla_Pedidos: TDataSource
    DataSet = ADOPedidos
    Left = 152
    Top = 288
  end
  object Tabla_Cliente: TDataSource
    DataSet = ADOCliente
    Left = 152
    Top = 352
  end
  object Tabla_MailAdministrador: TDataSource
    DataSet = ADOMailAdministrador
    Left = 152
    Top = 96
  end
  object ADOMailCliente: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'MailClientes'
    Left = 264
    Top = 32
  end
  object ADOTelefono: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Telefono_Cliente'
    Left = 264
    Top = 96
  end
  object ADOEtiqueta: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Etiqueta'
    Left = 264
    Top = 160
  end
  object ADOIdioma: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Idioma'
    Left = 264
    Top = 224
  end
  object ADOEditorial: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Editorial'
    Left = 264
    Top = 288
  end
  object ADOAutor: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Autor'
    Left = 264
    Top = 352
  end
  object ADOFechaVenta: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CookB' +
      'ookDB'
    CursorType = ctStatic
    TableName = 'Fecha_Venta'
    Left = 416
    Top = 32
  end
  object Tabla_Editorial: TDataSource
    DataSet = ADOEditorial
    Left = 344
    Top = 288
  end
  object Tabla_Idioma: TDataSource
    DataSet = ADOIdioma
    Left = 344
    Top = 224
  end
  object Tabla_Etiqueta: TDataSource
    DataSet = ADOEtiqueta
    Left = 344
    Top = 160
  end
  object Tabla_Telefono: TDataSource
    DataSet = ADOTelefono
    Left = 344
    Top = 96
  end
  object Tabla_MailCliente: TDataSource
    DataSet = ADOMailCliente
    Left = 344
    Top = 32
  end
  object Tabla_Autor: TDataSource
    DataSet = ADOAutor
    Left = 344
    Top = 352
  end
  object Tabla_Fecha_Venta: TDataSource
    DataSet = ADOFechaVenta
    Left = 488
    Top = 32
  end
end
