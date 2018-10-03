unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  siMode = (siReadConfig,siGetTime, siReadSI6Data, siReadSI5Data, siBeep,
  siReadSI8Data, siReaderMode, siSwitchOff, siRead6starMode, siGetStationMode,
  siGetStationCode, siGetMemBP, siGetMemOF, siReadMem, siClearBackup,
  siSetStationCode, siSetStationMode, siSetTime);

function crc(n:integer; s: array of byte):word;


implementation

function crc(n:integer; s: array of byte):word;
var
  i,j,k: integer;
  tmp: integer;
  val: integer;
  b: word;
begin
  tmp := word((s[0] shl 8) or (s[1] and $FF));
  k:=2;
  if(n > 2) then begin
  	for i:=(n div 2) downto 1 do
  	begin
  	    if (i > 1) then begin
  	    	val := integer(((s[k]) shl 8) or (s[k+1] and $FF));
                k:=k+2;
            end
            else
  	    	if n mod 2=1 then
  	    		val := s[n-1] shl 8
  	    	else
  		    	val := 0;

  	    for j := 0 to 15 do begin
                b:=tmp and $8000;
                if (b <> 0) then begin
  		    tmp := tmp shl 1;
                    b:=val and $8000;
  		    if (b <> 0) then
  			tmp:=tmp+1;
  		    tmp:=tmp xor $8005;
  		end
                else begin
  		    tmp:=tmp shl 1;
                    b:=val and $8000;
  		    if (b<> 0) then
  			tmp:=tmp+1;
  		end;
  		val:=val shl 1;
  	    end;
  	end;
  end;
  crc:=tmp and $FFFF;
end;

end.

