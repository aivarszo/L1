unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ValEdit,
  StdCtrls, Grids;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ValueListEditor1: TValueListEditor;
    procedure FormCreate(Sender: TObject);
    procedure ValueListEditor1SelectEditor(Sender: TObject; aCol, aRow: Integer;
      var Editor: TWinControl);
  private
    InitialValue: string;

  public

  end;

var
  Form7: TForm7;

implementation

{$R *.lfm}

procedure TForm7.FormCreate(Sender: TObject);
var
   dropList : TStrings;
begin
     dropList := TStringList.Create;
     dropList.Add('rogain');
     ValueListEditor1.ItemProps['eventtype'].EditStyle:=esPickList;
     ValueListEditor1.ItemProps['eventtype'].PickList.Assign(dropList);
     ValueListEditor1.ItemProps['eventtype'].Readonly:=true;
end;

procedure TForm7.ValueListEditor1SelectEditor(Sender: TObject; aCol, aRow: Integer;
  var Editor: TWinControl);
begin
  InitialValue := ValueListEditor1.Cells[aCol,aRow];
end;

end.

