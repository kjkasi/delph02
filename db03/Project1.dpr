program Project1;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  NortwindData in 'NortwindData.pas' {Northwind: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TNorthwind, Northwind);
  Application.Run;
end.
