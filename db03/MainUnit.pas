unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Year: TLabel;
    SelectYear: TComboBox;
    Label1: TLabel;
    SelectMonth: TComboBox;
    DBGrid2: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses NortwindData;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Northwind.Orders.Parameters.ParamByName('MyYear').Value := StrToInt (SelectYear.Text);
  Northwind.Orders.Requery();
  Northwind.Orders.Filter := 'OrderMonth = ' + SelectMonth.Text;
  Northwind.Orders.Filtered := true;
end;

end.
