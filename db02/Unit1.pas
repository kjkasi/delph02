unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin

  DataModuleDB.ADOConnection1.Open ();

  DataModuleDB.ADOTableItems.Open ();

  DataModuleDB.ADOQueryItems.SQL.Clear ();
  DataModuleDB.ADOQueryItems.SQL.Add('SELECT ItemNo, Qty FROM Items');
  DataModuleDB.ADOQueryItems.Open ();
end;

procedure TForm1.FormHide(Sender: TObject);
begin

  DataModuleDB.ADOTableItems.Close ();
  DataModuleDB.ADOQueryItems.Close ();

  DataModuleDB.ADOConnection1.Close ();
end;

end.
