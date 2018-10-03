unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Unit0, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TForm3.Button1Click(Sender: TObject);
begin
     Memo1.Lines.SaveToFile(fname);
end;

end.

