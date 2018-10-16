unit Unit0;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, StdCtrls;

function laiks(s:string):TDateTime;
function onlyAlphaNumeric(s:string):Boolean;

var
      eventList: array of TRadioButton;
      eventListID: array of string;
      evStart,evDate: TDateTime;
      evType, evStartType: string;

implementation

function laiks(s:string):TDateTime;
var
   fmt:TFormatSettings;
begin
  if (Length(s)<19) then s:='2000-01-01 00:00:00';
  fmt:=DefaultFormatSettings;
  fmt.DateSeparator:='-';
  fmt.DecimalSeparator:='.';
  fmt.LongDateFormat:='yyyy-mm-dd';
  fmt.ShortDateFormat:='yyyy-mm-dd';
  fmt.ShortTimeFormat:='hh:nn:ss';
  laiks:=StrToDateTime(Copy(s,1,19),fmt);
end;

function onlyAlphaNumeric(s: string): Boolean;
var
   an:Boolean;
   i:integer;
begin
  an:=true;
  for i:=1 to Length(s) do
      if not (s[i] in ['0'..'9','a'..'z']) then
      begin
        an:=false;
        break;
      end;
  onlyAlphaNumeric:=an;
end;

end.

