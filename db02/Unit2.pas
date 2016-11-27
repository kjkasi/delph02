unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModuleDB = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTableItems: TADOTable;
    ADOQueryItems: TADOQuery;
    sourceItemsQuery: TDataSource;
    sourceItemsTable: TDataSource;
    ADOTableItemsOrderNo: TFloatField;
    ADOTableItemsItemNo: TFloatField;
    ADOTableItemsPartNo: TFloatField;
    ADOTableItemsQty: TIntegerField;
    ADOTableItemsDiscount: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleDB: TDataModuleDB;

implementation

{$R *.dfm}

end.
