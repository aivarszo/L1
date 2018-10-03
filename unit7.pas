unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  ExtCtrls, Types;

type

  { TForm6 }

  TForm6 = class(TForm)
    StringGrid7: TStringGrid;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure setBB(bb1:boolean);
  private

  public

  end;

var
  Form6: TForm6;
  bb: boolean;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.setBB(bb1:boolean);
begin
  bb:=bb1;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
  if bb then
  begin
    StringGrid7.Row:=1;
    StringGrid7.Row:=StringGrid7.VisibleRowCount;
    Timer1.Interval:=10000;
    bb:=false;
    exit;
  end
  else
  begin
    StringGrid7.Row:=StringGrid7.Row+1;
    Timer1.Interval:=1000;
  end;
  if StringGrid7.Row=StringGrid7.RowCount-1 then
    begin
      Timer1.Interval:=10000;
      bb:=true;
      exit;
    end;
end;

end.

