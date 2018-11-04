unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Unit0, Classes, SysUtils, process, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, AsyncProcess;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Process1: TProcess;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { private declarations }
  public
    fname: string;
  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form3.Hide;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
       Process1.Parameters.Clear;
       {$IFDEF Windows}
       Process1.Executable:='notepad';
       Process1.Parameters.Add('/p');
       {$ENDIF}
       {$IFDEF UNIX}
       Process1.Executable:='lp';
       {$ENDIF}
       Process1.Parameters.Add(fname);
       Process1.Active:=true;
       Process1.Execute;
       Process1.Active:=false;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
     Memo1.Lines.SaveToFile(fname);
end;

end.

