unit Unit1;

interface
    //*********>>Powered By Neg, lider autoproclamado<<*********\\
uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOAdministrador: TADOTable;
    ADOLibro: TADOTable;
    ADOPedidos: TADOTable;
    ADOCliente: TADOTable;
    Tabla_Libro: TDataSource;
    Tabla_Pedidos: TDataSource;
    Tabla_Cliente: TDataSource;
    ADOEtiqueta: TADOTable;
    ADOIdioma: TADOTable;
    ADOEditorial: TADOTable;
    ADOAutor: TADOTable;
    Tabla_Editorial: TDataSource;
    Tabla_Idioma: TDataSource;
    Tabla_Etiqueta: TDataSource;
    Tabla_Autor: TDataSource;
    SoyUnaConeccion: TADOConnection;
    VerificarAdministrador: TADOQuery;
    Tabla_Administrador: TDataSource;
    VerificarCliente: TADOQuery;
    ComprobarIdioma: TADOQuery;
    EditorialNoEstaEnLibro: TADOQuery;
    IdiomaEstaEnLibro: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.