object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 650
  Width = 744
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
    IndexFieldNames = 'Idioma'
    TableName = 'Libro'
    Left = 48
    Top = 88
    object ADOLibroIDLibro: TAutoIncField
      FieldName = 'IDLibro'
      ReadOnly = True
    end
    object ADOLibroPrecio: TFloatField
      FieldName = 'Precio'
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
    object ADOLibroDescripcion: TWideMemoField
      FieldName = 'Descripcion'
      BlobType = ftWideMemo
    end
    object ADOLibroDNIAutor: TIntegerField
      FieldName = 'DNIAutor'
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
    object ADOLibroEsDestacado: TBooleanField
      FieldName = 'EsDestacado'
    end
    object ADOLibroDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object ADOLibroAutor: TStringField
      FieldKind = fkLookup
      FieldName = 'Autor'
      LookupDataSet = ADOAutor
      LookupKeyFields = 'DNI'
      LookupResultField = 'Apellido'
      KeyFields = 'DNIAutor'
      Lookup = True
    end
  end
  object ADOPedidos: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Pedidos'
    Left = 48
    Top = 208
    object ADOPedidosIDPedido: TAutoIncField
      FieldName = 'IDPedido'
      ReadOnly = True
    end
    object ADOPedidosDNI: TIntegerField
      FieldName = 'DNI'
    end
    object ADOPedidosISBN: TIntegerField
      FieldName = 'ISBN'
    end
    object ADOPedidosEstado: TWideStringField
      FieldName = 'Estado'
      Size = 255
    end
    object ADOPedidosFechaDeInicio: TDateTimeField
      FieldName = 'FechaDeInicio'
    end
    object ADOPedidosFechaDeFin: TDateTimeField
      FieldName = 'FechaDeFin'
    end
    object ADOPedidosIDTarjeta: TIntegerField
      FieldName = 'IDTarjeta'
    end
    object ADOPedidosNroTarjeta: TWideStringField
      FieldName = 'NroTarjeta'
      Size = 255
    end
    object ADOPedidosTitulo: TStringField
      FieldKind = fkLookup
      FieldName = 'Titulo'
      LookupDataSet = ADOLibro
      LookupKeyFields = 'ISBN'
      LookupResultField = 'Titulo'
      KeyFields = 'ISBN'
      Lookup = True
    end
    object ADOPedidosApellido: TStringField
      FieldKind = fkLookup
      FieldName = 'Apellido'
      LookupDataSet = ADOCliente
      LookupKeyFields = 'DNI'
      LookupResultField = 'Apellido'
      KeyFields = 'DNI'
      Lookup = True
    end
    object ADOPedidosNombre: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre'
      LookupDataSet = ADOCliente
      LookupKeyFields = 'DNI'
      LookupResultField = 'Nombre'
      KeyFields = 'DNI'
      Lookup = True
    end
    object ADOPedidosTarjeta: TStringField
      FieldKind = fkLookup
      FieldName = 'Tarjeta'
      LookupDataSet = ADOTarjetas
      LookupKeyFields = 'IDTarjeta'
      LookupResultField = 'Nombre'
      KeyFields = 'IDTarjeta'
      Lookup = True
    end
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
    IndexFieldNames = 'Idioma'
    TableName = 'Idioma'
    Left = 48
    Top = 384
  end
  object ADOEditorial: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    MasterSource = Tabla_Libro
    TableName = 'Editorial'
    Left = 248
    Top = 32
  end
  object ADOAutor: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Autor'
    Left = 48
    Top = 152
    object ADOAutorNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOAutorApellido: TWideStringField
      FieldName = 'Apellido'
      Size = 255
    end
    object ADOAutorDNI: TIntegerField
      FieldName = 'DNI'
    end
  end
  object Tabla_Editorial: TDataSource
    DataSet = ADOEditorial
    Left = 344
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
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Se' +
      'ttings\Alejandro\Escritorio\Desarrollo v1 + BD\CookBookDB.mdb;Pe' +
      'rsist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 96
    Top = 512
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
    Left = 552
    Top = 40
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
    Left = 552
    Top = 96
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
    Left = 552
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
    Left = 552
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
    Left = 552
    Top = 272
  end
  object ComprobarEditorial: TADOQuery
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
    Left = 552
    Top = 328
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Title = 'Imagen de portada'
    Left = 248
    Top = 96
  end
  object ComprobarLibro: TADOQuery
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
      'Select * from libro'
      'where (ISBN =:Dato)')
    Left = 552
    Top = 384
  end
  object ComprobarCategoria: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ConsultarCategoria'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'from Etiqueta'
      'where (NombreEtiqueta =:ConsultarCategoria)')
    Left = 448
    Top = 328
  end
  object ComprobarAutor: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Mi Pc\Desk' +
      'top\Desarrollo v0.5.4\CookBookDB.mdb;Persist Security Info=False'
    Parameters = <
      item
        Name = 'Dato'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select DNI'
      'from Autor'
      'where (DNI =:Dato)')
    Left = 448
    Top = 96
  end
  object ComprobarAdmin: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    DataSource = Tabla_Administrador
    Parameters = <
      item
        Name = 'consultarDNI'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select DNI from Administrador'
      'where (DNI=:consultarDNI)')
    Left = 448
    Top = 32
  end
  object ComprobarUsuarioAdmin: TADOQuery
    Connection = SoyUnaConeccion
    DataSource = Tabla_Administrador
    Parameters = <
      item
        Name = 'user'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from Administrador'
      'where (:user)=Usuario')
    Left = 344
    Top = 96
  end
  object Tabla_FiltroFecha: TDataSource
    DataSet = FiltroPorFecha
    Left = 344
    Top = 152
  end
  object FiltroPorFecha: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    DataSource = Tabla_Pedidos
    Parameters = <
      item
        Name = 'Desde'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Hasta'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Pedidos'
      'where (FechaDeFin>=:Desde) and (FechaDeFin<=:Hasta)')
    Left = 448
    Top = 272
  end
  object YaExisteUsuarioCliente: TADOQuery
    Connection = SoyUnaConeccion
    DataSource = Tabla_Cliente
    Parameters = <
      item
        Name = 'user'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select Usuario from Cliente'
      'where (Usuario=:user)')
    Left = 448
    Top = 216
  end
  object YaExisteCliente: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    DataSource = Tabla_Cliente
    Parameters = <
      item
        Name = 'consultarDNI'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Cliente'
      'where (DNI=:consultarDNI)')
    Left = 448
    Top = 152
  end
  object CategoriaEstaEnLibro: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Dato1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select * '
      'from Libro'
      'Where (Etiqueta =:Dato1)')
    Left = 448
    Top = 384
  end
  object CampoEtiquetaComboBox: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <>
    Left = 40
    Top = 584
  end
  object CampoIdiomaComboBox: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <>
    Left = 168
    Top = 584
  end
  object CampoAutorComboBox: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <>
    Left = 304
    Top = 584
  end
  object CampoEditorialComboBox: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <>
    Left = 432
    Top = 584
  end
  object EseLibroTienePedido: TADOQuery
    Connection = SoyUnaConeccion
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
      'Select * '
      'from pedidos'
      'where (isbn = :Dato)')
    Left = 344
    Top = 216
  end
  object ModificarEditorial: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Dato1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from Libro'
      'where (Editorial =:Dato1)')
    Left = 344
    Top = 272
  end
  object LibrosALaVenta: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'From Libro'
      'Where (Disponible =True)'
      'order by Titulo')
    Left = 344
    Top = 328
    object LibrosALaVentaIDLibro: TAutoIncField
      FieldName = 'IDLibro'
      ReadOnly = True
    end
    object LibrosALaVentaPrecio: TFloatField
      FieldName = 'Precio'
    end
    object LibrosALaVentaImagen: TBlobField
      FieldName = 'Imagen'
    end
    object LibrosALaVentaAnioEditorial: TIntegerField
      FieldName = 'AnioEditorial'
    end
    object LibrosALaVentaTitulo: TWideStringField
      FieldName = 'Titulo'
      Size = 255
    end
    object LibrosALaVentaDescripcion: TWideMemoField
      FieldName = 'Descripcion'
      BlobType = ftWideMemo
    end
    object LibrosALaVentaDNIAutor: TIntegerField
      FieldName = 'DNIAutor'
    end
    object LibrosALaVentaEditorial: TWideStringField
      FieldName = 'Editorial'
      Size = 255
    end
    object LibrosALaVentaIdioma: TWideStringField
      FieldName = 'Idioma'
      Size = 255
    end
    object LibrosALaVentaEtiqueta: TWideStringField
      FieldName = 'Etiqueta'
      Size = 255
    end
    object LibrosALaVentaISBN: TIntegerField
      FieldName = 'ISBN'
    end
    object LibrosALaVentaEsDestacado: TBooleanField
      FieldName = 'EsDestacado'
    end
    object LibrosALaVentaDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object LibrosALaVentaAutor: TStringField
      FieldKind = fkLookup
      FieldName = 'Autor'
      LookupDataSet = ADOAutor
      LookupKeyFields = 'DNI'
      LookupResultField = 'Apellido'
      KeyFields = 'DNIAutor'
      Lookup = True
    end
    object LibrosALaVentaNomAutor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomAutor'
      LookupDataSet = ADOAutor
      LookupKeyFields = 'DNI'
      LookupResultField = 'Nombre'
      KeyFields = 'DNIAutor'
      Lookup = True
    end
    object LibrosALaVentaApeAutor: TStringField
      FieldKind = fkLookup
      FieldName = 'ApeAutor'
      LookupDataSet = ADOAutor
      LookupKeyFields = 'DNI'
      LookupResultField = 'Apellido'
      KeyFields = 'DNIAutor'
      Lookup = True
    end
  end
  object Tabla_LibrosALaVenta: TDataSource
    DataSet = LibrosALaVenta
    Left = 248
    Top = 328
  end
  object EmailDeUser: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <
      item
        Name = 'User'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from Cliente'
      'where (Usuario=:User)')
    Left = 344
    Top = 384
  end
  object RecuClaveUsuario: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <
      item
        Name = 'User'
        Size = -1
        Value = Null
      end
      item
        Name = 'EmailUsuario'
        Size = -1
        Value = Null
      end
      item
        Name = 'DNIUsuario'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from Cliente'
      
        'where (Usuario=:User) and (Mail=:EmailUsuario) and (DNI=:DNIUsua' +
        'rio)')
    Left = 344
    Top = 432
  end
  object ComprobarUsuario: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <
      item
        Name = 'user'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from Cliente'
      'where (:user)=Usuario')
    Left = 448
    Top = 432
  end
  object BorrarUsuarioCliente: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <
      item
        Name = 'user'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Delete * from Cliente'
      'where Usuario=:user')
    Left = 664
    Top = 432
  end
  object BorrarUsuarioAdmin: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <
      item
        Name = 'user'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Delete * from Administrador'
      'where Usuario=:user')
    Left = 664
    Top = 488
  end
  object Tabla_MisDatosUsuario: TDataSource
    DataSet = ComprobarUsuario
    Left = 552
    Top = 432
  end
  object DS_MisCompras: TDataSource
    DataSet = QMisCompras
    Left = 664
    Top = 296
  end
  object QMisCompras: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    DataSource = Tabla_Pedidos
    Parameters = <
      item
        Name = 'consultaDNI'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Pedidos'
      'where (DNI=:consultaDNI)')
    Left = 664
    Top = 352
    object QMisComprasISBN: TIntegerField
      FieldName = 'ISBN'
    end
    object QMisComprasLibro: TStringField
      FieldKind = fkLookup
      FieldName = 'Libro'
      LookupDataSet = ADOLibro
      LookupKeyFields = 'ISBN'
      LookupResultField = 'Titulo'
      KeyFields = 'ISBN'
      ReadOnly = True
      Size = 30
      Lookup = True
    end
    object QMisComprasEstado: TWideStringField
      FieldName = 'Estado'
      Size = 255
    end
    object QMisComprasFechaDeInicio: TDateTimeField
      FieldName = 'FechaDeInicio'
    end
    object QMisComprasFechaDeFin: TDateTimeField
      FieldName = 'FechaDeFin'
    end
  end
  object ADOTarjetas: TADOTable
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    TableName = 'Tarjetas'
    Left = 48
    Top = 440
    object ADOTarjetasIDTarjeta: TAutoIncField
      FieldName = 'IDTarjeta'
      ReadOnly = True
    end
    object ADOTarjetasNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
  end
  object Tabla_Tarjetas: TDataSource
    DataSet = ADOTarjetas
    Left = 152
    Top = 440
  end
  object Destacados: TADOQuery
    Connection = SoyUnaConeccion
    CursorType = ctStatic
    DataSource = Tabla_Libro
    Parameters = <>
    SQL.Strings = (
      'select * from Libro'
      'where (EsDestacado = True) and (Disponible = True)')
    Left = 552
    Top = 488
    object DestacadosIDLibro: TAutoIncField
      FieldName = 'IDLibro'
      ReadOnly = True
    end
    object DestacadosPrecio: TFloatField
      FieldName = 'Precio'
    end
    object DestacadosImagen: TBlobField
      FieldName = 'Imagen'
    end
    object DestacadosAnioEditorial: TIntegerField
      FieldName = 'AnioEditorial'
    end
    object DestacadosTitulo: TWideStringField
      FieldName = 'Titulo'
      Size = 255
    end
    object DestacadosDescripcion: TWideMemoField
      FieldName = 'Descripcion'
      BlobType = ftWideMemo
    end
    object DestacadosDNIAutor: TIntegerField
      FieldName = 'DNIAutor'
    end
    object DestacadosEditorial: TWideStringField
      FieldName = 'Editorial'
      Size = 255
    end
    object DestacadosIdioma: TWideStringField
      FieldName = 'Idioma'
      Size = 255
    end
    object DestacadosEtiqueta: TWideStringField
      FieldName = 'Etiqueta'
      Size = 255
    end
    object DestacadosISBN: TIntegerField
      FieldName = 'ISBN'
    end
    object DestacadosEsDestacado: TBooleanField
      FieldName = 'EsDestacado'
    end
    object DestacadosDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object DestacadosNombreAutor: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreAutor'
      LookupDataSet = ADOAutor
      LookupKeyFields = 'DNI'
      LookupResultField = 'Nombre'
      KeyFields = 'DNIAutor'
      Size = 30
      Lookup = True
    end
    object DestacadosApellidoAutor: TStringField
      FieldKind = fkLookup
      FieldName = 'ApellidoAutor'
      LookupDataSet = ADOAutor
      LookupKeyFields = 'DNI'
      LookupResultField = 'Apellido'
      KeyFields = 'DNIAutor'
      Size = 30
      Lookup = True
    end
  end
  object PedidosUsuario: TADOQuery
    Connection = SoyUnaConeccion
    Parameters = <
      item
        Name = 'consultaDNI'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Pedidos'
      
        'where (DNI=:consultaDNI) and ((Estado='#39'Pendiente'#39') or (Estado='#39'E' +
        'n envio'#39'))')
    Left = 248
    Top = 392
  end
end
