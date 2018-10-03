unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ValEdit, Grids;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    StringGrid1: TStringGrid;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { private declarations }
  public
  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }
procedure TForm5.FormCreate(Sender: TObject);
begin

end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  Hide;
end;

end.

