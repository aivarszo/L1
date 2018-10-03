unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, CheckLst,
  ExtCtrls, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CheckListBox1: TCheckListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    group_s:string;
  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
var
  i:integer;
begin
     group_s:='';
     for i:=0 to CheckListBox1.Count-1 do
         if CheckListBox1.Checked[i] then
            if group_s='' then group_s:=CheckListBox1.Items[i] else group_s:=group_s+','+CheckListBox1.Items[i];
     ModalResult:=mrOK;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

end.

