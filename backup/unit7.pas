unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  ExtCtrls, StdCtrls, Types;

type

  { TForm6 }

  TForm6 = class(TForm)
    ScrollBox1: TScrollBox;
    StringGrid1: TStringGrid;
    StringGrid7: TStringGrid;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure AdjustCols(Sender: TObject);
    procedure StringGrid7DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
  private
    delta:integer;
  public
    bb:boolean;

  end;

var
  Form6: TForm6;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.Timer1Timer(Sender: TObject);
begin
  if bb then
  begin
    ScrollBox1.VertScrollBar.Position:=0;
    ScrollBox1.VertScrollBar.Page:=Form6.Height;
    ScrollBox1.VertScrollBar.Range:=StringGrid7.Height;
    if StringGrid7.Height<Form6.Height then
      begin
        Timer1.Interval:=0;
        exit;
      end;
    Timer1.Interval:=15000;
    bb:=false;
    ScrollBox1.VertScrollBar.Increment:=4;
    delta:=1;
    exit;
  end
  else
  begin
    ScrollBox1.VertScrollBar.Position:=ScrollBox1.VertScrollBar.Position+delta*ScrollBox1.VertScrollBar.Increment;
    Timer1.Interval:=250;
  end;
  if (ScrollBox1.VertScrollBar.Position>=ScrollBox1.VertScrollBar.Range-ScrollBox1.VertScrollBar.Page)or
     (ScrollBox1.VertScrollBar.Position=0) then
    begin
      Timer1.Interval:=10000;
      delta := -delta;
    end;
end;

procedure TForm6.AdjustCols(Sender: TObject);
begin
  Stringgrid7.Columns.Items[0].Width:=Round(Form6.Width * 0.07);
  Stringgrid7.Columns.Items[1].Width:=Round(Form6.Width * 0.35);
  Stringgrid7.Columns.Items[2].Width:=Round(Form6.Width * 0.1);
  Stringgrid7.Columns.Items[3].Width:=Round(Form6.Width * 0.07);
  Stringgrid7.Columns.Items[4].Width:=Round(Form6.Width * 0.05);
  Stringgrid7.Columns.Items[5].Width:=Round(Form6.Width * 0.07);
  Stringgrid7.Columns.Items[6].Width:=Round(Form6.Width * 0.28);
  Stringgrid1.Columns.Items[0].Width:=Round(Form6.Width * 0.07);
  Stringgrid1.Columns.Items[1].Width:=Round(Form6.Width * 0.35);
  Stringgrid1.Columns.Items[2].Width:=Round(Form6.Width * 0.1);
  Stringgrid1.Columns.Items[3].Width:=Round(Form6.Width * 0.07);
  Stringgrid1.Columns.Items[4].Width:=Round(Form6.Width * 0.05);
  Stringgrid1.Columns.Items[5].Width:=Round(Form6.Width * 0.07);
  Stringgrid1.Columns.Items[6].Width:=Round(Form6.Width * 0.28);
  StringGrid7.Height:=StringGrid7.RowCount*StringGrid7.DefaultRowHeight;
  bb:=true;
  Timer1.Interval:=1000;
end;

//krāsas vietām
procedure TForm6.StringGrid7DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  with StringGrid7 do
    begin
      if (aCol = 5) then
        begin
          Canvas.Font.Bold:=true;
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
          exit;
        end;
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

