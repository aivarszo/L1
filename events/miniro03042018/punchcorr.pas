program punchcorr;
 
uses
 Sysutils;
 
var
  tfIn: Text;
  tfOut: Text;
  tfPIn: Text;
  fs,s,ss,ss1: string;
  ost,dst: TDateTime;
 
begin	
  ost:=StrToDateTime('04-03-2018 10:00:00');
  Assign(tfPIn, 'all_p');
  reset(tfPIn);
  while not eof(tfPIn) do
  begin
    Readln(tfPIn,fs);
    writeln(fs);
    Assign(tfIn, 'punches/'+fs);
    Assign(tfOut, 'corr_punches/'+fs);
    reset(tfIn);
    rewrite(tfOut);
    while not eof(tfIn) do
    begin 
      readln(tfIn,s);
      if Pos('=',s)>0 then
      begin
        ss:=Copy(s,Pos('=',s)+1,100);
        ss1:=Copy(ss,9,2)+'-'+Copy(ss,6,2)+'-'+Copy(ss,1,4)+' '+Copy(ss,12,100);
        if s[1]='S' then
        begin
          dst:=StrToDateTime(ss1)-ost;
        end;
        Writeln (tfOut,Copy(s,1,Pos('=',s))+'2018-03-04 '+FormatDateTime('hh:nn:ss',StrToDateTime(ss1)-dst));
      end
      else writeln(tfOut,s);
    end;
    Close(tfOut);
    Close(tfIn);
  end;
  close(tfPIn); 
 
end.


