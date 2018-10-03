unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  x:real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Randomize;
  x:=Random(500);
  Label1.Caption:='Jā';
  Timer1.Interval:=50;
  ProgressBar1.Position:=0;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position:=ProgressBar1.Position+1;
  x:=x-random(50);
  if x<0 then
  begin
    x:=Random(1000);
    if Label1.Caption='Jā' then Label1.Caption:='Nē' else Label1.Caption:='Jā'
  end;
  if ProgressBar1.Position=ProgressBar1.Max then Timer1.Interval:=0;
end;

end.

