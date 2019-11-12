unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Grids, Types;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    ScrollBox1: TScrollBox;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure SetState(st: integer);
    procedure BitmapMake24Bit(const RR: TRect; const ABitmap: TBitmap);
    procedure ShowControls;

  private
    { private declarations }
    CourseEditorState: integer;
  public
    { public declarations }
    ScaleX1, ScaleX2, ScaleY1, ScaleY2: integer;
    ScaleFactor: real;
    imagefilename: string;
  end;

var
  Form2: TForm2;

resourcestring
  msc2C1 = 'Attention!';
  mst2T1 = 'Control number repeats:';
  msc2C2 = 'Remove control';
  mst2T2 = 'Are you sure to remove control?';

  cap2C1 = 'Set stations from controls';
  cap2C2 = 'Set points from controls';

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.SetState(st: integer);
begin
     CourseEditorState:=st;
end;

procedure TForm2.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  X1,Y1: integer;
begin
     X1:=trunc(X/ScaleFactor);
     Y1:=trunc(Y/ScaleFactor);
  if CourseEditorState=1 then
  begin
       StringGrid1.InsertRowWithValues(StringGrid1.RowCount,['','','','','','']);
       StringGrid1.Cells[4,StringGrid1.RowCount-1]:=IntToStr(X1);
       StringGrid1.Cells[5,StringGrid1.RowCount-1]:=IntToStr(Y1);
       Image1.Canvas.Arc(X-15,Y-15,X+15,Y+15,1,5760);
       StringGrid1.Row:=StringGrid1.RowCount-1;
  end;
  if CourseEditorState=3 then
  begin
     if ScaleX1=-1 then
     begin
        ScaleX1:=X1;
        ScaleY1:=Y1;
        Image1.Canvas.Arc(X-5,Y-5,X+5,Y+5,1,5760);
     end
     else
     if ScaleX2=-1 then
     begin
        ScaleX2:=X1;
        ScaleY2:=Y1;
        Image1.Canvas.Arc(X-5,Y-5,X+5,Y+5,1,5760);
     end;
  end;
end;

procedure TForm2.Image1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  x,y,z:integer;
  sf:real;
begin
  if Shift*[ssShift,ssCtrl]=[] then
  begin
     ScrollBox1.VertScrollBar.Position:=ScrollBox1.VertScrollBar.Position-WheelDelta;
     Handled := true;
  end;
  if Shift*[ssShift]=[ssShift] then
  begin
     ScrollBox1.HorzScrollBar.Position:=ScrollBox1.HorzScrollBar.Position-WheelDelta;
     Handled := true;
  end;
  if Shift*[ssCtrl]=[ssCtrl] then
  begin
     x:=ScrollBox1.HorzScrollBar.Position;
     y:=ScrollBox1.VertScrollBar.Position;
     sf:=ScaleFactor;
     if (ScaleFactor<3)and(WheelDelta>0) then
     begin
       ScaleFactor:=ScaleFactor*1.2;
       x:=x+trunc(MousePos.x*0.2);
       y:=y+trunc(MousePos.y*0.2);
     end;
     if (ScaleFactor>0.3)and(WheelDelta<0) then
     begin
       ScaleFactor:=ScaleFactor/1.2;
       x:=x-trunc(MousePos.x-MousePos.x/1.2);
       y:=y-trunc(MousePos.y-MousePos.y/1.2);
     end;
     if(ScaleFactor>3)or(ScaleFactor<0.3) then exit;
     Image1.Picture.LoadFromFile(imagefilename);
     BitmapMake24Bit(Rect(0,0,trunc(image1.Width*ScaleFactor),trunc(image1.Height*ScaleFactor)), Image1.Picture.Bitmap);
     ShowControls;
     ScrollBox1.HorzScrollBar.Position:=x;
     ScrollBox1.VertScrollBar.Position:=y;
     Handled := true;
  end;
end;


procedure TForm2.BitmapMake24Bit(const RR: TRect; const ABitmap: TBitmap);
var
  LTempBitmap: TBitmap;
begin
    LTempBitmap := TBitmap.Create;
    try
      LTempBitmap.PixelFormat := pf24bit;
      LTempBitmap.SetSize(RR.Width, RR.Height);
      LTempBitmap.Canvas.StretchDraw(RR, ABitmap);
      ABitmap.PixelFormat := pf24bit;
      ABitmap.SetSize(RR.Width,RR.Height);
      ABitmap.Canvas.Draw(0,0, LTempBitmap);
    finally
      FreeAndNil(LTempBitmap);
    end;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  i,j:integer;
  a:string;
begin
  for i:=1 to StringGrid1.RowCount-2 do
  begin
     a:=StringGrid1.Cells[1,i];
     for j:=i+1 to StringGrid1.RowCount-1 do
     begin
        if a=StringGrid1.Cells[1,j] then
        begin
           if MessageDlg(msc2C1, mst2T1+a, mtConfirmation,[mbOk],0) = mrOk then exit;
        end;
     end;
  end;
  ModalResult:=mrOK;
  Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
   i:integer;
begin
  if MessageDlg(msc2C2, mst2T2, mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    for i:=1 to StringGrid1.ColCount-1 do
        StringGrid1.Cells[i,StringGrid1.Row]:=StringGrid1.Cells[i,StringGrid1.RowCount-1];
    StringGrid1.RowCount:=StringGrid1.RowCount-1;
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
  Hide;
end;

procedure TForm2.Button4Click(Sender: TObject);
var
   i,j:integer;
   s:string;
   r:boolean;
begin
  if CourseEditorState=1 then
  begin
     for i:=1 to StringGrid1.RowCount-1 do
     begin
          StringGrid1.Cells[3,i]:=StringGrid1.Cells[1,i];
     end;
  end;
  if CourseEditorState=2 then
  begin
     for i:=1 to StringGrid1.RowCount-1 do
     begin
          s:=Copy(StringGrid1.Cells[1,i],1,Length(StringGrid1.Cells[1,i])-1);
          r:=true;
          for j:=1 to Length(s) do
          begin
               if not (s[j] in ['0'..'9']) then r:=false;
          end;
          if r then
          begin
               StringGrid1.Cells[2,i]:=s;
          end;
     end;
  end;
  if CourseEditorState=3 then
  begin

  end;
end;

procedure TForm2.ShowControls;
var
   d_mapx, d_mapy:string;
   i:integer;
begin
  DecimalSeparator:='.';
  Image1.Canvas.Pen.Color := clRed;
  Image1.Canvas.Pen.Width := 5;
  for i:=1 to StringGrid1.RowCount-1 do
  begin
     d_mapx:=StringGrid1.Cells[4,i];
     d_mapy:=StringGrid1.Cells[5,i];
     if (d_mapx<>'') and (d_mapy<>'') then
        Image1.Canvas.Arc(Round(StrToFloat(d_mapx)*ScaleFactor)-15,Round(StrToFloat(d_mapy)*ScaleFactor)-15,Round(StrToFloat(d_mapx)*ScaleFactor)+15,Round(StrToFloat(d_mapy)*ScaleFactor)+15,1,5760);
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
     ScaleFactor:=1.0;
     ScaleX1:=-1;
     ScaleX2:=-1;
     ShowControls;
     if CourseEditorState=1 then
     begin
          StringGrid1.Visible:=true;
          StringGrid1.ColWidths[0]:=0;
          StringGrid1.ColWidths[2]:=0;
          StringGrid1.ColWidths[3]:=150;
          StringGrid1.ColWidths[4]:=50;
          StringGrid1.ColWidths[5]:=50;
          Button1.Visible:=true;
          Button2.Visible:=true;
          Button4.Visible:=true;
          Button4.Caption:=cap2C1;
          Label1.Visible:=false;
          Edit1.Visible:=false;
          StringGrid1.Columns.Items[1].ReadOnly:=false;
     end;

     if CourseEditorState=2 then
     begin
          StringGrid1.Visible:=true;
          StringGrid1.ColWidths[2]:=50;
          StringGrid1.ColWidths[3]:=0;
          StringGrid1.ColWidths[4]:=0;
          StringGrid1.ColWidths[5]:=0;
          StringGrid1.ColWidths[0]:=0;
          Button4.Caption:=cap2C2;
          Button1.Visible:=true;
          Button4.Visible:=true;
          Button2.Visible:=false;
          Label1.Visible:=false;
          Edit1.Visible:=false;
          StringGrid1.Columns.Items[1].ReadOnly:=true;
     end;

     if CourseEditorState=3 then
     begin
        StringGrid1.Visible:=false;
        Label1.Visible:=true;
        Edit1.Visible:=true;
        Button1.Visible:=true;
        Button4.Visible:=false;
        Button2.Visible:=false;
     end;
end;

end.

