unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  ExtCtrls, StdCtrls, Types;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    StringGrid7: TStringGrid;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StringGrid7DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
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
    Timer1.Interval:=15000;
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

procedure TForm6.Button1Click(Sender: TObject);
begin
  StringGrid7.Font.Size:=StringGrid7.Font.Size + 2;
  StringGrid7.AutoSizeColumns;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  StringGrid7.Font.Size:=StringGrid7.Font.Size - 2;
  StringGrid7.AutoSizeColumns;
end;

//krāsas vietām
procedure TForm6.StringGrid7DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  with StringGrid7 do
    begin
      if (aCol = 6) and (Pos(':1 ',Cells[6, aRow])>0) then
        begin
          Canvas.Font.Color := clWhite;
          Canvas.Brush.Color := clRed;
          Canvas.FillRect(aRect.Left, aRect.Top,
                         aRect.Right, aRect.Bottom);
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
          exit;
        end;
      if (aCol = 6) and (Pos(':2 ',Cells[6, aRow])>0) then
        begin
          Canvas.Font.Color := clWhite;
          Canvas.Brush.Color := clGreen;
          Canvas.FillRect(aRect.Left, aRect.Top,
                         aRect.Right, aRect.Bottom);
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
        end;
      if (aCol = 6) and (Pos(':3 ',Cells[6, aRow])>0) then
        begin
          Canvas.Font.Color := clWhite;
          Canvas.Brush.Color := clBlue;
          Canvas.FillRect(aRect.Left, aRect.Top,
                         aRect.Right, aRect.Bottom);
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
        end;
    end;
end;

end.

