unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form8: TForm8;

implementation

{$R *.lfm}

{ TForm8 }

procedure TForm8.Timer1Timer(Sender: TObject);
begin
  Label1.Caption:=FormatDateTime('hh:nn:ss',Now);
end;

end.

