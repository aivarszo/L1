unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Unit0, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, LazSerial,
  jvCSVBase, Classes, SysUtils, FileUtil, DateTimePicker, Forms,
  Controls, Graphics, Dialogs, ComCtrls, Grids, ExtCtrls, StdCtrls, FileCtrl,
  ValEdit, Types, DOM, XMLRead, XMLWrite, Math, LCLTranslator, Menus,
  LazHelpHTML, LazSynaSer, LR_Class, LR_Desgn, LR_Barc, LR_DSet, LR_RRect,
  LR_Shape, LR_ChBox, LR_PGrid, Lr_CrossTab;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TToggleBox;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button2t: TButton;
    Button1t: TButton;
    Button1m1: TButton;
    Button2m: TButton;
    Button1m: TButton;
    Button1g: TButton;
    Button2m1: TButton;
    Button3: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button3m: TButton;
    Button2g: TButton;
    Button3g: TButton;
    Button4: TButton;
    Button4g: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckGroup1: TCheckGroup;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    FileListBox1: TFileListBox;
    frReport1: TfrReport;
    frUserDataset1: TfrUserDataset;
    GroupBox1: TGroupBox;
    HTMLBrowserHelpViewer1: THTMLBrowserHelpViewer;
    HTMLHelpDatabase1: THTMLHelpDatabase;
    jvCSVBase1: TjvCSVBase;
    jvCSVEdit1: TjvCSVEdit;
    jvCSVEdit10: TjvCSVEdit;
    jvCSVEdit2: TjvCSVEdit;
    jvCSVEdit3: TjvCSVEdit;
    jvCSVEdit4: TjvCSVEdit;
    jvCSVEdit5: TjvCSVEdit;
    jvCSVEdit6: TjvCSVEdit;
    jvCSVEdit7: TjvCSVEdit;
    jvCSVEdit8: TjvCSVEdit;
    jvCSVEdit9: TjvCSVEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LazSerial1: TLazSerial;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    Memo2: TMemo;
    MenuItem1: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    ScrollBox1: TScrollBox;
    StringGrid1: TValueListEditor;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    StringGrid7: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    ToggleBox1: TToggleBox;
    ToggleBox2: TToggleBox;
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Change(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    function CheckMapFile(fname:string):boolean;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button1gClick(Sender: TObject);
    procedure Button1m1Click(Sender: TObject);
    procedure Button1tClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button2gClick(Sender: TObject);
    procedure Button2m1Click(Sender: TObject);
    procedure Button2mClick(Sender: TObject);
    procedure Button2tClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button3gClick(Sender: TObject);
    procedure Button1mClick(Sender: TObject);
    procedure Button3mClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button4gClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure LazSerial1RxData(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure StringGrid1SelectEditor(Sender: TObject; aCol, aRow: Integer; var Editor: TWinControl);
    procedure StringGrid1SetEditText(Sender: TObject; ACol, ARow: Integer; const Value: string);
    procedure StringGrid2SelectEditor(Sender: TObject; aCol, aRow: Integer; var Editor: TWinControl);
    procedure StringGrid2SetEditText(Sender: TObject; ACol, ARow: Integer; const Value: string);
    procedure StringGrid4SelectEditor(Sender: TObject; aCol, aRow: Integer; var Editor: TWinControl);
    procedure StringGrid4SetEditText(Sender: TObject; ACol, ARow: Integer; const Value: string);
    procedure StringGrid5DrawCell(Sender: TObject; aCol, aRow: Integer; aRect: TRect; aState: TGridDrawState);
    procedure StringGrid5Click(Sender: TObject);
    procedure StringGrid5SelectEditor(Sender: TObject; aCol, aRow: Integer; var Editor: TWinControl);
    procedure StringGrid5SetEditText(Sender: TObject; ACol, ARow: Integer; const Value: string);
    procedure saveEverything();
    procedure readEvent();
    procedure readTeams();
    procedure readRunners();
    procedure readGroups();
    procedure readCourses();
    procedure ToggleBox2Change(Sender: TObject);
    procedure writeEvent();
    procedure loadEvents();
    procedure TeamPDFResult();
    procedure frReport1GetValue(const ParName: String; var ParValue: Variant);
    procedure frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frUserDataset1First(Sender: TObject);
    procedure frUserDataset1Next(Sender: TObject);
    procedure resultsToHTML();
    procedure resultsToScreen();
    function distanceKP(kp1,kp2: string):integer;
    procedure prepareForms(tips:string);
    procedure processPunch(cardNumber:longint);
    procedure TabSheet3OnExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure StringGrid2Click(Sender: TObject);
    procedure StringGrid3Click(Sender: TObject);
    procedure StringGrid4Click(Sender: TObject);
    procedure StringGrid6Click(Sender: TObject);
    procedure ToggleBox1Change(Sender: TObject);
    procedure BitmapMake24Bit(const ABitmap: TBitmap);
    procedure TeamGroupEditClick(r: integer);
    procedure StringGrid3DrawCell(Sender: TObject; aCol, aRow: Integer; aRect: TRect; aState: TGridDrawState);
    procedure StringGrid4DrawCell(Sender: TObject; aCol, aRow: Integer; aRect: TRect; aState: TGridDrawState);
    procedure writeReader(si:siMode);
    procedure readSI6Data(bb:byte);
    procedure readSI8Data(bb:byte);
    procedure readSI5Data();
    procedure beep(bn:byte);
    procedure setReaderMode(bn:byte);

  private
    InitialValue: string;

  public
end;

type onesplit=record
  kp_to, kp_from:string;
  time:TDateTime;
  delta_t:string;
  points:string;
end;

type teamsplits=record
  team:string;
  splits:array of onesplit;
end;

var
  Form1: TForm1;

  blockNr: byte; //identa nolasīšanai
  punchCount: integer; //identa nolasīšanai
  currT,rStart,rDate: TDateTime; //identa nolasīšanai
  startTime,finishTime:integer; //identa nolasīšanai
  extraBackup: boolean; //ja stacijas backups "dzēsts"

  prevTime: TDateTime; //LazReport vajadzībām
  prevKP: string; //LazReport vajadzībām
  totalDist: integer; //LazReport vajadzībām
  lp: longint; //LazReport vajadzībām
  allSplits:array of teamsplits;
  bestSplits:array of onesplit;

  siReader: integer;
  siBackupMemP, siBackupMemC:array[0..3]of byte;
  eventList: array of TRadioButton;
  cardNumber:longint;
  siReaderData:array of byte;

resourcestring
  mscC1 = 'SI reader open';
  mstT1 = 'Please, open some event and set siport!';
  mscC2 = 'Team result';
  mstT2 = 'No punches in SI ';
  mstT2a = #10#13'Check SI card record!';
  mscC3 = 'Show ident';
  mstT3 = 'Ident file doesn''t exist. Create?';
  mscC4 = 'Import team';
  mstT4 = 'Append new team first, change(or not) team ID and import into it';
  mscC5 = 'Import course';
  mstT5 = 'Map file must be set (96 DPI)!';
  mscC6 = 'Remove group';
  mstT6 = 'Are you sure to remove group?';
  mstT6a = 'Group is in use by ';
  mscC7 = 'Delete team';
  mstT7 = 'Are you sure to delete team?';
  mscC8 = 'Delete course';
  mstT8 = 'Are you sure to delete course?';
  mscC9 = 'Save changes';
  mstT9 = 'Found Team ID duplicate: ';
  mscC10 = 'Remove team member';
  mstT10 = 'Are you sure to remove team member?';
  mscC11 = 'Set controls';
  mstT11 = 'Please, select valid map picture and set map scale!';
  mstT11a = 'Please, select valid map picture!';
  mscC12 = 'Save backup';
  mstT12 = 'Backup saved!';
  mscC13 = 'SI Reader';
  mstT13 = 'No answer...';
  mscC14 = 'Extra backup read';
  mstT14 = 'Continue?';
  mscC15 = 'Station backup';
  mstT15 = 'Station backup is read!';
  mscC16 = 'Station backup read';
  mstT16 = 'Backup memory is empty, read anyway?';
  mscC17 = 'Backup memory';
  mstT17 = 'Backup memory cleared';
  mscC18 = 'Import data';
  mstT18 = 'Do you want to import ident data?'#13#10'(from SIReader csv file event.csv)';
  mstT18a = 'There is no event.csv in event directory';
  mstT18b = 'Do you want to import ident data?'#13#10'(from SIME csv file splits.csv)';
  mstT18c = 'There is no splits.csv in event directory';
  mstT18d = 'Do you want to import event data?'#13#10'(from rogaining.lv csv file data.csv)';
  mstT18e = 'There is no data.csv in event directory';
  mscC19 = 'Create Event';
  mstT19 = 'Event already exists!';
  mstT19a = 'eventID field must contain event folder name and eventtype must be selected';
  mscC20 = 'Data not saved';
  mstT20 = 'Current event is not saved! Save?';

  capC1 = 'SI Reader ready!';
  capC2 = 'NoShowAll';
  capC3 = 'Show';
  capC4 = 'NoShow';
  capC5 = 'ShowAll';
  capC6 = 'Raw file is written!';
  capC8 = 'SI card ';
  capC8a = ' inserted';
  capC8b = ' removed';
  capC9 = 'Error : ';
  capC10 = 'Assigning SI cards...';
  capC11 = 'Reading SI cards...';
  b25cap1 = 'Hide results';
  b25cap2 = 'Show results';
  b1m1cap1 = 'Append member to ';

implementation

{$R *.lfm}
const
  si1:array[0..3] of byte=($83,$02,$74,$01); //get configuration
  si2:array[0..1] of byte=($f7,$00); //get time
  si2w:array[0..8] of byte=($f6,$07,$00,$00,$00,$00,$00,$00,$00); //set time
  si3:array[0..1] of byte=($b1,$00); //get SI5 data
  si4:array[0..1] of byte=($f9,$01); //beep
  si5:array[0..1] of byte=($e1,$01); //get SI6 data
  si6:array[0..1] of byte=($ef,$01); //get SI8,... data
  si7:array[0..1] of byte=($f0,$01); //set reader M/S mode
  si8:array[0..2] of byte=($78,$01,$00); //switch off station
  si9:array[0..3] of byte=($83,$02,$33,$01); //SI6*
  si10:array[0..3] of byte=($83,$02,$71,$01); //get station mode
  si10w:array[0..3] of byte=($82,$02,$71,$00); //set station mode
  si11:array[0..3] of byte=($83,$02,$72,$01); //get station code
  si11w:array[0..4] of byte=($82,$03,$72,$00,$3f); //set station code
  si12:array[0..3] of byte=($83,$02,$1C,$07); //get station backup memory pointer
  si13:array[0..3] of byte=($83,$02,$3D,$01); //check station backup memory overflow
  si14:array[0..1] of byte=($81,$04); //read station backup memory
  si15:array[0..1] of byte=($F5,$00); //clear station backup memory

  capC7 = 'card: ';

{ TForm1 }

//aprēķina attālumu starp 2 KP
function TForm1.distanceKP(kp1,kp2: string):integer;
var
  i:integer;
  x1,x2,y1,y2:float;
begin
  x1:=0;y1:=0;x2:=0;y2:=0;
  DecimalSeparator:='.';
  for i:=1 to Form2.StringGrid1.RowCount-1 do
  begin
    if Form2.StringGrid1.Cells[1,i]=kp1 then
    begin
      x1:=StrToFloat(Form2.StringGrid1.Cells[4,i]);
      y1:=StrToFloat(Form2.StringGrid1.Cells[5,i]);
    end;
    if Form2.StringGrid1.Cells[1,i]=kp2 then
    begin
      x2:=StrToFloat(Form2.StringGrid1.Cells[4,i]);
      y2:=StrToFloat(Form2.StringGrid1.Cells[5,i]);
    end;
  end;
  if (x1=0)or(x2=0)or(y1=0)or(y2=0)or(StringGrid6.Cells[2,1]='') then distanceKP:=0
    else distanceKP:=Round(Sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))*StrToFloat(StringGrid6.Cells[2,1]));
end;

//sagatavo eventa tipam atbilstošas formas
procedure TForm1.prepareForms(tips:string);
var
  i:integer;
begin
  for i:=0 to PageControl1.PageCount-1 do
  begin
         PageControl1.Page[i].TabVisible:=true;
  end;
  TabSheet7.TabVisible:=false;
  TabSheet8.TabVisible:=false;
  TabSheet9.TabVisible:=false;

  StringGrid3.ColWidths[7]:=0;
  StringGrid3.ColWidths[8]:=0;

  StringGrid7.ColWidths[1]:=200;
  StringGrid7.ColWidths[7]:=0;
  StringGrid7.ColWidths[8]:=0;

  if tips='rogain' then
  begin
    StringGrid3.ColWidths[6]:=0;
    Button2.Visible:=false;
    Button3.Visible:=false;
    Button3g.Visible:=False;
    StringGrid4.ColWidths[4]:=0;
    StringGrid5.ColWidths[2]:=0;
    StringGrid5.ColWidths[3]:=0;
    StringGrid5.ColWidths[4]:=0;
    StringGrid5.ColWidths[5]:=0;
    if StringGrid6.Cells[0,1]='' then StringGrid6.Cells[0,1]:='rog';
    StringGrid6.Columns.Items[0].ReadOnly:=true;
    StringGrid5.Columns.Items[6].ReadOnly:=true;
    Button1.Caption:=capC2;
    GroupBox1.Visible:=true;
  end;
  if tips='individual' then
  begin

  end;
end;

//pieslēdzas/atslēdzas SI lasītājam
procedure TForm1.ToggleBox1Change(Sender: TObject);
begin
     if (StringGrid1.Values['eventID']='')or(StringGrid1.Values['siport']='') then
     begin
       MessageDlg(mscC1,mstT1,mtConfirmation,[mbOK],0);
       exit;
     end;
     if siReader=0 then
     begin
          LazSerial1.Device:=StringGrid1.Values['siport'];
            LazSerial1.Close;
            LazSerial1.Open;
            TabSheet8.TabVisible:=true;
            TabSheet9.TabVisible:=true;
            RadioGroup2.ItemIndex:=0;
            siReader:=1;
            Label2.Caption:=capC1;
            Memo1.Clear;
            ToggleBox1.Color:=clGreen;
            ToggleBox1.Font.Bold:=true;
            ToggleBox2.Visible:=true;
     end
     else begin
       siReader:=0;
       TabSheet8.TabVisible:=false;
       TabSheet9.TabVisible:=false;
       LazSerial1.Close;
       ToggleBox1.Color:=clRed;
       ToggleBox1.Font.Bold:=false;
       ToggleBox2.Visible:=false;
     end;
end;

//lasa eventa datus
procedure TForm1.readEvent();
var
  fname:string;
  Doc: TXMLDocument;
  i:integer;
begin
  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/event_data';
  if FileExists(fname) then
  begin
    ReadXMLFile(Doc, fname);
    for i:=0 to StringGrid1.RowCount-1 do
        if Doc.DocumentElement.FindNode(StringGrid1.Keys[i]) <> nil then
           StringGrid1.Values[StringGrid1.Keys[i]]:=Doc.DocumentElement.FindNode(StringGrid1.Keys[i]).TextContent;
    Doc.Free;

    evType:=StringGrid1.Values['eventtype'];
    evStartType:=StringGrid1.Values['starttype'];
    if StringGrid1.Values['starttime']<>'' then
    begin
       evStart:=laiks(StringGrid1.Values['starttime']);
       evDate:=laiks(Copy(StringGrid1.Values['starttime'],0,10)+' 00:00:00');
    end;
  end;
end;

//lasa komandu datus
procedure TForm1.readTeams();
var
  i:integer;
  fname:string;
  Doc: TXMLDocument;
  dnd,dnd1,dnv: TDOMNode;
  tm1: TStringList;
  ss: array[0..6] of string;
begin
  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/team_data';
  if FileExists(fname) then
  begin
    ReadXMLFile(Doc, fname);
    StringGrid2.RowCount:=1;
    StringGrid3.RowCount:=1;

    dnd:=Doc.DocumentElement.FirstChild;
    ss[6]:=' R';
    tm1:=TStringList.Create;
    while Assigned(dnd) do
    begin
        dnd1:=dnd.FirstChild;
        for i:=0 to 5 do ss[i]:='';
        while Assigned(dnd1) do
        begin
             if dnd1.NodeName='bib' then
                ss[0]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='team' then
                ss[1]:=dnd1.ChildNodes.Item[0].NodeValue;
             if (dnd1.NodeName='start')and(dnd1.ChildNodes.Count>0) then
                ss[2]:=dnd1.ChildNodes.Item[0].NodeValue;
             if (dnd1.NodeName='status')and(dnd1.ChildNodes.Count>0) then
                ss[4]:=dnd1.ChildNodes.Item[0].NodeValue;
             if (dnd1.NodeName='group') and (dnd1.ChildNodes.Count>0) then
                if ss[3]='' then ss[3]:=dnd1.ChildNodes.Item[0].NodeValue
                   else ss[3]:=ss[3]+','+dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='member' then
             begin
               dnv:=dnd1.FirstChild;
               while Assigned(dnv) do
               begin
                    if dnv.NodeName='runner' then
                       if dnv.ChildNodes.Count>0 then
                          tm1.Append(dnv.ChildNodes.Item[0].NodeValue)
                       else
                           tm1.Append('');
                    if dnv.NodeName='card' then
                       if dnv.ChildNodes.Count>0 then
                          tm1.Append(dnv.ChildNodes.Item[0].NodeValue)
                       else
                           tm1.Append('');
                    if dnv.NodeName='course' then
                       if dnv.ChildNodes.Count>0 then
                          tm1.Append(dnv.ChildNodes.Item[0].NodeValue)
                       else
                           tm1.Append('');
                   dnv:=dnv.NextSibling;
               end;
               dnv.Free;
             end;
             dnd1:=dnd1.NextSibling;
        end;
        StringGrid2.InsertRowWithValues(StringGrid2.RowCount,ss);
        StringGrid2.Objects[5,StringGrid2.RowCount-1]:=TStringList.Create;
        (StringGrid2.Objects[5,StringGrid2.RowCount-1] as TStringList).AddStrings(tm1);
        tm1.Clear;

        dnd1.Free;
        dnd:=dnd.NextSibling;
    end;
    dnd.Free;
    Doc.Free;
    tm1.Free;
  end;
  StringGrid2.ColWidths[5]:=0;
  StringGrid2.Columns.Items[0].ReadOnly:=true;
  StringGrid2.Columns.Items[3].ReadOnly:=true;
  StringGrid2.Columns.Items[6].ReadOnly:=true;
  SetLength(allSplits,StringGrid2.RowCount);
  for i:=1 to StringGrid2.RowCount-1 do allSplits[i-1].team:=StringGrid2.Cells[0,i];
end;

//lasa memberu datus
procedure TForm1.readRunners();
var
  i:integer;
  fname:string;
  Doc: TXMLDocument;
  dnd,dnd1: TDOMNode;
  ss1: array[0..7] of string;

begin
  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/runner_data';
  if FileExists(fname) then
  begin
    ReadXMLFile(Doc, fname);
    StringGrid4.RowCount:=1;

    dnd:=Doc.DocumentElement.FirstChild;
    while Assigned(dnd) do
    begin
        dnd1:=dnd.FirstChild;
        for i:=0 to 7 do ss1[i]:='';
        while Assigned(dnd1) do
        begin
             if dnd1.NodeName='id' then
                ss1[0]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='name' then
                if dnd1.ChildNodes.Count>0 then ss1[1]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='sex' then
                if dnd1.ChildNodes.Count>0 then ss1[5]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='birth' then
                if dnd1.ChildNodes.Count>0 then ss1[6]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='country' then
                if dnd1.ChildNodes.Count>0 then ss1[7]:=dnd1.ChildNodes.Item[0].NodeValue;
             dnd1:=dnd1.NextSibling;
        end;
        StringGrid4.InsertRowWithValues(StringGrid4.RowCount,ss1);
        dnd1.Free;
        dnd:=dnd.NextSibling;
    end;
    dnd.Free;
    Doc.Free;
  end;
end;

//lasa grupu datus
procedure TForm1.readGroups();
var
  i:integer;
  fname:string;
  Doc: TXMLDocument;
  dnd,dnd1: TDOMNode;
  ss2: array[0..6] of string;
begin
  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/group_data';
  if FileExists(fname) then
  begin
    ReadXMLFile(Doc, fname);
    StringGrid5.RowCount:=1;

    dnd:=Doc.DocumentElement.FirstChild;
    while Assigned(dnd) do
    begin
        dnd1:=dnd.FirstChild;
        for i:=0 to 6 do ss2[i]:='';
        ss2[6]:=capC3;
        while Assigned(dnd1) do
        begin
             if dnd1.NodeName='id' then
                if dnd1.ChildNodes.Count>0 then ss2[0]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='group' then
                if dnd1.ChildNodes.Count>0 then ss2[1]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='start' then
                if dnd1.ChildNodes.Count>0 then ss2[2]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='finish' then
                if dnd1.ChildNodes.Count>0 then ss2[3]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='late' then
                if dnd1.ChildNodes.Count>0 then ss2[4]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='course' then
                if dnd1.ChildNodes.Count>0 then ss2[5]:=dnd1.ChildNodes.Item[0].NodeValue;
             dnd1:=dnd1.NextSibling;
        end;
        StringGrid5.InsertRowWithValues(StringGrid5.RowCount,ss2);
        dnd1.Free;
        dnd:=dnd.NextSibling;
    end;
  dnd.Free;
  Doc.Free;
  end;
end;

//lasa distanču un KP datus
procedure TForm1.readCourses();
var
  i,j: integer;
  Doc: TXMLDocument;
  fname: string;
  dnd,dnd1,dnv: TDOMNode;
  ss2: array[0..5] of string;
  ss3: array[0..3] of string;
  tm1: TStringList;
begin
  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/course_data';
  if FileExists(fname) then
  begin
    ReadXMLFile(Doc, fname);
    StringGrid6.RowCount:=1;
    Form2.StringGrid1.RowCount:=1;

    dnd:=Doc.DocumentElement.FirstChild;
    tm1:=TStringList.Create;
    while Assigned(dnd) do
    begin
         if dnd.NodeName='course' then
         begin
             dnd1:=dnd.FirstChild;
             for i:=0 to 3 do ss3[i]:='';
             while Assigned(dnd1) do
             begin
                  if dnd1.NodeName='id' then
                     if dnd1.ChildNodes.Count>0 then ss3[0]:=dnd1.ChildNodes.Item[0].NodeValue;
                  if dnd1.NodeName='map' then
                     if dnd1.ChildNodes.Count>0 then ss3[1]:=dnd1.ChildNodes.Item[0].NodeValue;
                  if dnd1.NodeName='mperpix' then
                     if dnd1.ChildNodes.Count>0 then ss3[2]:=dnd1.ChildNodes.Item[0].NodeValue;
                  if dnd1.NodeName='cp' then
                  begin
                    dnv:=dnd1.FirstChild;
                    while Assigned(dnv) do
                    begin
                         if dnv.NodeName='cp_id' then
                            if dnv.ChildNodes.Count>0 then
                               tm1.Append(dnv.ChildNodes.Item[0].NodeValue)
                            else
                                tm1.Append('');
                         if dnv.NodeName='cp_points' then
                            if dnv.ChildNodes.Count>0 then
                               tm1.Append(dnv.ChildNodes.Item[0].NodeValue)
                            else
                                tm1.Append('');
                         if dnv.NodeName='cp_ord' then
                            if dnv.ChildNodes.Count>0 then
                               tm1.Append(dnv.ChildNodes.Item[0].NodeValue)
                            else
                                tm1.Append('');
                        dnv:=dnv.NextSibling;
                    end;
                    dnv.Free;
                  end;
                  dnd1:=dnd1.NextSibling;
             end;
             StringGrid6.InsertRowWithValues(StringGrid6.RowCount,ss3);
             StringGrid6.Objects[3,StringGrid6.RowCount-1]:=TStringList.Create;
             (StringGrid6.Objects[3,StringGrid6.RowCount-1] as TStringList).AddStrings(tm1);
             tm1.Clear;
             dnd1.Free;
        end;
        if dnd.NodeName='control' then
        begin
             dnd1:=dnd.FirstChild;
             for i:=0 to 5 do ss2[i]:='';
             while Assigned(dnd1) do
             begin
                  if dnd1.NodeName='id' then
                     if dnd1.ChildNodes.Count>0 then ss2[1]:=dnd1.ChildNodes.Item[0].NodeValue;
                  if dnd1.NodeName='mapx' then
                     if dnd1.ChildNodes.Count>0 then ss2[4]:=dnd1.ChildNodes.Item[0].NodeValue;
                  if dnd1.NodeName='mapy' then
                     if dnd1.ChildNodes.Count>0 then ss2[5]:=dnd1.ChildNodes.Item[0].NodeValue;
                  if dnd1.NodeName='stations' then
                     if dnd1.ChildNodes.Count>0 then ss2[3]:=dnd1.ChildNodes.Item[0].NodeValue;
                  dnd1:=dnd1.NextSibling;
             end;
             Form2.StringGrid1.InsertRowWithValues(Form2.StringGrid1.RowCount,ss2);
             dnd1.Free;
        end;
        dnd:=dnd.NextSibling;
    end;
    dnd.Free;
    Doc.Free;
    tm1.Free;
  end;
  StringGrid6.ColWidths[3]:=0;
end;

//pārslēdz lasītāja uztveres režīmu
procedure TForm1.ToggleBox2Change(Sender: TObject);
begin
  if ToggleBox2.Checked then
  begin
    ToggleBox2.Color:=clRed;
    ToggleBox2.Font.Color:=clWhite;
    ToggleBox2.Caption:=capC10;
  end
  else
  begin
    ToggleBox2.Color:=clGreen;
    ToggleBox2.Font.Color:=clWhite;
    ToggleBox2.Caption:=capC11;
  end;
end;

//pārbauda vai saglabāts events un saglabā
procedure TForm1.saveEverything();
begin
  if (Button5.Font.Bold)or(Button1m.Font.Bold)or
      (Button4.Font.Bold)or(Button4g.Font.Bold)or
      (Button6.Font.Bold) then
      begin
        if MessageDlg(mscC20,mstT20,mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          Button5Click(Button5);
          Button1mClick(Button1m);
          Button4Click(Button4);
          Button4gClick(Button4g);
          Button6Click(Button6);
        end;
      end;
end;

//atver eventu, ielasa datus, sakārto tabulas
procedure TForm1.RadioGroup1Click(Sender: TObject);
var
  i,j,k,kk: integer;
  p: boolean;
begin
  saveEverything;
  readEvent;
  readTeams;
  readRunners;
  readGroups();
  readCourses();

  for i:=1 to StringGrid4.RowCount-1 do
  begin
      p:=false;
      for j:=1 to StringGrid2.RowCount-1 do
      begin
           k:=0;
           while (StringGrid2.Objects[5,j] as TStringList).Count>k do
           begin
               if (StringGrid2.Objects[5,j] as TStringList).Strings[k]=StringGrid4.Cells[0,i] then
               begin
                    StringGrid4.Cells[2,i]:=StringGrid2.Cells[0,j];
                    StringGrid4.Cells[3,i]:=(StringGrid2.Objects[5,j] as TStringList).Strings[k+1];
                    StringGrid4.Cells[4,i]:=(StringGrid2.Objects[5,j] as TStringList).Strings[k+2];
                    StringGrid4.Cells[8,i]:='-'; // vai ir punchfails
                    p:=true;

                    if FileExists('punches_9999/'+StringGrid4.Cells[3,i]+'_9999') then
                    begin
                        RenameFile('punches_9999/'+StringGrid4.Cells[3,i]+'_9999', 'events/'+eventList[RadioGroup1.ItemIndex].Caption+'/punches/'+StringGrid4.Cells[3,i]+'_'+StringGrid4.Cells[2,i]);
                    end;
                    if FileExists('events/'+eventList[RadioGroup1.ItemIndex].Caption+'/punches/'+StringGrid4.Cells[3,i]+'_'+StringGrid4.Cells[2,i]) then
                    begin
                        StringGrid4.Cells[8,i]:='+';
                    end;

                    break;
               end;
               k:=k+3;
           end;
           if p then break;
      end;
  end;
  StringGrid4.Columns.Items[0].ReadOnly:=true;
  StringGrid4.Columns.Items[2].ReadOnly:=true;
  StringGrid4.Columns.Items[8].ReadOnly:=true;

  for i:=1 to StringGrid2.RowCount-1 do
  begin
    k:=0;
    kk:=0;
    for j:=1 to StringGrid4.RowCount-1 do
    begin
         if StringGrid4.Cells[2,j]=StringGrid2.Cells[0,i] then
         begin
              kk:=kk+1;
              if StringGrid4.Cells[8,j]='+' then k:=k+1;
         end;
    end;
    if k=kk then StringGrid2.Cells[4,i]:='OK' else StringGrid2.Cells[4,i]:='DNF';
  end;

  StringGrid5.ColWidths[0]:=0;
  StringGrid4.ColWidths[8]:=0;

  if StringGrid2.RowCount>1 then
  begin
    StringGrid2.Row:=1;
    StringGrid2.Col:=0;
    StringGrid2Click(StringGrid2);
  end;

  Button1m1.Visible:=False;
  Button5.Visible:=True;
  MenuItem23.Enabled:=True;
  MenuItem9.Enabled:=True;
  MenuItem25.Enabled:=True;
  StringGrid1.Visible:=True;

  prepareForms(StringGrid1.Values['eventtype']);

end;

//komandas grupu rediģēšana
procedure TForm1.TeamGroupEditClick(r: integer);
var
  cb:array of TCheckBox;
  i: integer;
begin
  Form4.CheckListBox1.Clear;
  SetLength(cb,StringGrid5.RowCount-1);
  for i:=1 to StringGrid5.RowCount-1 do
  begin
      cb[i-1]:=TCheckBox.Create(Form4.CheckListBox1);
      Form4.CheckListBox1.AddItem(StringGrid5.Cells[1,i],cb[i-1]);
      if Pos(StringGrid5.Cells[1,i],StringGrid2.Cells[3,r])>0 then
         Form4.CheckListBox1.Checked[i-1]:=true;
  end;
  Form4.Caption:=StringGrid2.Cells[0,r];
  if Form4.ShowModal=mrOK then
  begin
     StringGrid2.Cells[3,r]:=Form4.group_s;
     StringGrid2.Col:=0;
     r:=StringGrid2.Row;
     Button1m.Color:=clRed;
     Button1m.Font.Color:=clWhite;
     Button1m.Font.Bold:=true;
  end;
end;

//krāsas komandas dalībnieku logā
procedure TForm1.StringGrid3DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  with StringGrid3 do
    begin
      if (aCol = 5) and (Cells[8, aRow]='1') then
        begin
          Canvas.Font.Color := clWhite;
          Canvas.Brush.Color := clGreen;
          Canvas.FillRect(aRect.Left, aRect.Top,
                         aRect.Right, aRect.Bottom);
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
        end;
      if (aCol = 5) and (Cells[8, aRow]='0') then
        begin
          Canvas.Font.Color := clBlack;
          Canvas.Brush.Color := clYellow;
          Canvas.FillRect(aRect.Left, aRect.Top,
                         aRect.Right, aRect.Bottom);
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
        end;
    end;
end;

//darbs ar komandu tabulu
procedure TForm1.StringGrid2Click(Sender: TObject);
var
  i,r,j: integer;
  ss,ss1:TStringList;
  s:array[0..8]of string;
  ih,it:integer;
  mc,psum:integer;
  fname:string;

procedure updateSplits();
var
  i,j,k:integer;
  vKP:string;
  vL,nL:TDateTime;
begin
  k:=0;
  while allSplits[k].team<>StringGrid2.Cells[0,StringGrid2.Row] do k:=k+1;
  vKP:=Form5.StringGrid1.Cells[1,0];
  vL:=laiks(Form5.StringGrid1.Cells[2,0]);
  j:=0;
  for i:=0 to Form5.StringGrid1.RowCount-1 do
  begin
    if (Form5.StringGrid1.Cells[5,i]<>'') and (Form5.StringGrid1.Cells[1,i]<>vKP) then
    begin
      nL:=laiks(Form5.StringGrid1.Cells[2,i])-vL;
      SetLength(allsplits[k].splits,j+1);
      allSplits[k].splits[j].kp_from:=vKP;
      allSplits[k].splits[j].kp_to:=Form5.StringGrid1.Cells[1,i];
      allSplits[k].splits[j].time:=nL;
      allSplits[k].splits[j].delta_t:=Form5.StringGrid1.Cells[4,i];
      allSplits[k].splits[j].points:=Form5.StringGrid1.Cells[5,i];
      Form5.StringGrid1.Cells[7,i]:=FloatToStr(nL);
      j:=j+1;
      vL:=laiks(Form5.StringGrid1.Cells[2,i]);
      vKP:=Form5.StringGrid1.Cells[1,i];
    end;
  end;
end;

begin
  StringGrid3.RowCount:=1;
  r:=StringGrid2.Row;

  //rediģē komandas grupas pēc klikšķa uz komandas grupu šūnu
  if StringGrid2.Col=3 then begin TeamGroupEditClick(r); exit; end;

  //izveido komandas dalībnieku tabulu pēc klikšķa NE UZ grupām un R
  i:=1;
  for j:=1 to StringGrid4.RowCount-1 do
  begin
       if StringGrid2.Cells[0,r]=StringGrid4.Cells[2,j] then
       begin
            StringGrid3.InsertRowWithValues(i,['','','','','','','','','']);
            StringGrid3.Cells[1,i]:=StringGrid4.Cells[1,j];
            StringGrid3.Cells[2,i]:=StringGrid4.Cells[5,j];
            StringGrid3.Cells[3,i]:=StringGrid4.Cells[6,j]+'('+FloatToStr(Round((laiks(StringGrid1.Values['starttime'])-laiks(StringGrid4.Cells[6,j]+' 00:00:00')) / 36.5)/10) +')';
            StringGrid3.Cells[4,i]:=StringGrid4.Cells[7,j];
            StringGrid3.Cells[0,i]:=StringGrid4.Cells[0,j];
            StringGrid3.Cells[5,i]:=StringGrid4.Cells[3,j];
            StringGrid3.Cells[6,i]:=StringGrid4.Cells[4,j];
            StringGrid3.Cells[7,i]:=StringGrid2.Cells[0,r];  // komandas ID
          if FileExists('events/'+eventList[RadioGroup1.ItemIndex].Caption+'/punches/'+StringGrid3.Cells[5,i]+'_'+StringGrid2.Cells[0,r]) then
          begin
            StringGrid3.Cells[8,i]:='1'; // ir identa fails
          end
          else
          begin
            StringGrid3.Cells[8,i]:='0';
          end;
          i:=i+1;
       end;
  end;

  //komandas rezultāta aprēķins pēc klikšķa uz "R"
  if StringGrid2.Col=6 then
  begin
      if StringGrid6.Cells[2,1]='' then
      begin
        MessageDlg(mscC11,mstT11,mtConfirmation,[mbOK],0);
        exit;
      end;
      ss:=TStringList.Create;
      ss1:=TStringList.Create;
      if Form5.Caption<>'#' then Form5.Caption:=StringGrid2.Cells[0,r];
      mc:=0;
      for i:=1 to StringGrid3.RowCount-1 do
      begin
      if StringGrid3.Cells[0,i]<>'' then mc:=mc+1;
      if StringGrid3.Cells[8,i]='1' then
       begin
            fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/punches/'+StringGrid3.Cells[5,i]+'_'+StringGrid3.Cells[7,i];
            ss.LoadFromFile(fname);
            for j:=0 to ss.Count-1 do ss.Strings[j]:=StringGrid3.Cells[5,i]+' '+ss.Strings[j];
            ss1.AddStrings(ss);
       end
       else
       begin
         MessageDlg(mscC2,mstT2+StringGrid3.Cells[5,i]+mstT2a,mtConfirmation,[mbOk],0);
         exit;
       end;
      end;
      if ss1.Count>0 then
      begin
           ss.Clear;
           ss.AddStrings(ss1);
           ss1.Clear;
           Form5.StringGrid1.Clear;
           j:=0;
           for i:=0 to ss.Count-1 do
           if Pos('=',ss.Strings[i])>0 then
           begin
                ss1.Delimiter:='=';
                ss1.DelimitedText:=ss.Strings[i];
                s[0]:=ss1.Strings[0];
                s[1]:=ss1.Strings[1];
                s[2]:=ss1.Strings[2]+' '+ss1.Strings[3];
                s[3]:='';
                s[4]:='';
                s[5]:='';
                s[6]:='';
                s[7]:='';
                s[8]:='';
                Form5.StringGrid1.InsertRowWithValues(j,s);
                j:=j+1;
           end;
           Form5.StringGrid1.ColWidths[2]:=200;
           Form5.StringGrid1.SortColRow(true,2);

           StringGrid6.Col:=0;
           StringGrid6.Row:=1;
           Button8Click(nil);
           Form2.Hide;

           ih:=0;
           ss1.Clear;
           ss1.Duplicates:=dupIgnore;
           ss1.Sorted:=true;
           psum:=0;
           totalDist:=0;
           while ih<Form5.StringGrid1.RowCount do
           begin
                it:=ih;
                while it<Form5.StringGrid1.RowCount do
                begin
                  if (laiks(Form5.StringGrid1.Cells[2,ih])*24*60*60+StrToInt(StringGrid1.Values['timelimit'])<laiks(Form5.StringGrid1.Cells[2,it])*24*60*60)
                      or (Form5.StringGrid1.Cells[1,ih]<>Form5.StringGrid1.Cells[1,it]) then break;
                  it:=it+1;
                end;
                it:=it-1;
                ss.Clear;
                ss.Duplicates:=dupIgnore;
                ss.Sorted:=true;
                for j:=ih to it do
                    ss.Add(Form5.StringGrid1.Cells[0,j]);
                if ih>0 then totalDist:=totalDist+distanceKP(Form5.StringGrid1.Cells[1,it],Form5.StringGrid1.Cells[1,ih-1]);
                Form5.StringGrid1.Cells[3,it]:='MP';
                if ss.Count=mc then
                begin
                  if ss1.IndexOf(Form5.StringGrid1.Cells[1,ih])>0 then
                  begin
                    Form5.StringGrid1.Cells[3,it]:='DUP';
                    Form5.StringGrid1.Cells[5,it]:='0';
                  end
                  else
                  begin
                    Form5.StringGrid1.Cells[3,it]:='OK';
                    for j:=1 to Form2.StringGrid1.RowCount-1 do
                        if Form2.StringGrid1.Cells[1,j]=Form5.StringGrid1.Cells[1,ih] then
                        begin
                          Form5.StringGrid1.Cells[5,it]:=Form2.StringGrid1.Cells[2,j];
                          if Form2.StringGrid1.Cells[2,j]<>'' then
                            psum:=psum+StrToInt(Form2.StringGrid1.Cells[2,j]);
                          break;
                        end;
                  end;
                  ss1.Add(Form5.StringGrid1.Cells[1,ih]);  //unikālie KP
                  Str(round((laiks(Form5.StringGrid1.Cells[2,it])-laiks(Form5.StringGrid1.Cells[2,ih]))*24*60*60),s[0]);
                  Form5.StringGrid1.Cells[4,it]:=s[0];
                  while (ih<Form5.StringGrid1.RowCount) do
                  begin
                    if Form5.StringGrid1.Cells[1,ih]<>Form5.StringGrid1.Cells[1,it] then break;
                    ih:=ih+1;
                  end;
                end
                else
                    ih:=ih+1;
           end;
           ss.Free;
           ss1.Free;
           Form5.StringGrid1.ColWidths[6]:=0;
           Form5.Label1.Caption:=TimeToStr(laiks(Form5.StringGrid1.Cells[2,Form5.StringGrid1.RowCount-1])-laiks(Form5.StringGrid1.Cells[2,0]));
           Form5.Label2.Caption:=IntToStr(psum);
           if StringGrid1.Values['penaltytype']='started minute' then
              i:=Ceil((laiks(Form5.StringGrid1.Cells[2,Form5.StringGrid1.RowCount-1])-laiks(StringGrid1.Values['finishtime']))*24*60)
           else
               i:=Floor((laiks(Form5.StringGrid1.Cells[2,Form5.StringGrid1.RowCount-1])-laiks(StringGrid1.Values['finishtime']))*24*60);
           if i>0 then begin
             Form5.Label3.Caption:=IntToStr(i);
             Form5.Label4.Caption:=IntToStr(psum-i);
             end
           else
           begin
               Form5.Label3.Caption:='0';
               Form5.Label4.Caption:=Form5.Label2.Caption;
           end;
           updateSplits;
           if Form5.Caption<>'#' then
           begin
             Form5.Show;
             if Button26.Checked then TeamPDFResult;
           end;
      end;
  end;
end;

//darbs ar komandas dalībnieku tabulu
procedure TForm1.StringGrid3Click(Sender: TObject);
var
  i:integer;
begin
  with StringGrid3 do
  begin
       if Col=5 then
       //rediģē SI ierakstus
       begin
            Form3.Memo1.Clear;
            Form3.Caption:=Cells[5,Row]+'_'+Cells[7,Row];
            if Cells[8,Row]='1' then
            begin
                 Form3.fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/punches/'+Form3.Caption;
                 Form3.Memo1.Lines.LoadFromFile(Form3.fname);
                 Form3.Show;
            end
            else
            begin
              if MessageDlg(mscC3,mstT3,mtConfirmation,[mbNo, mbYes],0)=mrYes then
              begin
                //taisa tukšu identu failu
                Form3.fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/punches/'+Form3.Caption;
                Form3.Memo1.Lines.SaveToFile(Form3.fname);
                Form3.Memo1.Lines.LoadFromFile(Form3.fname);
                Form3.Show;
              end
              else exit;

            end;
       end;
       if Col=1 then
       //rediģē dalībnieka datus
       begin
            PageControl1.ActivePageIndex:=2;
            for i:=1 to StringGrid4.RowCount-1 do
            begin
              if StringGrid4.Cells[0,i]=Cells[0,Row] then
              begin
                StringGrid4.Row:=i;
                break;
              end;
            end;
       end;
  end;
end;

//pāriet no dalībnieka uz komandu
procedure TForm1.StringGrid4Click(Sender: TObject);
var
  i:integer;
begin
  with StringGrid4 do
  begin
       if Col=2 then
       begin
            PageControl1.ActivePageIndex:=1;
            for i:=1 to StringGrid2.RowCount-1 do
            begin
              if StringGrid2.Cells[0,i]=StringGrid4.Cells[2,Row] then
              begin
                StringGrid2.Row:=i;
                break;
              end;
            end;
       end;
  end;
end;

//krāsas dalībnieku tabulā
procedure TForm1.StringGrid4DrawCell(Sender: TObject; aCol, aRow: Integer;
                                     aRect: TRect; aState: TGridDrawState);
begin
  with StringGrid4 do
    begin
      if (aCol = 3) and (Cells[8, aRow]='+') then
        begin
          Canvas.Font.Color := clWhite;
          Canvas.Brush.Color := clGreen;
          Canvas.FillRect(aRect.Left, aRect.Top,
                         aRect.Right, aRect.Bottom);
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
        end;
      if (aCol = 3) and (Cells[8, aRow]='-') then
        begin
          Canvas.Font.Color := clBlack;
          Canvas.Brush.Color := clYellow;
          Canvas.FillRect(aRect.Left, aRect.Top,
                         aRect.Right, aRect.Bottom);
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
        end;
    end;
 end;

//distances kartes faila izvēle
procedure TForm1.StringGrid6Click(Sender: TObject);
begin
    with StringGrid6 do
    begin
      if Col=1 then
      begin
         if OpenDialog1.Execute then
           StringGrid6.Cells[1,Row]:=OpenDialog1.Filename;
      end;
    end;
end;

//kartes zīmēšanas palīgfunkcija
procedure TForm1.BitmapMake24Bit(const ABitmap: TBitmap);
var
  LTempBitmap: TBitmap;
begin
  if ABitmap.PixelFormat <> pf24bit then begin
    LTempBitmap := TBitmap.Create;
    try
      LTempBitmap.PixelFormat := pf24bit;
      LTempBitmap.SetSize(ABitmap.Width, ABitmap.Height);
      LTempBitmap.Canvas.Draw(0, 0, ABitmap);
      ABitmap.PixelFormat := pf24bit;
      ABitmap.Canvas.Draw(0, 0, LTempBitmap);
    finally
      FreeAndNil(LTempBitmap);
    end;
  end;
end;

//ielasa eventu sarakstu uz radiopogām
procedure TForm1.loadEvents();
var
  i,k:integer;
begin
     k:=0;
     FileListBox1.UpdateFileList;
     SetLength(eventList,FileListBox1.Count);
     for i:=1 to FileListBox1.Count do
     begin
         if (FileListBox1.Items[i-1]='[.]') or (FileListBox1.Items[i-1]='[..]') then continue;
         eventList[k]:=TRadioButton.create(RadioGroup1);
         eventList[k].Caption:=copy(FileListBox1.Items[i-1],2,length(FileListBox1.Items[i-1])-2);
         RadioGroup1.Items.AddObject(eventList[k].Caption,eventList[k]);
         k:=k+1;
     end;
end;

//programmas formas starts
procedure TForm1.FormCreate(Sender: TObject);
var
   dropList, droplist1, droplist2, droplist3 : TStrings;
begin
     siReader:=0;
     loadEvents;
     dropList := TStringList.Create;
     dropList.Add('rogain');
     dropList1 := TStringList.Create;
     dropList1.Add('starttime');
     dropList1.Add('startpunch');
     dropList2 := TStringList.Create;
     dropList2.Add('full minute');
     dropList2.Add('started minute');
     dropList3 := TStringList.Create;
     dropList3.Add('png');
     dropList3.Add('jpg');

     StringGrid1.ItemProps['eventtype'].EditStyle:=esPickList;
     StringGrid1.ItemProps['eventtype'].PickList.Assign(dropList);
     StringGrid1.ItemProps['eventtype'].Readonly:=true;

     StringGrid1.ItemProps['starttype'].EditStyle:=esPickList;
     StringGrid1.ItemProps['starttype'].PickList.Assign(dropList1);
     StringGrid1.ItemProps['starttype'].Readonly:=true;

     StringGrid1.ItemProps['penaltytype'].EditStyle:=esPickList;
     StringGrid1.ItemProps['penaltytype'].PickList.Assign(dropList2);
     StringGrid1.ItemProps['penaltytype'].Readonly:=true;

     StringGrid1.ItemProps['routetype'].EditStyle:=esPickList;
     StringGrid1.ItemProps['routetype'].PickList.Assign(dropList3);
     StringGrid1.ItemProps['routetype'].Readonly:=true;

end;

//aizpilda grupu starta, finiša, kavējuma laiku no eventa datiem
procedure TForm1.Button3gClick(Sender: TObject);
var
   i:integer;
begin
  for i:=1 to StringGrid5.RowCount-1 do
  begin
    StringGrid5.Cells[2,i]:=StringGrid1.Values['starttime'];
    StringGrid5.Cells[3,i]:=StringGrid1.Values['finishtime'];
    StringGrid5.Cells[4,i]:=StringGrid1.Values['latetime'];
  end;
end;

//jaunas grupas izveide
procedure TForm1.Button1gClick(Sender: TObject);
var
   i,k:integer;
begin
  if StringGrid5.Cells[0,StringGrid5.RowCount-1]<>'' then
  with StringGrid5 do
  begin
    k:=0;
    for i:=1 to RowCount-1 do
      if StrToInt(Cells[0,i])>k then k:=StrToInt(Cells[0,i]);
    InsertColRow(false,RowCount);
    Cells[0,RowCount-1]:=IntToStr(k+1);
    Cells[6,RowCount-1]:=capC3;
  end;
end;

//saglabā eventa pamatdatus
procedure TForm1.writeEvent();
var
   Doc: TXMLDocument;
   RootNode, ElementNode,TextNode: TDOMNode;
   i:integer;
begin
  with StringGrid1 do
  begin
       Doc := TXMLDocument.Create;
       RootNode := Doc.CreateElement('event_data');
       Doc.Appendchild(RootNode);
       for i:=0 to RowCount-1 do
       begin
         RootNode:= Doc.DocumentElement;
         ElementNode:=Doc.CreateElement(Keys[i]);
         TextNode:=Doc.CreateTextNode(Values[Keys[i]]);
         ElementNode.AppendChild(TextNode);
         RootNode.AppendChild(ElementNode);
       end;
       WriteXMLFile(Doc,'events/'+Values['eventID']+'/event_data');
       Doc.Free;
  end;
end;

//ieraksta visām komandām starta laiku no eventa datiem
procedure TForm1.Button10Click(Sender: TObject);
var
   i:integer;
begin
  for i:=1 to StringGrid2.RowCount-1 do StringGrid2.Cells[2,i]:=StringGrid1.Values['starttime'];
end;

//ģenerē grupas pēc rogaininga noteikumiem
procedure TForm1.Button11Click(Sender: TObject);
var
   i,j:integer;
   gendM,gendW:integer;
   gend:string;
   age,minage,maxage:double;
   groups:TStringList;
begin
  groups:=TStringList.Create;
  groups.Sorted:=true;
  groups.Duplicates:=dupIgnore;
  for i:=1 to StringGrid5.RowCount-1 do groups.Add(StringGrid5.Cells[1,i]);
  StringGrid5.RowCount:=1;
  for i:=1 to StringGrid2.RowCount-1 do
  begin
    StringGrid2.Row:=i;
    StringGrid2.Col:=0;
    StringGrid2Click(StringGrid2);
    if StringGrid2.Cells[3,i]='' then
    begin
      gendM:=0;
      gendW:=0;
      minage:=1000;
      maxage:=0;
      for j:=1 to StringGrid3.RowCount-1 do
      begin
       // jātaisa dzimuma izvēles variants
          if StringGrid3.Cells[2,j]='V' then gendM:=gendM+1;
          if StringGrid3.Cells[2,j]='S' then gendW:=gendW+1;
          age:=(laiks(StringGrid1.Values['starttime'])-laiks(Copy(StringGrid3.Cells[3,j],1,10)+' 00:00:00')) / 365;
          if age<minage then minage:=age;
          if age>maxage then maxage:=age;
      end;
      if gendW=0 then gend:='M';
      if gendM=0 then gend:='W';
      if (gendW>0)and(gendM>0) then gend:='X';
      StringGrid2.Cells[3,i]:=gend+'O';
      groups.Add(gend+'O');
      if maxage<23 then
      begin
        StringGrid2.Cells[3,i]:=StringGrid2.Cells[3,i]+','+gend+'J';
        groups.Add(gend+'J');
      end;
      if minage>=45 then
      begin
        StringGrid2.Cells[3,i]:=StringGrid2.Cells[3,i]+','+gend+'V';
        groups.Add(gend+'V');
      end;
      if minage>=55 then
      begin
        StringGrid2.Cells[3,i]:=StringGrid2.Cells[3,i]+','+gend+'SV';
        groups.Add(gend+'SV');
      end;
      if minage>=65 then
      begin
        StringGrid2.Cells[3,i]:=StringGrid2.Cells[3,i]+','+gend+'UV';
        groups.Add(gend+'UV');
      end;
    end;
  end;
  for i:=0 to groups.Count-1 do StringGrid5.InsertRowWithValues(i+1,[IntToStr(i+1),groups[i],'','','','']);
  groups.Free;
  Button4g.Color:=clRed;
  Button4g.Font.Color:=clWhite;
  Button4g.Font.Bold:=true;
end;

//eksportē vienas komandas datus un šīs komandas dalībniekus uz '_exp', lai var importēt citā eventā
procedure TForm1.Button12Click(Sender: TObject);
begin
  Button1mClick(Button12);
  Button4Click(Button12);
end;

//importē no viena eventa eksportētos datus citā eventā
procedure TForm1.Button13Click(Sender: TObject);
var
  Doc: TXMLDocument;
  fname: string;
  i,k,kk: integer;
  dnd,dnd1,dnv: TDOMNode;
  ss1: array[0..7] of string;
  tm1: TStringList;
begin
  if StringGrid2.Cells[6,StringGrid2.Row]=' R' then
  begin
    MessageDlg(mscC4,mstT4,mtConfirmation,[mbOK],0);
    exit;
  end;
  kk:=1;
  for i:=1 to StringGrid4.RowCount-1 do
  begin
    if StrToInt(StringGrid4.Cells[0,i])>=kk then kk:=StrToInt(StringGrid4.Cells[0,i])+1;
  end;
  k:=kk;
  fname:='events/team_data_exp';
  if FileExists(fname) then
  begin
    ReadXMLFile(Doc, fname);

    dnd:=Doc.DocumentElement.FirstChild;
    StringGrid2.Cells[6,StringGrid2.Row]:=' R';
    tm1:=TStringList.Create;
    while Assigned(dnd) do
    begin
        dnd1:=dnd.FirstChild;
        while Assigned(dnd1) do
        begin
             if dnd1.NodeName='team' then
                StringGrid2.Cells[1,StringGrid2.Row]:=dnd1.ChildNodes.Item[0].NodeValue;
             if (dnd1.NodeName='start')and(dnd1.ChildNodes.Count>0) then
                StringGrid2.Cells[2,StringGrid2.Row]:=dnd1.ChildNodes.Item[0].NodeValue;
             if (dnd1.NodeName='status')and(dnd1.ChildNodes.Count>0) then
                StringGrid2.Cells[4,StringGrid2.Row]:=dnd1.ChildNodes.Item[0].NodeValue;
             if (dnd1.NodeName='group') and (dnd1.ChildNodes.Count>0) then
                if StringGrid2.Cells[3,StringGrid2.Row]='' then StringGrid2.Cells[3,StringGrid2.Row]:=dnd1.ChildNodes.Item[0].NodeValue
                   else StringGrid2.Cells[3,StringGrid2.Row]:=StringGrid2.Cells[3,StringGrid2.Row]+','+dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='member' then
             begin
               dnv:=dnd1.FirstChild;
               while Assigned(dnv) do
               begin
                    if dnv.NodeName='runner' then
                       if dnv.ChildNodes.Count>0 then
                       begin
                          tm1.Append(IntToStr(kk));
                          kk:=kk+1;
                       end
                       else
                           tm1.Append('');
                    if dnv.NodeName='card' then
                       if dnv.ChildNodes.Count>0 then
                          tm1.Append(dnv.ChildNodes.Item[0].NodeValue)
                       else
                           tm1.Append('');
                    if dnv.NodeName='course' then
                       if dnv.ChildNodes.Count>0 then
                          tm1.Append(dnv.ChildNodes.Item[0].NodeValue)
                       else
                           tm1.Append('');
                   dnv:=dnv.NextSibling;
               end;
               dnv.Free;
             end;
             dnd1:=dnd1.NextSibling;
        end;
        (StringGrid2.Objects[5,StringGrid2.Row] as TStringList).AddStrings(tm1);
        tm1.Clear;

        dnd1.Free;
        dnd:=dnd.NextSibling;
    end;
    dnd.Free;
    Doc.Free;
    tm1.Free;
  end;

  fname:='events/runner_data_exp';
  if FileExists(fname) then
  begin
    ReadXMLFile(Doc, fname);

    dnd:=Doc.DocumentElement.FirstChild;
    while Assigned(dnd) do
    begin
        dnd1:=dnd.FirstChild;
        for i:=0 to 7 do ss1[i]:='';
        while Assigned(dnd1) do
        begin
             if dnd1.NodeName='id' then
             begin
                ss1[0]:=IntToStr(k);
                k:=k+1;
             end;
             if dnd1.NodeName='name' then
                ss1[1]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='sex' then
                ss1[5]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='birth' then
                ss1[6]:=dnd1.ChildNodes.Item[0].NodeValue;
             if dnd1.NodeName='country' then
                ss1[7]:=dnd1.ChildNodes.Item[0].NodeValue;
             dnd1:=dnd1.NextSibling;
        end;
        StringGrid4.InsertRowWithValues(StringGrid4.RowCount,ss1);
        StringGrid4.Cells[2,StringGrid4.RowCount-1]:=StringGrid2.Cells[0,StringGrid2.Row];
        dnd1.Free;
        dnd:=dnd.NextSibling;
    end;
    dnd.Free;
    Doc.Free;
    Button4.Color:=clRed;
    Button4.Font.Color:=clWhite;
    Button4.Font.Bold:=true;
  end;
end;

//importē KP no IOF/XML
procedure TForm1.Button14Click(Sender: TObject);
var
  Doc: TXMLDocument;
  fname: string;
  i,scale: integer;
  dnd,dnd1: TDOMNode;
  tm1: TStringList;
  ss2:array[0..5]of string;
begin

  if FileExists(StringGrid6.Cells[1,StringGrid6.Row]) then
  begin
     Form2.Image1.Picture.LoadFromFile(StringGrid6.Cells[1,StringGrid6.Row]);
     Form2.imagefilename:=StringGrid6.Cells[1,StringGrid6.Row];
     BitmapMake24Bit(Form2.Image1.Picture.Bitmap);
  end
  else
  begin
      MessageDlg(mscC5,mstT5,mtConfirmation,[mbOK],0);
      exit;
  end;

  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/courses.xml';
  if FileExists(fname) then
  begin
    ReadXMLFile(Doc, fname);

    dnd:=Doc.DocumentElement.FirstChild;
    tm1:=TStringList.Create;
    scale:=1;
    while Assigned(dnd) do
    begin
        if dnd.NodeName='Map' then
        begin
          dnd1:=dnd.FirstChild;
          while Assigned(dnd1) do
          begin
               if dnd1.NodeName='Scale' then
                  if dnd1.ChildNodes.Count>0 then scale:=StrToInt(dnd1.ChildNodes.Item[0].NodeValue);
               dnd1:=dnd1.NextSibling;
          end;
          dnd1.Free;
        end;

        if (dnd.NodeName='Control')or(dnd.NodeName='StartPoint')or(dnd.NodeName='FinishPoint') then
        begin
             dnd1:=dnd.FirstChild;
             for i:=0 to 5 do ss2[i]:='';
             while Assigned(dnd1) do
             begin
                  if (dnd1.NodeName='ControlCode')or(dnd1.NodeName='StartPointCode')or(dnd1.NodeName='FinishPointCode') then
                     if dnd1.ChildNodes.Count>0 then ss2[1]:=dnd1.ChildNodes.Item[0].NodeValue;
                  if dnd1.NodeName='MapPosition' then
                  begin
                    i := 0;
                    while i < dnd1.Attributes.Length do begin
                      if dnd1.Attributes.Item[i].NodeName = 'x' then begin
                        ss2[4] := IntToStr(Round(StrToFloat(dnd1.Attributes.Item[i].NodeValue)*96/25.4));
                      end;
                      if dnd1.Attributes.Item[i].NodeName = 'y' then begin
                        ss2[5] := IntToStr(Round(Form2.Image1.Picture.Height-(StrToFloat(dnd1.Attributes.Item[i].NodeValue)*96/25.4)));
                      end;
                      inc(i);
                    end;
                  end;
                  dnd1:=dnd1.NextSibling;
             end;
             Form2.StringGrid1.InsertRowWithValues(Form2.StringGrid1.RowCount,ss2);
             dnd1.Free;
        end;
        dnd:=dnd.NextSibling;
    end;
    dnd.Free;
    Doc.Free;
    tm1.Free;
  end;
end;

//ieliek memberi komandā
procedure TForm1.Button1m1Click(Sender: TObject);
begin
  (StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Append(StringGrid4.Cells[0,StringGrid4.Row]);
  (StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Append(StringGrid4.Cells[3,StringGrid4.Row]);
  (StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Append(StringGrid4.Cells[4,StringGrid4.Row]);
  StringGrid4.Cells[2,StringGrid4.Row]:=StringGrid2.Cells[0,StringGrid2.Row];
  StringGrid2.Col:=0;
  StringGrid2Click(StringGrid2);
  PageControl1.ActivePage:=TabSheet2;
  Button1m.Color:=clRed;
  Button1m.Font.Color:=clWhite;
  Button1m.Font.Bold:=true;
end;

//jauns members eventā
procedure TForm1.Button2m1Click(Sender: TObject);
var
   i,k:integer;
begin
  k:=0;
  for i:=1 to StringGrid4.RowCount-1 do
  begin
    if StrToInt(StringGrid4.Cells[0,i])>k then k:=StrToInt(StringGrid4.Cells[0,i]);
  end;
  StringGrid4.InsertRowWithValues(StringGrid4.RowCount,['','','','','','','','']);
  StringGrid4.Cells[0,StringGrid4.RowCount-1]:=IntToStr(k+1);
  StringGrid4.Row:=StringGrid4.RowCount-1;
end;

//dzēš neizmantotu grupu
procedure TForm1.Button2gClick(Sender: TObject);
var
   i:integer;
begin
  if MessageDlg(mscC6, mstT6, mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
  //ja grupa nav izmantota, var dzēst
    for i:=1 to StringGrid2.RowCount-1 do
    begin
      if Pos(StringGrid5.Cells[1,StringGrid5.Row],StringGrid2.Cells[3,i])>0 then
      begin
        MessageDlg(mscC6,mstT6a+StringGrid2.Cells[0,i],mtConfirmation,[mbOK],0);
        exit;
      end;
    end;
    for i:=0 to StringGrid5.ColCount-1 do
        StringGrid5.Cells[i,StringGrid5.Row]:=StringGrid5.Cells[i,StringGrid5.RowCount-1];
    StringGrid5.RowCount:=StringGrid5.RowCount-1;
  end;
end;

//jauna komanda
procedure TForm1.Button1tClick(Sender: TObject);
var
   i,k:integer;
begin
  k:=0;
  for i:=1 to StringGrid2.RowCount-1 do
  begin
    if StrToInt(StringGrid2.Cells[0,i])>k then k:=StrToInt(StringGrid2.Cells[0,i]);
  end;
  StringGrid2.InsertRowWithValues(StringGrid2.RowCount,['','','','','','','R']);
  StringGrid2.Objects[5,StringGrid2.RowCount-1]:=TStringList.Create;
  StringGrid2.Cells[0,StringGrid2.RowCount-1]:=IntToStr(k+1);
  StringGrid2.Col:=0;
  StringGrid2.Row:=StringGrid2.RowCount-1;
end;

//jauna distance (šī poga nav aktīva rogainingā)
procedure TForm1.Button2Click(Sender: TObject);
begin
  StringGrid6.InsertRowWithValues(StringGrid6.RowCount,['','','','']);
  StringGrid6.Objects[3,StringGrid6.RowCount-1]:=TStringList.Create;
  if StringGrid1.Values['eventtype']='rogain' then
  begin
    StringGrid6.Cells[0,1]:='rog';
  end;
end;

//uz dalībnieka pievienošanu komandai
procedure TForm1.Button2mClick(Sender: TObject);
begin
  StringGrid4.SortColRow(true,2);
  StringGrid4.Row:=1;
  PageControl1.ActivePage:=TabSheet3;
  Button1m1.Caption:=b1m1cap1+StringGrid2.Cells[0,StringGrid2.Row];
  Button1m1.Visible:=true;
end;

//dzēš komandu, memberis tiek atbrīvots, bet paliek memberu sarakstā
procedure TForm1.Button2tClick(Sender: TObject);
var
   j:integer;
begin
    if MessageDlg(mscC7, mstT7, mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      for j:=1 to StringGrid4.RowCount-1 do
        if StringGrid4.Cells[2,j]=StringGrid2.Cells[0,StringGrid2.Row] then StringGrid4.Cells[2,j]:='';
      for j:=0 to StringGrid2.ColCount-1 do
        StringGrid2.Cells[j,StringGrid2.Row]:=StringGrid2.Cells[j,StringGrid2.RowCount-1];
      StringGrid2.Objects[5,StringGrid2.Row]:=StringGrid2.Objects[5,StringGrid2.RowCount-1];
      StringGrid2.Objects[5,StringGrid2.RowCount-1].Free;
      StringGrid2.RowCount:=StringGrid2.RowCount-1;
    end;
end;

//dzēš distanci (šī poga nav aktīva rogainingā)
procedure TForm1.Button3Click(Sender: TObject);
var
   i:integer;
begin
  if MessageDlg(mscC8, mstT8, mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    if StringGrid6.RowCount>1 then
    begin
         for i:=0 to StringGrid6.ColCount-1 do
             StringGrid6.Cells[i,StringGrid6.Row]:=StringGrid6.Cells[i,StringGrid6.RowCount-1];
         StringGrid6.RowCount:=StringGrid6.RowCount-1;
    end;
  end;
end;

//slēpj membera pievienošanas konkrētai komandai pogu, izejot no memberu saraksta
procedure TForm1.TabSheet3OnExit(Sender: TObject);
begin
  Button1m1.Visible:=False;
end;

//eventa tabulas maiņa (rezultātu tabula un HTML fails)
procedure TForm1.PageControl1Change(Sender: TObject);
var
   i,j,k:integer;
   s:array[0..8]of string;
   ss:string;
begin
  if PageControl1.ActivePage=TabSheet6 then
  //rezultātu lapa
  begin
    if StringGrid6.Cells[2,1]='' then
    begin
      MessageDlg(mscC11,mstT11,mtConfirmation,[mbOK],0);
      exit;
    end;
    for i:=0 to 8 do s[i]:='';
    ss:='        ';
    StringGrid7.RowCount:=1;
    Form6.StringGrid7.RowCount:=1;
    Form6.Caption:=StringGrid1.Values['eventname'];
    k:=1;
    Form5.Caption:='#'; //lai neveras vaļā Form5 (komandas rezultāts)
    for i:=1 to StringGrid2.RowCount-1 do
    begin
         if StringGrid2.Cells[4,i]='OK' then
         begin
              StringGrid7.InsertRowWithValues(k,s);
              StringGrid2.Row:=i; // komandas dalībnieku saraksta aktualizācija
              StringGrid2.Col:=6; // veidojas komandas rezultāts Form5
              StringGrid7.Cells[0,k]:=StringGrid2.Cells[0,i];
              StringGrid7.Cells[1,k]:=StringGrid2.Cells[1,i];
              StringGrid7.Cells[2,k]:=Form5.Label1.Caption;
              StringGrid7.Cells[3,k]:=Form5.Label2.Caption;
              StringGrid7.Cells[4,k]:=Form5.Label3.Caption;
              StringGrid7.Cells[5,k]:=Form5.Label4.Caption;
              for j:=1 to 8 do ss[j]:=Chr(48+Ord('9')-Ord(StringGrid7.Cells[2,k][j]));
              StringGrid7.Cells[7,k]:=Copy('000000',1,6-Length(Form5.Label4.Caption))+Form5.Label4.Caption+ss;
              StringGrid7.SortColRow(true,7);
              StringGrid7.SortOrder:=soDescending;
              k:=k+1;
         end;
    end;
    StringGrid2.Col:=0;
    Form5.Caption:='';
    resultsToScreen;
    resultsToHTML;
  end;
end;

//rezultāti uz ekrāna
procedure TForm1.resultsToScreen();
var
   i,j,k,m:integer;
   s:string;
   v:array of integer;
begin
  SetLength(v,StringGrid5.RowCount);
  for i:=0 to StringGrid5.RowCount-1 do v[i]:=0;
  m:=1;
  for i:=1 to StringGrid7.RowCount-1 do
  begin
       k:=0;
       while StringGrid2.Cells[0,k]<>StringGrid7.Cells[0,i] do k:=k+1;;
       for j:=1 to StringGrid5.RowCount-1 do
       begin
          if (Pos(StringGrid5.Cells[1,j],StringGrid2.Cells[3,k])>0)and(StringGrid5.Cells[6,j]=capC3) then
          begin
            v[j]:=v[j]+1;
            s:=IntToStr(v[j]);
            StringGrid7.Cells[6,i]:=StringGrid7.Cells[6,i]+' '+StringGrid5.Cells[1,j]+':'+s;
            if v[j]=1 then s:='<span class="wingold">'+IntToStr(v[j])+'</span>';
            if v[j]=2 then s:='<span class="winsilver">'+IntToStr(v[j])+'</span>';
            if v[j]=3 then s:='<span class="winbronz">'+IntToStr(v[j])+'</span>';
            StringGrid7.Cells[8,i]:=StringGrid7.Cells[8,i]+' '+StringGrid5.Cells[1,j]+':'+s;
          end;
       end;
       if StringGrid7.Cells[6,i]<>'' then
       begin
         Form6.StringGrid7.InsertRowWithValues(m,['','','','','','','','','']);
         for j:=0 to StringGrid7.ColCount-1 do begin
           if j=6 then s:=IntToStr(m)+'.: ' else s:='';
           Form6.StringGrid7.Cells[j,m]:=s+StringGrid7.Cells[j,i];
         end;
         m:=m+1;
       end;
  end;
  Form6.StringGrid7.AutoSizeColumns;
end;

//HTML rezultāti
procedure TForm1.resultsToHTML();
var
   i,j:integer;
   fname,ss1,s:string;
begin
  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/docs/ALL.htm';
  Form3.Memo1.Clear;
  Form3.Memo1.Lines.Add('<html><head>');
  Form3.Memo1.Lines.Add('<meta http-equiv="Content-Type" content="text/html; charset=utf-8">');
  Form3.Memo1.Lines.Add('<link rel="stylesheet" type="text/css" media="screen" href="style.css" />');
  Form3.Memo1.Lines.Add('</head><body>');
  Form3.Memo1.Lines.Add('<img src="'+StringGrid1.Values['eventlogo']+'">');
  Form3.Memo1.Lines.Add('<div class="header">'+StringGrid1.Values['eventname']+'</div>');
  Form3.Memo1.Lines.Add('<div class="info"><b>'+Copy(StringGrid1.Values['starttime'],1,10)+'</b><br />');
  Form3.Memo1.Lines.Add('<b>'+StringGrid1.Values['eventplace']+'</b></div><hr />');
  Form3.Memo1.Lines.Add('<table class="info">');
  Form3.Memo1.Lines.Add('<tr><td><i>Starts:</i></td><td><b>'+StringGrid1.Values['starttime']+'</b></td></tr>');
  Form3.Memo1.Lines.Add('<tr><td><i>Saulriets:</i></td><td><b>'+StringGrid1.Values['sunsettime']+'</b></td></tr>');
  Form3.Memo1.Lines.Add('<tr><td><i>Saullēkts:</i></td><td><b>'+StringGrid1.Values['sunrisetime']+'</b></td></tr>');
  Form3.Memo1.Lines.Add('<tr><td><i>Finišs:</i></td><td><b>'+StringGrid1.Values['finishtime']+'</b></td></tr>');
  Form3.Memo1.Lines.Add('<tr><td><i>Ieskaites laika beigas:</i></td><td><b>'+StringGrid1.Values['latetime']+'</b></td></tr>');
  Form3.Memo1.Lines.Add('</table>');
  Form3.Memo1.Lines.Add('<table border=0>');
  Form3.Memo1.Lines.Add('<tr class="resultheader"><th>KN</th><th>Komanda</th><th>Laiks<br />Punkti<br />Soda punkti</th><th>Rezultāts</th><th>Vieta grupā(s)</th></tr>');
  for i:=1 to Form6.StringGrid7.RowCount-1 do
  begin
    if i mod 2=0 then s:='team1' else s:='team0';
    Form3.Memo1.Lines.Add('<tr class="'+s+'"><td>'+Form6.StringGrid7.Cells[0,i]+'</td>');
    for j:=1 to StringGrid2.RowCount-1 do
      if StringGrid2.Cells[0,j]=Form6.StringGrid7.Cells[0,i] then
      begin
        StringGrid2.Row:=j;
        StringGrid2.Col:=0;
        StringGrid2Click(StringGrid2);
        break;
      end;
    ss1:='';
    for j:=1 to StringGrid3.RowCount-1 do
    begin
      ss1:=ss1+'<li>'+StringGrid3.Cells[1,j]+'<br />';
    end;
    Form3.Memo1.Lines.Add('<td><a href="../teamresults/'+Form6.StringGrid7.Cells[0,i]+'.htm">'+Form6.StringGrid7.Cells[1,i]+
    '</a><br /><div class="css_members">'+ss1+'</div></td>');
    Form3.Memo1.Lines.Add('<td>'+Form6.StringGrid7.Cells[2,i]+'<br />'+Form6.StringGrid7.Cells[3,i]+'<br />'+Form6.StringGrid7.Cells[4,i]+'</td>');
    Form3.Memo1.Lines.Add('<td class="css_result">'+Form6.StringGrid7.Cells[5,i]+'</td>');
    Form3.Memo1.Lines.Add('<td class="place">'+IntToStr(i)+'.<br />'+Form6.StringGrid7.Cells[8,i]+'</td>');
    Form3.Memo1.Lines.Add('</tr>');
  end;
  Form3.Memo1.Lines.Add('</table>');
  Form3.Memo1.Lines.Add('</body>');
  Form3.Memo1.Lines.Add('</html>');
  Form3.Memo1.Lines.SaveToFile(fname);
end;

//saglabā komandas un memberus vai eksportē konkrēto komandu
procedure TForm1.Button1mClick(Sender: TObject);
var
  Doc: TXMLDocument;
  RootNode, ElementNode,ItemNode,ItemNode1,TextNode,TextNode1: TDOMNode;
  i,j: integer;
begin
  for i:=1 to StringGrid2.RowCount-2 do
    for j:=i+1 to StringGrid2.RowCount-1 do
      if StringGrid2.Cells[0,i]=StringGrid2.Cells[0,j] then
      begin
        MessageDlg(mscC9,mstT9+StringGrid2.Cells[0,i],mtConfirmation,[mbOK],0);
        exit;
      end;
  Doc := TXMLDocument.Create;
  RootNode := Doc.CreateElement('teams');
  Doc.Appendchild(RootNode);
  RootNode:= Doc.DocumentElement;
  if Sender=Button1m then
  with StringGrid2 do
  begin
     for i:=1 to RowCount-1 do
     begin
          Row:=i;
          StringGrid2Click(StringGrid2);
          ElementNode:=Doc.CreateElement('team_data');
          ItemNode:=Doc.CreateElement('bib');
          TextNode:=Doc.CreateTextNode(Cells[0,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('team');
          TextNode:=Doc.CreateTextNode(Cells[1,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('start');
          TextNode:=Doc.CreateTextNode(Cells[2,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('status');
          TextNode:=Doc.CreateTextNode(Cells[4,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          for j:=1 to StringGrid3.RowCount-1 do
          begin
               ItemNode:=Doc.CreateElement('member');
               ItemNode1:=Doc.CreateElement('runner');
               TextNode1:=Doc.CreateTextNode(StringGrid3.Cells[0,j]);
               ItemNode1.AppendChild(TextNode1);
               ItemNode.AppendChild(ItemNode1);
               ItemNode1:=Doc.CreateElement('card');
               TextNode1:=Doc.CreateTextNode(StringGrid3.Cells[5,j]);
               ItemNode1.AppendChild(TextNode1);
               ItemNode.AppendChild(ItemNode1);
               ItemNode1:=Doc.CreateElement('course');
               TextNode1:=Doc.CreateTextNode(StringGrid3.Cells[6,j]);
               ItemNode1.AppendChild(TextNode1);
               ItemNode.AppendChild(ItemNode1);
               ElementNode.AppendChild(ItemNode);
          end;
          for j:=1 to StringGrid5.RowCount-1 do
               if Pos(StringGrid5.Cells[1,j],StringGrid2.Cells[3,i])>0 then
               begin
                ItemNode:=Doc.CreateElement('group');
                TextNode:=Doc.CreateTextNode(StringGrid5.Cells[1,j]);
                ItemNode.AppendChild(TextNode);
                ElementNode.AppendChild(ItemNode);
               end;
          RootNode.AppendChild(ElementNode);
     end;
     WriteXMLFile(Doc,'events/'+StringGrid1.Values['eventID']+'/team_data');
     Button1m.Color:=clDefault;
     Button1m.Font.Color:=clDefault;
     Button1m.Font.Bold:=false;
  end;
  if Sender=Button12 then
  with StringGrid2 do
  begin
    i:=Row;
    ElementNode:=Doc.CreateElement('team_data');
    ItemNode:=Doc.CreateElement('bib');
    TextNode:=Doc.CreateTextNode(Cells[0,i]);
    ItemNode.AppendChild(TextNode);
    ElementNode.AppendChild(ItemNode);
    ItemNode:=Doc.CreateElement('team');
    TextNode:=Doc.CreateTextNode(Cells[1,i]);
    ItemNode.AppendChild(TextNode);
    ElementNode.AppendChild(ItemNode);
    ItemNode:=Doc.CreateElement('start');
    TextNode:=Doc.CreateTextNode(Cells[2,i]);
    ItemNode.AppendChild(TextNode);
    ElementNode.AppendChild(ItemNode);
    ItemNode:=Doc.CreateElement('status');
    TextNode:=Doc.CreateTextNode(Cells[4,i]);
    ItemNode.AppendChild(TextNode);
    ElementNode.AppendChild(ItemNode);
    for j:=1 to StringGrid3.RowCount-1 do
    begin
         ItemNode:=Doc.CreateElement('member');
         ItemNode1:=Doc.CreateElement('runner');
         TextNode1:=Doc.CreateTextNode(StringGrid3.Cells[0,j]);
         ItemNode1.AppendChild(TextNode1);
         ItemNode.AppendChild(ItemNode1);
         ItemNode1:=Doc.CreateElement('card');
         TextNode1:=Doc.CreateTextNode(StringGrid3.Cells[5,j]);
         ItemNode1.AppendChild(TextNode1);
         ItemNode.AppendChild(ItemNode1);
         ItemNode1:=Doc.CreateElement('course');
         TextNode1:=Doc.CreateTextNode(StringGrid3.Cells[6,j]);
         ItemNode1.AppendChild(TextNode1);
         ItemNode.AppendChild(ItemNode1);
         ElementNode.AppendChild(ItemNode);
    end;
    for j:=1 to StringGrid5.RowCount-1 do
         if Pos(StringGrid5.Cells[1,j],StringGrid2.Cells[3,i])>0 then
         begin
          ItemNode:=Doc.CreateElement('group');
          TextNode:=Doc.CreateTextNode(StringGrid5.Cells[1,j]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
         end;
    RootNode.AppendChild(ElementNode);
    WriteXMLFile(Doc,'events/team_data_exp');
  end;
  Doc.Free;
  SetLength(allSplits,StringGrid2.RowCount);
  for i:=1 to StringGrid2.RowCount-1 do allSplits[i].team:=StringGrid2.Cells[0,i];
end;

//izmet memberi no komandas
procedure TForm1.Button3mClick(Sender: TObject);
var
   k:integer;
begin
  if MessageDlg(mscC10, mstT10, mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    k:=0;
    while k<(StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Count do
    begin
       if (StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Strings[k]=StringGrid3.Cells[0,StringGrid3.Row] then break;
       k:=k+3;
    end;
    while k<(StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Count-3 do
    begin
      (StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Strings[k]:=(StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Strings[k+3];
      k:=k+1;
    end;
    for k:=1 to 3 do (StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Delete((StringGrid2.Objects[5,StringGrid2.Row] as TStringList).Count-1);
    for k:=1 to StringGrid4.RowCount-1 do
    begin
      if StringGrid4.Cells[0,k]=StringGrid3.Cells[0,StringGrid3.Row] then
      begin
        StringGrid4.Cells[2,k]:='';
      end;
    end;
    StringGrid2Click(StringGrid2);
  end;
end;

//runners datu saglabāšana vai vienas komandas memberu eksports
procedure TForm1.Button4Click(Sender: TObject);
var
  Doc: TXMLDocument;
  RootNode, ElementNode,ItemNode,TextNode: TDOMNode;
  i: integer;
begin
  Doc := TXMLDocument.Create;
  RootNode := Doc.CreateElement('runners_data');
  Doc.Appendchild(RootNode);
  RootNode:= Doc.DocumentElement;
  if Sender=Button4 then
  begin
  with StringGrid4 do
     for i:=1 to RowCount-1 do
     begin
          ElementNode:=Doc.CreateElement('runner_data');
          ItemNode:=Doc.CreateElement('id');
          TextNode:=Doc.CreateTextNode(Cells[0,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('name');
          TextNode:=Doc.CreateTextNode(Cells[1,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('sex');
          TextNode:=Doc.CreateTextNode(Cells[5,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('birth');
          TextNode:=Doc.CreateTextNode(Cells[6,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('country');
          TextNode:=Doc.CreateTextNode(Cells[7,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          RootNode.AppendChild(ElementNode);
          if FileExists('punches_9999/'+Cells[3,i]+'_9999') then
          begin
            RenameFile('punches_9999/'+Cells[3,i]+'_9999', 'events/'+eventList[RadioGroup1.ItemIndex].Caption+'/punches/'+Cells[3,i]+'_'+Cells[2,i]);
            StringGrid4.Cells[8,i]:='+';
          end;
     end;
  WriteXMLFile(Doc,'events/'+StringGrid1.Values['eventID']+'/runner_data');
  Button4.Color:=clDefault;
  Button4.Font.Color:=clDefault;
  Button4.Font.Bold:=false;
  Button1mClick(Button1m);
  end;
  if Sender=Button12 then
  begin
  with StringGrid4 do
     for i:=1 to RowCount-1 do
     if Cells[2,i]=StringGrid2.Cells[0,StringGrid2.Row] then
     begin
          ElementNode:=Doc.CreateElement('runner_data');
          ItemNode:=Doc.CreateElement('id');
          TextNode:=Doc.CreateTextNode(Cells[0,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('name');
          TextNode:=Doc.CreateTextNode(Cells[1,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('sex');
          TextNode:=Doc.CreateTextNode(Cells[5,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('birth');
          TextNode:=Doc.CreateTextNode(Cells[6,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('country');
          TextNode:=Doc.CreateTextNode(Cells[7,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          RootNode.AppendChild(ElementNode);
     end;
  WriteXMLFile(Doc,'events/runner_data_exp');
  end;
  Doc.Free;
  StringGrid2Click(StringGrid2);
end;

//grupu datu saglabāšana
procedure TForm1.Button4gClick(Sender: TObject);
var
  Doc: TXMLDocument;
  RootNode, ElementNode,ItemNode,TextNode: TDOMNode;
  i: integer;
begin
  Doc := TXMLDocument.Create;
  RootNode := Doc.CreateElement('groups');
  Doc.Appendchild(RootNode);
  RootNode:= Doc.DocumentElement;
  with StringGrid5 do
     for i:=1 to RowCount-1 do
     begin
          ElementNode:=Doc.CreateElement('group_data');
          ItemNode:=Doc.CreateElement('id');
          TextNode:=Doc.CreateTextNode(Cells[0,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('group');
          TextNode:=Doc.CreateTextNode(Cells[1,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('start');
          TextNode:=Doc.CreateTextNode(Cells[2,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('finish');
          TextNode:=Doc.CreateTextNode(Cells[3,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('late');
          TextNode:=Doc.CreateTextNode(Cells[4,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          ItemNode:=Doc.CreateElement('course');
          TextNode:=Doc.CreateTextNode(Cells[5,i]);
          ItemNode.AppendChild(TextNode);
          ElementNode.AppendChild(ItemNode);
          RootNode.AppendChild(ElementNode);
     end;
  WriteXMLFile(Doc,'events/'+StringGrid1.Values['eventID']+'/group_data');
  Doc.Free;
  Button4g.Color:=clDefault;
  Button4g.Font.Color:=clDefault;
  Button4g.Font.Bold:=false;
end;

//eventa saglabāšana
procedure TForm1.Button5Click(Sender: TObject);
begin
     writeEvent;
     Button5.Color:=clDefault;
     Button5.Font.Color:=clDefault;
     Button5.Font.Bold:=false;
end;

//distanču un KP saglabāšana
procedure TForm1.Button6Click(Sender: TObject);
var
    Doc: TXMLDocument;
    RootNode, ElementNode,ItemNode,ItemNode1,TextNode,TextNode1: TDOMNode;
    i,j: integer;
begin
    Doc := TXMLDocument.Create;
    RootNode := Doc.CreateElement('course_data');
    Doc.Appendchild(RootNode);
    RootNode:= Doc.DocumentElement;
    for i:=1 to StringGrid6.RowCount-1 do
    with StringGrid6 do
       begin
            ElementNode:=Doc.CreateElement('course');
            ItemNode:=Doc.CreateElement('id');
            TextNode:=Doc.CreateTextNode(Cells[0,i]);
            ItemNode.AppendChild(TextNode);
            ElementNode.AppendChild(ItemNode);
            ItemNode:=Doc.CreateElement('map');
            TextNode:=Doc.CreateTextNode(Cells[1,i]);
            ItemNode.AppendChild(TextNode);
            ElementNode.AppendChild(ItemNode);
            ItemNode:=Doc.CreateElement('mperpix');
            TextNode:=Doc.CreateTextNode(Cells[2,i]);
            ItemNode.AppendChild(TextNode);
            ElementNode.AppendChild(ItemNode);
            Objects[3,i].Free;
            Objects[3,i]:=TStringList.Create;
            for j:=1 to Form2.StringGrid1.RowCount-1 do
            begin
                 (Objects[3,i] as TStringList).Add(Form2.StringGrid1.Cells[1,j]);
                 (Objects[3,i] as TStringList).Add(Form2.StringGrid1.Cells[2,j]);
                 (Objects[3,i] as TStringList).Add(Form2.StringGrid1.Cells[0,j]);
                 ItemNode:=Doc.CreateElement('cp');
                 ItemNode1:=Doc.CreateElement('cp_id');
                 TextNode1:=Doc.CreateTextNode((Objects[3,i] as TStringList).Strings[3*(j-1)]);
                 ItemNode1.AppendChild(TextNode1);
                 ItemNode.AppendChild(ItemNode1);
                 ItemNode1:=Doc.CreateElement('cp_points');
                 TextNode1:=Doc.CreateTextNode((Objects[3,i] as TStringList).Strings[3*(j-1)+1]);
                 ItemNode1.AppendChild(TextNode1);
                 ItemNode.AppendChild(ItemNode1);
                 ItemNode1:=Doc.CreateElement('cp_ord');
                 TextNode1:=Doc.CreateTextNode((Objects[3,i] as TStringList).Strings[3*(j-1)+2]);
                 ItemNode1.AppendChild(TextNode1);
                 ItemNode.AppendChild(ItemNode1);
                 ElementNode.AppendChild(ItemNode);
            end;
            RootNode.AppendChild(ElementNode);
       end;
    for j:=1 to Form2.StringGrid1.RowCount-1 do
    begin
                 ItemNode:=Doc.CreateElement('control');
                 ItemNode1:=Doc.CreateElement('id');
                 TextNode1:=Doc.CreateTextNode(Form2.StringGrid1.Cells[1,j]);
                 ItemNode1.AppendChild(TextNode1);
                 ItemNode.AppendChild(ItemNode1);
                 ItemNode1:=Doc.CreateElement('mapx');
                 TextNode1:=Doc.CreateTextNode(Form2.StringGrid1.Cells[4,j]);
                 ItemNode1.AppendChild(TextNode1);
                 ItemNode.AppendChild(ItemNode1);
                 ItemNode1:=Doc.CreateElement('mapy');
                 TextNode1:=Doc.CreateTextNode(Form2.StringGrid1.Cells[5,j]);
                 ItemNode1.AppendChild(TextNode1);
                 ItemNode.AppendChild(ItemNode1);
                 ItemNode1:=Doc.CreateElement('stations');
                 TextNode1:=Doc.CreateTextNode(Form2.StringGrid1.Cells[3,j]);
                 ItemNode1.AppendChild(TextNode1);
                 ItemNode.AppendChild(ItemNode1);
                 RootNode.AppendChild(ItemNode);
    end;

    WriteXMLFile(Doc,'events/'+StringGrid1.Values['eventID']+'/course_data');
    Doc.Free;
    Button6.Color:=clDefault;
    Button6.Font.Color:=clDefault;
end;

//vai pieļaujams un eksistējošs kartes fails un mērogs
function TForm1.CheckMapFile(fname:string):boolean;
begin
  if (fname='') then
  begin
    MessageDlg(mscC11,mstT11,mtConfirmation,[mbOK],0);
    CheckMapFile:=false;
    exit;
  end;
  if not FileExists(fname) then
  begin
    MessageDlg(mscC11,mstT11a,mtConfirmation,[mbOK],0);
    CheckMapFile:=false;
    exit;
  end;
  CheckMapFile:=true;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
    writeReader(siGetTime);
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  writeReader(siSetTime);
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  writeReader(siGetStationMode);
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  writeReader(siSetStationMode);
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  writeReader(siGetStationCode);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
    i:integer;
begin
  if Button1.Caption=capC2 then
  begin
    for i:=1 to StringGrid5.RowCount-1 do StringGrid5.Cells[6,i]:=capC4;
    Button1.Caption:=capC5;
  end
  else
  begin
    for i:=1 to StringGrid5.RowCount-1 do StringGrid5.Cells[6,i]:=capC3;
    Button1.Caption:=capC2;
  end
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  writeReader(siSetStationCode);
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  writeReader(siSwitchOff);
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  writeReader(siReadConfig);
  sleep(500);
  writeReader(siRead6starMode);
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  writeReader(siGetMemBP);
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  writeReader(siClearBackup);
end;

//rādīt_nerādīt rezultātu logu
procedure TForm1.Button25Click(Sender: TObject);
begin
  if Form6.Visible then
  begin
    Form6.Hide;
    Form6.Timer1.Interval:=0;
  end
  else
  begin
    Form6.Show;
    Form6.Timer1.Interval:=1000;
  end;
end;

procedure TForm1.Button26Change(Sender: TObject);
begin
  if Button26.Checked then
  begin
    Button26.Color:=clRed;
    Button26.Font.Color:=clWhite;
    Button26.Font.Bold:=true;
  end
  else
  begin
    Button26.Color:=clDefault;
    Button26.Font.Color:=clDefault;
    Button26.Font.Bold:=false;
  end;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  Memo2.Lines.SaveToFile('sibackups/backup'+ComboBox1.Text+Edit2.Text);
  MessageDlg(mscC12,mstT12,mtConfirmation,[mbOK],0);
end;

//rādīt_nerādīt pulksteni
procedure TForm1.Button28Click(Sender: TObject);
begin
  if Form8.Visible then
  begin
    Form8.Hide;
    Form8.Timer1.Interval:=0;
  end
  else
  begin
    Form8.Show;
    Form8.Timer1.Interval:=1000;
  end;
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
  StringGrid1.Values['starttime']:=FormatDateTime('yyyy-mm-dd hh:nn:ss',DateTimePicker1.DateTime);
end;

procedure TForm1.Button30Click(Sender: TObject);
begin
    StringGrid1.Values['finishtime']:=FormatDateTime('yyyy-mm-dd hh:nn:ss',DateTimePicker1.DateTime);
 end;

procedure TForm1.Button31Click(Sender: TObject);
begin
    StringGrid1.Values['latetime']:=FormatDateTime('yyyy-mm-dd hh:nn:ss',DateTimePicker1.DateTime);
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
  StringGrid1.Values['sunsettime']:=FormatDateTime('yyyy-mm-dd hh:nn:ss',DateTimePicker1.DateTime);
end;

procedure TForm1.Button33Click(Sender: TObject);
begin
   StringGrid1.Values['sunrisetime']:=FormatDateTime('yyyy-mm-dd hh:nn:ss',DateTimePicker1.DateTime);
end;

//mainīt komandas ID
procedure TForm1.Button34Click(Sender: TObject);
var
    i,j:integer;
begin
  Form9.Label4.Caption:=StringGrid2.Cells[0,StringGrid2.Row];
  if Form9.ShowModal=mrOK then
  begin
       //pārbauda vai tāds ID neeksistē un maina
       for i:=1 to StringGrid2.RowCount-1 do
       begin
        if Form9.Edit1.Text=StringGrid2.Cells[0,i] then
        begin
           MessageDlg('ID already exists!','Such ID already is assigned to '+StringGrid2.Cells[1,i],mtConfirmation,[mbOK],0);
           exit;
        end;
       end;

       for i:=1 to StringGrid2.RowCount-1 do
        if (StringGrid2.Cells[0,i]=Form9.Label4.Caption) then
            begin
                 StringGrid2.Cells[0,i]:=Form9.Edit1.Text;
                 for j:=1 to StringGrid4.RowCount-1 do
                     if StringGrid4.Cells[2,j]=Form9.Label4.Caption then
                     begin
                          StringGrid4.Cells[2,j]:=Form9.Edit1.Text;
                          if StringGrid4.Cells[8,j]='+' then
                          RenameFile('events/'+eventList[RadioGroup1.ItemIndex].Caption+'/punches/'+StringGrid4.Cells[3,i]+'_'+Form9.Label4.Caption,
                          'events/'+eventList[RadioGroup1.ItemIndex].Caption+'/punches/'+StringGrid4.Cells[3,i]+'_'+Form9.Edit1.Text);
                          break;
                     end;
            end;
  end;
end;

//uz KP iestatīšanu
procedure TForm1.Button7Click(Sender: TObject);
var
    fname:string;
begin
    fname:=StringGrid6.Cells[1,StringGrid6.Row];
    if not CheckMapFile(fname) then exit;
    Form2.Caption:=StringGrid6.Cells[0,StringGrid6.Row];
    Form2.Image1.Picture.LoadFromFile(fname);
    Form2.imagefilename:=fname;
    BitmapMake24Bit(Form2.Image1.Picture.Bitmap);
    Form2.SetState(1);
    if Form2.ShowModal=mrOK then
    begin
      Button6Click(Button7);
    end;
end;

//uz distances iestatīšanu
procedure TForm1.Button8Click(Sender: TObject);
var
    i,j:integer;
    fname:string;
begin
     with StringGrid6 do
      begin
        fname:=Cells[1,Row];
        if not CheckMapFile(fname) then exit;
        j:=0;
        while j<(Objects[3,Row] as TStringList).Count-1 do
        begin
           for i:=1 to Form2.StringGrid1.RowCount-1 do
           if Form2.StringGrid1.Cells[1,i]=(Objects[3,Row] as TStringList).Strings[j] then
              Form2.StringGrid1.Cells[2,i]:=(Objects[3,Row] as TStringList).Strings[j+1];
           j:=j+3;
        end;
        if Sender=Button8 then
        begin
          Form2.Caption:=Cells[0,Row];
          Form2.Image1.Picture.LoadFromFile(fname);
          BitmapMake24Bit(Form2.Image1.Picture.Bitmap);
          Form2.imagefilename:=Cells[1,Row];
          Form2.SetState(2);
          if Form2.ShowModal=mrOK then
          begin
            Button6Click(Button8);
         end;
        end;
      end;
end;

//uz mēroga iestatīšanu
procedure TForm1.Button9Click(Sender: TObject);
var
    dist: real;
    fname:string;
begin
  fname:=StringGrid6.Cells[1,StringGrid6.Row];
  if not CheckMapFile(fname) then exit;
  Form2.SetState(3);
  Form2.Image1.Picture.LoadFromFile(fname);
  BitmapMake24Bit(Form2.Image1.Picture.Bitmap);
  Form2.imagefilename:=fname;
  if Form2.ShowModal=mrOK then
  begin
    dist:=sqrt((Form2.ScaleX2-Form2.ScaleX1)*(Form2.ScaleX2-Form2.ScaleX1)+(Form2.ScaleY2-Form2.ScaleY1)*(Form2.ScaleY2-Form2.ScaleY1));
    StringGrid6.Cells[2,StringGrid6.Row]:=FloatToStr(StrToInt(Form2.Edit1.Text)/dist);
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  saveEverything;
end;

//komandas PDF lapiņa
procedure TForm1.TeamPDFResult();
begin
  prevTime:=0;
  prevKP:='';
  frReport1.LoadFromFile('teamReport.lrf');
//  frReport1.ShowReport;
  frReport1.PrepareReport;
  frReport1.PrintToDefault:=true;
  frReport1.PrintPreparedReport('',0);
end;

procedure TForm1.frReport1GetValue(const ParName: String; var ParValue: Variant);
var
    i:integer;
    d,v:float;
    spl:TDateTime;
begin
  if ParName='team0' then
  begin
    ParValue:=StringGrid1.Values['eventname'];
    exit;
  end;
  if ParName='team1' then
  begin
    ParValue:=StringGrid2.Cells[1,StringGrid2.Row];
    exit;
  end;
  if ParName='team2' then
  begin
    ParValue:=Form5.Label1.Caption; //time
    exit;
  end;
  if ParName='team3' then
  begin
    ParValue:=Form5.Label2.Caption; //points
    exit;
  end;
  if ParName='team4' then
  begin
    ParValue:=Form5.Label3.Caption; //penalty
    exit;
  end;
  if ParName='team5' then
  begin
    ParValue:=Form5.Label4.Caption; //result
    exit;
  end;
  if ParName='team6' then
  begin
    for i:=0 to Length(allSplits)-1 do
    if allSplits[i].team=Form5.Caption then
    begin
      ParValue:=Length(allsplits[i].splits)-1; //KP skaits
      exit;
    end;
  end;
  if ParName='team7' then
  begin
    ParValue:=FloatToStr((totalDist div 100)/10)+'km'; //distance
    exit;
  end;
  if ParName='team8' then
  begin
    ParValue:=FloatToStr(Round((laiks(Form5.StringGrid1.Cells[2,Form5.StringGrid1.RowCount-1])-laiks(Form5.StringGrid1.Cells[2,0]))*24*60*100000/totalDist)/100); //min uz km
    exit;
  end;

  if ParName='lauks1' then
  begin
    ParValue:=Form5.StringGrid1.Cells[0,lp];
    exit;
  end;
  if ParName='lauks2' then
  begin
    ParValue:=Form5.StringGrid1.Cells[1,lp];
    exit;
  end;
  if ParName='lauks3' then
  begin
    ParValue:=Copy(Form5.StringGrid1.Cells[2,lp],12,100);
    exit;
  end;
  if ParName='lauks4' then
  begin
    ParValue:=Form5.StringGrid1.Cells[3,lp];
    exit;
  end;
  if ParName='lauks5' then
  begin
    ParValue:=Form5.StringGrid1.Cells[4,lp];
    exit;
  end;
  if ParName='lauks6' then
  begin
    ParValue:=Form5.StringGrid1.Cells[5,lp];
    exit;
  end;
  if ParName='lauks7' then
  begin
    for i:=0 to StringGrid2.RowCount-1 do
    if StringGrid2.Cells[0,i]=Form5.Caption then
    begin
      ParValue:='';
      if (Form5.StringGrid1.Cells[7,lp]<>'') then
      begin
        ParValue:=FormatDateTime('hh:nn:ss',StrToFloat(Form5.StringGrid1.Cells[7,lp]));
      end;
      exit;
    end;
  end;
  if ParName='lauks8' then
  begin
    ParValue:='';
    if (Form5.StringGrid1.Cells[4,lp]<>'') then
    begin
      if prevTime=0 then
      begin
        prevKP:=Form5.StringGrid1.Cells[1,lp];
        prevTime:=1;
      end
      else
      begin
        d:=distanceKP(Form5.StringGrid1.Cells[1,lp],prevKP);
        prevKP:=Form5.StringGrid1.Cells[1,lp];
        if d=0 then
          ParValue:='N/A'
        else
        begin
          ParValue:='N/A';
          if Form5.StringGrid1.Cells[7,lp]<>'' then
            ParValue:=FloatToStr(Round(StrToFloat(Form5.StringGrid1.Cells[7,lp])*24*60*10000/d)/10);
        end;
      end;
    end;
  end;
end;

procedure TForm1.frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
begin
  eof:=lp>Form5.StringGrid1.RowCount-1;
end;

procedure TForm1.frUserDataset1First(Sender: TObject);
begin
  lp:=0;
  prevTime:=0;
  prevKP:='';
end;

procedure TForm1.frUserDataset1Next(Sender: TObject);
begin
  Inc(lp);
end;

//apstrādā ielasīto identu
procedure TForm1.processPunch(cardNumber:longint);
var
    fname,tname:string;
    i,j,k,pn,tn:integer;
    FI,FO:TextFile;
    s,s1,s2:string;
begin
  tname:='';
  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption;
  for i:=1 to StringGrid4.RowCount-1 do
      if StringGrid4.Cells[3,i]=IntToStr(cardNumber) then
      begin
        tname:=StringGrid4.Cells[2,i];
        StringGrid4.Cells[8,i]:='+';
        for j:=1 to StringGrid2.RowCount-1 do
          if StringGrid2.Cells[0,j]=tname then
          begin
            tn:=j;
            StringGrid2.Row:=j;
            pn:=0;
            for k:=1 to StringGrid3.RowCount-1 do
            begin
              if StringGrid3.Cells[5,k]=IntToStr(cardNumber) then StringGrid3.Cells[8,k]:='1';
              if StringGrid3.Cells[8,k]='1' then pn:=pn+1;
            end;
          end;
        break;
      end;
  AssignFile(FI,fname+'/raw/'+IntToStr(cardNumber));
  Reset(FI);
  if tname='' then
  begin
    tname:='9999';
    fname:='punches_9999/';
    AssignFile(FO,fname+IntToStr(cardNumber)+'_'+tname);
    Rewrite(FO);
  end
  else
  begin
    AssignFile(FO,fname+'/punches/'+IntToStr(cardNumber)+'_'+tname);
    Rewrite(FO);
  end;
  for i:=1 to 5 do
  begin
    Readln(FI,s);
    Writeln(FO,s);
  end;
  while not eof(FI) do
  begin
    Readln(FI,s);
    for i:=1 to Form2.StringGrid1.RowCount-1 do
    //pārbauda staciju atbilstību KP, ar "set controls" pietiek norādīt tikai tās stacijas, kas nesakrīt ar KP numuriem
    begin
     if Form2.StringGrid1.Cells[3,i]=Copy(s,1,Pos('=',s)-1) then
     begin
        s:=Form2.StringGrid1.Cells[1,i]+Copy(s,Pos('=',s),100);
     end;
    end;
    Writeln(FO,s);
  end;
  CloseFile(FI);
  CloseFile(FO);
  if pn=StringGrid3.RowCount-1 then
  begin
    StringGrid2.Cells[4,tn]:='OK';
    PageControl1.ActivePage:=TabSheet6;
    PageControl1Change(PageControl1);
    StringGrid2.Col:=6;
    StringGrid2Click(StringGrid2);
    PageControl1.ActivePage:=TabSheet8;
    PageControl1Change(PageControl1);
  end;
end;

//SI lasītāja datu apstrāde
procedure TForm1.LazSerial1RxData(Sender: TObject);
var
   s,ss: string;
   i,j: integer;
   tm,k,basepointer,code:word;
   a1,a2:longint;
   dtm:TDateTime;
   fname:string;

procedure AdjTime();
begin
  if dtm>currT then
  begin
    rStart:=rStart+0.5;
    currT:=currT+0.5;
    dtm:=dtm+0.5;
  end;
end;

procedure finishPunch();
begin
  dtm:=rStart+finishTime/86400;
  AdjTime;
  Memo1.Append('F='+FormatDateTime('YYYY-MM-DD hh:nn:ss',dtm));
  //raksta raw failu
  Memo1.Lines.SaveToFile(fname+IntToStr(cardNumber));
  Label2.Caption:=capC6;
  processPunch(cardNumber);
  //beep($01);
end;

procedure setStart();
begin
  if evType='rogain' then
  begin
    rStart:=evDate;
    while (rStart+0.5<evStart) do rStart:=rStart+0.5;
    currT:=rStart+0.5;
    dtm:=evStart;
  end
  else
      dtm:=startTime;
  Memo1.Append('S='+FormatDateTime('YYYY-MM-DD hh:nn:ss',dtm));
end;

procedure AssignSICard(cn:longint);
var
   i:integer;
begin
  for i:=1 to StringGrid4.RowCount-1 do
    if StringGrid4.Cells[3,i]=IntToStr(cn) then
       if MessageDlg('Assign SI card','SI card: '+IntToStr(cn)+#10#13'is assigned to'#10#13+StringGrid4.Cells[1,i]+#10#13'assign anyway?',mtConfirmation,[mbOK,mbCancel],0)=mrOK then
       begin
         StringGrid4.Cells[3,StringGrid4.Row]:=IntToStr(cn);
         exit;
       end
       else exit;
  if MessageDlg('Assign SI card','Assign SI card: '+IntToStr(cn)+#10#13'to'#10#13+StringGrid4.Cells[1,StringGrid4.Row],mtConfirmation,[mbOK,mbCancel],0)=mrOK then
  begin
    StringGrid4.Cells[3,StringGrid4.Row]:=IntToStr(cn);
    exit;
  end;
end;

begin
  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/raw/';
  s:=LazSerial1.ReadData;
//for i:=1 to Length(s) do
//  Write(IntToHex(Ord(s[i]),2)+' ');
//writeln;
  if LazSerial1.SynSer.LastError = 0 then
  begin
    if Ord(s[1])=$15 then
    begin
      MessageDlg(mscC13,mstT13,mtConfirmation,[mbOK],0);
      exit;
    end;
    case Ord(s[2]) of
      $e5:
   	//SI5 in
        begin
   	Memo1.Clear;
   	cardNumber:=(Ord(s[8])shl 8)+Ord(s[9]);
   	if Ord(s[7])<>1 then
   	begin
   	     cardNumber:=100000*Ord(s[7])+cardNumber;
   	end;
   	Memo1.Append(capC7+IntToStr(cardNumber));
        Label1.Caption:=capC8+IntToStr(cardNumber)+capC8a;
   	if ToggleBox2.Checked then
        begin
          AssignSICard(cardNumber);
        end
        else
        begin
	  readSI5Data();
        end;
        exit;
        end;
      $e6:
   	//SI6 in
        begin
   	Memo1.Clear;
   	cardNumber:=((((((Ord(s[6]))shl 8)+Ord(s[7]))shl 8)+Ord(s[8]))shl 8)+Ord(s[9]);
   	Memo1.Append(capC7+IntToStr(cardNumber));
        Label2.Caption:=capC8+IntToStr(cardNumber)+capC8a;
   	if ToggleBox2.Checked then
        begin
          AssignSICard(cardNumber);
        end
        else
        begin
  	  readSI6Data($00);
        end;
        exit;
        end;
      $e8:
	//SI8,SI9,SI10,SI11,SIAC,pCard,tCard in
        begin
	Memo1.Clear;
   	cardNumber:=((((Ord(s[7]))shl 8)+Ord(s[8]))shl 8)+Ord(s[9]);
	Memo1.Append(capC7+IntToStr(cardNumber));
        Label2.Caption:=capC8+IntToStr(cardNumber)+capC8a;
   	if ToggleBox2.Checked then
        begin
          AssignSICard(cardNumber);
        end
        else
        begin
	  readSI8Data(0);
        end;
	exit;
        end;
      $b1:
	//SI5 read
        begin
        punchCount:=Ord(s[6+23])-1;
	Memo1.Append('clear: None');
	tm:=Ord(s[6+25])*256+Ord(s[6+26]);
	Memo1.Append('check: '+FormatDateTime('hh:nn:ss',tm/86400));
	tm:=Ord(s[6+19])*256+Ord(s[6+20]);
	Memo1.Append('start: '+FormatDateTime('hh:nn:ss',tm/86400));
        startTime:=tm;
	finishTime:=Ord(s[6+21])*256+Ord(s[6+22]);
	Memo1.Append('punches:');
        setStart;
	k:=0;
        while k<punchCount do
	begin
		if k<=30 then
		begin
			basepointer:=6+33+3*(k mod 5)+(k div 5)*16;
			code:=Ord(s[basepointer]);
			tm:=Ord(s[basepointer+1])*256+Ord(s[basepointer+2]);
			dtm:=rStart+tm/86400;
                        AdjTime;
			Memo1.Append(IntToStr(code)+'='+FormatDateTime('YYYY-MM-DD hh:nn:ss',dtm));
		end;
		if (k>30)and(k<=36) then
		begin
			basepointer:=6+32+(k-31)*16;
			code:=Ord(s[basepointer]);
			dtm:=rStart;
			Memo1.Append(IntToStr(code)+'='+FormatDateTime('YYYY-MM-DD hh:nn:ss',dtm));
		end;
                k:=k+1;
	end;
        finishPunch();
	exit;
        end;
      $e1:
	//SI6 read
        begin
	  if Ord(s[6])=$00 then
	  begin
	    punchCount:=Ord(s[18+7]);
	    tm:=(Ord(s[34+7])shl 8)+Ord(s[35+7]);
	    Memo1.Append('clear: '+FormatDateTime('hh:nn:ss',tm/86400));
	    tm:=(Ord(s[30+7])shl 8)+Ord(s[31+7]);
	    Memo1.Append('check: '+FormatDateTime('hh:nn:ss',tm/86400));
	    tm:=(Ord(s[26+7])shl 8)+Ord(s[27+7]);
	    Memo1.Append('start: '+FormatDateTime('hh:nn:ss',tm/86400));
            startTime:=tm;
	    finishTime:=(Ord(s[22+7])shl 8)+Ord(s[23+7]);
	    Memo1.Append('punches:');
            setStart;
            readSI6Data($06);
            exit;
	  end;
	  if (Ord(s[6])>=2) and (Ord(s[6])<=7) then
	  begin
            if punchCount>32 then j:=32 else j:=punchCount;
	    for i:=0 to j-1 do
	    begin
		    tm:=Ord(s[7+4*i+2])shl 8+Ord(s[7+4*i+3]);
    		    dtm:=rStart+tm/86400;
                    AdjTime;
		    Memo1.Append(IntToStr(Ord(s[7+4*i+1]))+'='+FormatDateTime('yyyy-mm-dd hh:nn:ss',dtm));
            end;
	    if punchCount>32 then punchCount:=punchCount-32 else punchCount:=0;
	    if punchCount>0 then
	    begin
		    case Ord(s[6]) of
		         $06:
			    readSI6Data($07);
		         $07:
			    readSI6Data($02);
		         $02:
			    readSI6Data($03);
		         $03:
			    readSI6Data($04);
		         $04:
			    readSI6Data($05);
		    end;
	    end
            else
              finishPunch();
	  end;
          exit;
        end;
      $ef:
   	//SI8,SI9,SI10,SI11,SIAC,tCard,pCard read
        begin
   	if Ord(s[6])=$00 then
   	begin
   		punchCount:=Ord(s[7+22]);
   		tm:=(Ord(s[10+7])shl 8)+Ord(s[11+7]);
   		Memo1.Append('clear: '+FormatDateTime('hh:nn:ss',tm/86400));
   		tm:=(Ord(s[12+7])shl 8)+Ord(s[13+7]);
   		Memo1.Append('check: '+FormatDateTime('hh:nn:ss',tm/86400));
   		tm:=(Ord(s[14+7])shl 8)+Ord(s[15+7]);
   		Memo1.Append('start: '+FormatDateTime('hh:nn:ss',tm/86400));
                startTime:=tm;
   		finishTime:=(Ord(s[18+7])shl 8)+Ord(s[19+7]);
   		Memo1.Append('punches:');
                setStart;
   		if (cardNumber>=1000000)and(cardNumber<=1999999) then //SI9
   		begin
   			i:=0;
   			while (i<punchCount)and(i<18) do
   			begin
   				tm:=(Ord(s[7+14*4+4*i+2])shl 8)+Ord(s[7+14*4+4*i+3]);
        			dtm:=rStart+tm/86400;
                                AdjTime;
   				Memo1.Append(s[7+14*4+4*i+1]+'='+FormatDateTime('yyyy-mm-dd hh:nn:ss',dtm));
   				i:=i+1;
   			end;
   			punchCount:=punchCount-i;
   		end;
   		if (cardNumber>=6000000)and(cardNumber<=6999999) then //tCard
   		begin
   			i:=0;
   			while (i<punchCount)and(i<9) do
   			begin
   				tm:=(Ord(s[7+14*4+8*i+5])shl 8)+Ord(s[7+14*4+8*i+6]);
        			dtm:=rStart+tm/86400;
                                AdjTime;
   				Memo1.Append(IntToStr(Ord(s[7+14*4+8*i]))+'='+FormatDateTime('yyyy-mm-dd hh:nn:ss',dtm));
   				i:=i+1;
   			end;
   			punchCount:=punchCount-9;
   		end;
   		if (cardNumber>=1000000)and(cardNumber<=6999999) then
   		begin
   			readSI8Data($01);
   		end;
   		if (cardNumber>=7000000)and(cardNumber<=9999999) then
   		begin
   			readSI8Data($04);
   		end;
   	end;
   	if Ord(s[6])=$01 then
   	begin
   		if (cardNumber>=1000000)and(cardNumber<=1999999) then //SI9
   		begin
   			i:=0;
                        while i<punchCount do
   			begin
   				tm:=(Ord(s[7+4*i+2])shl 8)+Ord(s[7+4*i+3]);
        			dtm:=rStart+tm/86400;
                                AdjTime;
  				Memo1.Append(IntToStr(Ord(s[7+4*i+1]))+'='+FormatDateTime('yyyy-mm-dd hh:nn:ss',dtm));
                                i:=i+1;
   			end;
                        finishPunch();
                        exit;
   		end;
   		if (cardNumber>=2000000)and(cardNumber<=2999999) then //SI8
   		begin
   			i:=0;
                        while i<punchCount do
   			begin
   				tm:=(Ord(s[15+4*i+2])shl 8)+Ord(s[15+4*i+3]);
        			dtm:=rStart+tm/86400;
                                AdjTime;
   				Memo1.Append(IntToStr(Ord(s[15+4*i+1]))+'='+FormatDateTime('yyyy-mm-dd hh:nn:ss',dtm));
                                i:=i+1;
   			end;
                        finishPunch();
                        exit;
   		end;
   		if (cardNumber>=4000000)and(cardNumber<=4999999) then //pCard
   		begin
   			i:=0;
                        while i<punchCount do
   			begin
   				tm:=(Ord(s[7+12*4+4*i+2])shl 8)+Ord(s[7+12*4+4*i+3]);
        			dtm:=rStart+tm/86400;
                                AdjTime;
   				Memo1.Append(IntToStr(Ord(s[7+12*4+4*i+1]))+'='+FormatDateTime('yyyy-mm-dd hh:nn:ss',dtm));
                                i:=i+1;
   			end;
                        finishPunch();
                        exit;
   		end;
   		if (cardNumber>=6000000)and(cardNumber<=6999999) then //tCard
   		begin
   			i:=0;
                        while i<punchCount do
   			begin
   				tm:=(Ord(s[7+8*i+5])shl 8)+Ord(s[7+8*i+6]);
        			dtm:=rStart+tm/86400;
                                AdjTime;
   				Memo1.Append(IntToStr(Ord(s[7+8*i]))+'='+FormatDateTime('yyyy-mm-dd hh:nn:ss',dtm));
                                i:=i+1;
   			end;
                        finishPunch();
                        exit;
   		end;
   	end;
   	if Ord(s[6])>=$04 then //SI10,SI11,SIAC
   	begin
   		if punchCount>32 then j:=32 else j:=punchCount;
   		i:=0;
                while i<j do
   		begin
   			tm:=(Ord(s[7+4*i+2])shl 8)+Ord(s[7+4*i+3]);
			dtm:=rStart+tm/86400;
                        AdjTime;
   			Memo1.Append(IntToStr(Ord(s[7+4*i+1]))+'='+FormatDateTime('yyyy-mm-dd hh:nn:ss',dtm));
                        i:=i+1;
   		end;
   		punchCount:=punchCount-32;
   		if punchCount>0 then
   		begin
   			readSI8Data(Ord(s[6])+1);
   		end
                else
   		begin
                  finishPunch();
                  exit;
   		end;
   	end;
        exit;
        end;
      $e7:
        //SI card out
        begin
          Label2.Caption:=capC8+IntToStr(cardNumber)+capC8b;
          exit;
        end;
      $81:
        begin
        //get station backup data
        k:=0;
        a1:=(((siBackupMemC[1])*256)+siBackupMemC[2])*256+siBackupMemC[3];
        a2:=(((siBackupMemP[1])*256)+siBackupMemP[2])*256+siBackupMemP[3];
        while (a1<a2)and(k<128) do
        begin
   	  if Ord(s[k+9])<$07 then
          begin
            cardNumber:=(Ord(s[k+10])shl 8)+Ord(s[k+11]);
   	    if Ord(s[k+9])>1 then
   	    begin
   	     cardNumber:=100000*Ord(s[k+9])+cardNumber;
   	    end;
          end
          else
   	     cardNumber:=((((Ord(s[k+9]))shl 8)+Ord(s[k+10]))shl 8)+Ord(s[k+11]);
          i:=Ord(s[k+14])*256+Ord(s[k+15]);
          if (Ord(s[k+13]) mod 2=1) then i:=i+12*3600;
   	  Memo2.Lines.Add(IntToStr(cardNumber)+'='+IntToStr(Ord(s[k+12]) shr 2 +2000)+'-'+
          IntToStr((Ord(s[k+12]) mod 4) shl 2 + Ord(s[k+13]) shr 6)+'-'+IntToStr((Ord(s[k+13]) mod 64) shr 1)+' '+
          IntToStr(i div 3600)+':'+IntToStr((i mod 3600) div 60)+':'+IntToStr(i mod 60));
          a1:=a1+8;
          k:=k+8;
        end;
        if (a1<a2) then
        begin
          siBackupMemC[3]:=a1 mod 256;
          a1:=a1 div 256;
          siBackupMemC[2]:=a1 mod 256;
          a1:=a1 div 256;
          siBackupMemC[1]:=a1 mod 256;
          a1:=a1 div 256;
          siBackupMemC[0]:=a1 mod 256;
          sleep(300);
          writeReader(siReadMem);
          exit;
        end
        else
          if extraBackup then
          begin
            if MessageDlg(mscC14,mstT14,mtConfirmation,[mbNo,mbYes],0)=mrYes then
            begin
              a2:=a1+128;
              siBackupMemC[3]:=a1 mod 256;
              a1:=a1 div 256;
              siBackupMemC[2]:=a1 mod 256;
              a1:=a1 div 256;
              siBackupMemC[1]:=a1 mod 256;
              a1:=a1 div 256;
              siBackupMemC[0]:=a1 mod 256;
              siBackupMemP[3]:=a2 mod 256;
              a2:=a2 div 256;
              siBackupMemP[2]:=a2 mod 256;
              a2:=a2 div 256;
              siBackupMemP[1]:=a2 mod 256;
              a2:=a2 div 256;
              siBackupMemP[0]:=a2 mod 256;
              sleep(300);
              writeReader(siReadMem);
              exit;
            end
            else
              extraBackup:=false;
          end
          else
            MessageDlg(mscC15,mstT15,mtConfirmation,[mbOK],0);
        exit;
        end;
      $83:
        //config
        begin
          if Ord(s[6])=$74 then
          begin
            i:=Ord(s[7]) and $01;
            if i=1 then CheckGroup1.Checked[0]:=true else CheckGroup1.Checked[0]:=false;
            i:=Ord(s[7]) and $02;
            if i=1 then CheckGroup1.Checked[1]:=true else CheckGroup1.Checked[1]:=false;
            i:=Ord(s[7]) and $04;
            if i=1 then CheckGroup1.Checked[2]:=true else CheckGroup1.Checked[2]:=false;
            i:=Ord(s[7]) and $80;
            if i=1 then CheckGroup1.Checked[3]:=true else CheckGroup1.Checked[3]:=false;
          end;
          if Ord(s[6])=$33 then
          begin
            if Ord(s[7])=$FF then CheckGroup1.Checked[4]:=true else CheckGroup1.Checked[4]:=false;
          end;
          if Ord(s[6])=$72 then
          begin
            Edit2.Text:=IntToStr(Ord(s[7]));
          end;
          if Ord(s[6])=$71 then
          begin
            case Ord(s[7]) of
              $02:
                begin
                  ComboBox1.ItemIndex:=0;
                end;
              $03:
                begin
                  ComboBox1.ItemIndex:=1;
                end;
              $04:
                begin
                  ComboBox1.ItemIndex:=2;
                end;
              $05:
                begin
                  ComboBox1.ItemIndex:=3;
                end;
              $07:
                begin
                  ComboBox1.ItemIndex:=4;
                end;
              $0A:
                begin
                  ComboBox1.ItemIndex:=5;
                end;
            end;
          end;
          if Ord(s[6])=$1C then
          begin
            siBackupMemP[0]:=Ord(s[7]);
            siBackupMemP[1]:=Ord(s[8]);
            siBackupMemP[2]:=Ord(s[12]);
            siBackupMemP[3]:=Ord(s[13]);
            if (((siBackupMemP[1])*256)+siBackupMemP[2])*256+siBackupMemP[3]=256 then
            begin
              if MessageDlg(mscC16,mstT16,mtConfirmation,[mbNo,mbYes],0)=mrYes then
              begin
                extraBackup:=true;
                siBackupMemP[0]:=$00;
                siBackupMemP[1]:=$00;
                siBackupMemP[2]:=$02;
                siBackupMemP[3]:=$00;
              end
              else
              begin
                extraBackup:=false;
                exit;
              end;
            end;
            siBackupMemC[0]:=$00;
            siBackupMemC[1]:=$00;
            siBackupMemC[2]:=$01;
            siBackupMemC[3]:=$00;
            Memo2.Clear;
            writeReader(siReadMem);
            exit;
          end;
          exit;
        end;
      $f7:
        //get time
        begin
          i:=Ord(s[9]) and $01;
          if i=1 then j:=12 else j:=0;
          k:=Ord(s[10])*256+Ord(s[11]);
          Edit1.Text:=IntToStr(2000+Ord(s[6]))+'-'+IntToStr(Ord(s[7]))+'-'+IntToStr(Ord(s[8]))+' '+IntToStr(j+k div 3600)+':'+IntToStr(k div 60 - 60*(k div 3600))+':'+IntToStr(k mod 60);
          exit;
        end;
      $f6:
        //time set
        begin
          writeReader(siGetTime);
          exit;
        end;
      $f5:
        //backup cleared
        begin
          MessageDlg(mscC17,mstT17,mtConfirmation,[mbOK],0);
          exit;
        end;
    end;
    SetLength(siReaderData,Length(s));
    for i:=1 to Length(s) do
    begin
         siReaderData[i-1]:=Ord(s[i]);
    end;
  end
  else
  begin
     Memo1.Lines.Add(capC9 + LazSerial1.SynSer.LastErrorDesc );
  end;

end;

//komandu spliti un ceļš
procedure TForm1.MenuItem13Click(Sender: TObject);
var
   fname:string;
   rt: string;
   i,j,k,m,n,kk:integer;
   tottime,totbest:TDateTime;
   totpoints:integer;
   totdist:float;
   splitcount,splitplace:integer;
   s:string;
begin
  PageControl1.ActivePage:=TabSheet6;
  PageControl1Change(PageControl1);
  SetLength(bestSplits,Form2.StringGrid1.RowCount*Form2.StringGrid1.RowCount);
  for i:=1 to Form2.StringGrid1.RowCount-1 do
  begin
    for j:=1 to Form2.StringGrid1.RowCount-1 do
    begin
      bestSplits[(i-1)*Form2.StringGrid1.RowCount+(j-1)].kp_from:=Form2.StringGrid1.Cells[1,i];
      bestSplits[(i-1)*Form2.StringGrid1.RowCount+(j-1)].kp_to:=Form2.StringGrid1.Cells[1,j];
      bestSplits[(i-1)*Form2.StringGrid1.RowCount+(j-1)].time:=10;
    end;
  end;
  for i:=0 to Length(allSplits)-1 do
  begin
    for k:=0 to Length(allSplits[i].splits)-1 do
    begin
      for j:=0 to Length(bestSplits)-1 do
      begin
        if (bestSplits[j].kp_from=allSplits[i].splits[k].kp_from)and
            (bestSplits[j].kp_to=allSplits[i].splits[k].kp_to)and
            (bestSplits[j].time>allSplits[i].splits[k].time) then
            bestSplits[j].time:=allSplits[i].splits[k].time;
      end;
    end;
  end;
  for i:=1 to StringGrid2.RowCount-1 do
  if StringGrid2.Cells[4,i]='OK' then begin
    k:=0;
    while allSplits[k].team<>StringGrid2.Cells[0,i] do k:=k+1;
    fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/teamresults/'+StringGrid2.Cells[0,i]+'.htm';
    Form3.Memo1.Clear;
    Form3.Memo1.Lines.Add('<html><head>');
    Form3.Memo1.Lines.Add('<meta http-equiv="Content-Type" content="text/html; charset=utf-8">');
    Form3.Memo1.Lines.Add('<link rel="stylesheet" type="text/css" media="screen" href="style.css" />');
    Form3.Memo1.Lines.Add('</head><body>');
    Form3.Memo1.Lines.Add('<table border="1">');
    Form3.Memo1.Lines.Add('<tr class="resultheader"><td>KP</td><td>Atzīmēšanās laiks(intervāls)</td><td>Posma laiks(Labākais p.l.)<br /> [Vieta posmā]</td><td>Punkti</td><td>Distance</td><td>min/km</td><td>1 punkta laiks/distance</td></tr>');
    Form3.Memo1.Lines.Add('<tr class="r1"><td>S</td><td>'+StringGrid1.Values['starttime']+
      '</td><td></td><td></td><td></td><td></td><td></td></tr>');
    tottime:=0;
    totpoints:=0;
    totdist:=0;
    totbest:=0;
    for j:=0 to Length(allSplits[k].splits)-1 do
    begin
      if j mod 2=0 then s:='r0' else s:='r1';
      Form3.Memo1.Lines.Add('<tr class="'+s+'"><td>'+allSplits[k].splits[j].kp_to+'</td>');
      tottime:=tottime+allSplits[k].splits[j].time;
      Form3.Memo1.Lines.Add('<td>'+FormatDateTime('yyyy-mm-dd hh:nn:ss',laiks(StringGrid1.Values['starttime'])+tottime)+'('+
      allSplits[k].splits[j].delta_t+')</td>');
      splitplace:=1;
      splitcount:=1;
      for m:=0 to Length(allSplits)-1 do
        for n:=0 to Length(allSplits[m].splits)-1 do
          if (allSplits[m].splits[n].kp_from=allSplits[k].splits[j].kp_from)and(allSplits[m].splits[n].kp_to=allSplits[k].splits[j].kp_to) then
          begin
            if m<>k then splitcount:=splitcount+1;
            if (allSplits[m].splits[n].time<allSplits[k].splits[j].time) then splitplace:=splitplace+1;
          end;
      for m:=0 to Length(bestSplits)-1 do
        if (bestSplits[m].kp_from=allSplits[k].splits[j].kp_from)and(bestSplits[m].kp_to=allSplits[k].splits[j].kp_to) then break;
      totbest:=totbest+bestSplits[m].time;
      Form3.Memo1.Lines.Add('<td>'+FormatDateTime('hh:nn:ss',allSplits[k].splits[j].time)+
      ' ('+FormatDateTime('hh:nn:ss',bestSplits[m].time)+') ['+IntToStr(splitplace)+'./'+IntToStr(splitcount)+']</td>');
      totpoints:=totpoints+StrToInt(allSplits[k].splits[j].points);
      Form3.Memo1.Lines.Add('<td>'+allSplits[k].splits[j].points+' | '+IntToStr(totpoints)+'</td>');
      totdist:=totdist+Round(distanceKP(allSplits[k].splits[j].kp_from,allSplits[k].splits[j].kp_to)/10)/100;
      Form3.Memo1.Lines.Add('<td>'+FloatToStr(Round(distanceKP(allSplits[k].splits[j].kp_from,allSplits[k].splits[j].kp_to)/10)/100)+' | '+FloatToStr(totdist)+'</td>');
      Form3.Memo1.Lines.Add('<td>'+FormatDateTime('hh:nn:ss',(allSplits[k].splits[j].time/(distanceKP(allSplits[k].splits[j].kp_from,allSplits[k].splits[j].kp_to)/1000)))+'</td>');
      if StrToInt(allSplits[k].splits[j].points)>0 then
        Form3.Memo1.Lines.Add('<td>'+FormatDateTime('hh:nn:ss',(allSplits[k].splits[j].time/StrToInt(allSplits[k].splits[j].points)))+' | '+
        FloatToStr(Round(distanceKP(allSplits[k].splits[j].kp_from,allSplits[k].splits[j].kp_to)/(10*StrToInt(allSplits[k].splits[j].points)))/100)+'</td>')
      else
        Form3.Memo1.Lines.Add('<td></td>');
    end;
    Form3.Memo1.Lines.Add('<tr class="r2"><td>'+IntToStr(Length(allSplits[k].splits)-1)+'</td><td></td><td>'+FormatDateTime('hh:nn:ss',tottime)+
    '('+FormatDateTime('hh:nn:ss',totbest)+')</td><td>'+IntToStr(totpoints)+'</td><td>'+FloatToStr(totdist)+'</td><td>'+
    FormatDateTime('hh:nn:ss',tottime/totdist)+'</td><td>'+FormatDateTime('hh:nn:ss',tottime/totpoints)+'/'+FloatToStr(Round(totdist*100/totpoints)/100)+'</td></tr>');
    Form3.Memo1.Lines.Add('</table><br />');
    rt:=StringGrid1.Values['routetype'];
    if rt='' then rt:='png';
    Form3.Memo1.Lines.Add('<img src="'+StringGrid2.Cells[0,i]+'.'+rt+'"');
    Form3.Memo1.Lines.Add('</body>');
    Form3.Memo1.Lines.Add('</html>');
    Form3.Memo1.Lines.SaveToFile(fname);

    if i=i then
    begin
      Form2.Image1.Picture.LoadFromFile(StringGrid6.Cells[1,1]);
      BitmapMake24Bit(Form2.Image1.Picture.Bitmap);
      with Form2.Image1.Picture.Bitmap.Canvas do
      begin
        Pen.Color :=$FF00FF;
        for j:=1 to Form2.StringGrid1.RowCount-1 do
          if Form2.StringGrid1.Cells[1,j]='S' then
            MoveTo(Round(StrToFloat(Form2.StringGrid1.Cells[4,j])),Round(StrToFloat(Form2.StringGrid1.Cells[5,j])));
        for j:=0 to Length(allSplits[k].splits)-1 do
        begin
          if StrToInt(allSplits[k].splits[j].points)>0 then
            kk:=Round(Round(24*60*allSplits[k].splits[j].time/StrToInt(allSplits[k].splits[j].points))/6)
          else
            kk:=5;
          Pen.Width:=6-kk;
          for m:=1 to Form2.StringGrid1.RowCount-1 do
            if Form2.StringGrid1.Cells[1,m]=allSplits[k].splits[j].kp_to then
              LineTo(Round(StrToFloat(Form2.StringGrid1.Cells[4,m])),Round(StrToFloat(Form2.StringGrid1.Cells[5,m])));
        end;
      end;
      Form2.Image1.Picture.SaveToFile('events/'+eventList[RadioGroup1.ItemIndex].Caption+'/teamresults/'+StringGrid2.Cells[0,i]+'.png');
    end;
  end;
end;

//programmas beigas
procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  saveEverything;
  Halt;
end;

procedure TForm1.writeReader(si:siMode);
var
  dd:array of byte;
  dd1:array[0..1] of byte;
  i:integer;
  cc,y,m,d,h,min,sec,ms,secs:word;
  sii:array of byte;
  dt:TDateTime;
begin
  dd1[0]:=$FF;
  dd1[1]:=$02;
  case si of
    siReadConfig:
      begin
         SetLength(sii,Length(si1));
         for i:=0 to Length(si1)-1 do sii[i]:=si1[i];
      end;
    siGetTime:
      begin
         SetLength(sii,Length(si2));
         for i:=0 to Length(si2)-1 do sii[i]:=si2[i];
      end;
    siSetTime:
      begin
         SetLength(sii,Length(si2w));
         for i:=0 to Length(si2w)-1 do sii[i]:=si2w[i];
         dt:=Now;
         DecodeDate(dt,y,m,d);
         sii[2]:=Byte(y-2000);
         sii[3]:=Byte(m);
         sii[4]:=Byte(d);
         DecodeTime(dt,h,min,sec,ms);
         if h>=12 then sii[5]:=1 else sii[5]:=0;
         secs:=(h*3600+min*60+sec) mod 43200;
         sii[6]:=secs div 256;
         sii[7]:=secs mod 256;
         sii[8]:=0;
      end;
    siReadSI5Data:
      begin
         SetLength(sii,Length(si3));
         for i:=0 to Length(si3)-1 do sii[i]:=si3[i];
      end;
    siReadSI6Data:
      begin
         SetLength(sii,Length(si5)+1);
         for i:=0 to Length(si5)-1 do sii[i]:=si5[i];
         sii[Length(si5)]:=blockNr;
      end;
    siReadSI8Data:
      begin
         SetLength(sii,Length(si6)+1);
         for i:=0 to Length(si6)-1 do sii[i]:=si6[i];
         sii[Length(si6)]:=blockNr;
      end;
    siBeep:
      begin
         SetLength(sii,Length(si4)+1);
         for i:=0 to Length(si4)-1 do sii[i]:=si4[i];
         sii[Length(si4)]:=blockNr;
      end;
    siReaderMode:
      begin
         SetLength(sii,Length(si7)+1);
         for i:=0 to Length(si7)-1 do sii[i]:=si7[i];
         sii[Length(si7)]:=blockNr;
      end;
    siSwitchOff:
      begin
         SetLength(sii,Length(si8));
         for i:=0 to Length(si8)-1 do sii[i]:=si8[i];
      end;
    siRead6starMode:
      begin
         SetLength(sii,Length(si9));
         for i:=0 to Length(si9)-1 do sii[i]:=si9[i];
      end;
    siGetStationMode:
      begin
         SetLength(sii,Length(si10));
         for i:=0 to Length(si10)-1 do sii[i]:=si10[i];
      end;
    siSetStationMode:
      begin
         SetLength(sii,Length(si10w));
         for i:=0 to Length(si10w)-1 do sii[i]:=si10w[i];
         case ComboBox1.ItemIndex of
              0:
                sii[3]:=$02;
              1:
                sii[3]:=$03;
              2:
                sii[3]:=$04;
              3:
                sii[3]:=$05;
              4:
                sii[3]:=$07;
              5:
                sii[3]:=$0a;
             end;
      end;
    siGetStationCode:
      begin
         SetLength(sii,Length(si11));
         for i:=0 to Length(si11)-1 do sii[i]:=si11[i];
      end;
    siSetStationCode:
      begin
         SetLength(sii,Length(si11w));
         for i:=0 to Length(si11w)-1 do sii[i]:=si11w[i];
         sii[3]:=StrToInt(Edit2.Text);
      end;
    siGetMemBP:
      begin
         SetLength(sii,Length(si12));
         for i:=0 to Length(si12)-1 do sii[i]:=si12[i];
      end;
    siGetMemOF:
      begin
         SetLength(sii,Length(si13));
         for i:=0 to Length(si13)-1 do sii[i]:=si13[i];
      end;
    siReadMem:
      begin
        SetLength(sii,Length(si14)+4);
        for i:=0 to Length(si14)-1 do sii[i]:=si14[i];
        sii[2]:=siBackupMemC[1];
        sii[3]:=siBackupMemC[2];
        sii[4]:=siBackupMemC[3];
        sii[5]:=128; //block size
      end;
    siClearBackup:
      begin
         SetLength(sii,Length(si15));
         for i:=0 to Length(si15)-1 do sii[i]:=si15[i];
      end;
    end;
  SetLength(dd,Length(sii)+4);
  dd[0]:=$02;
    for i:=1 to Length(sii) do
        dd[i]:=sii[i-1];
    cc:=crc(Length(sii),sii);
    dd[Length(sii)+1]:=(cc and $FF00)shr 8;
    dd[Length(sii)+2]:=cc and $FF;
    dd[Length(sii)+3]:=$03;
  LazSerial1.WriteBuffer(dd1[0],2);
  LazSerial1.WriteBuffer(dd[0],Length(dd));
end;

procedure TForm1.readSI6Data(bb:byte);
begin
  blockNr:=bb;
  writeReader(siReadSI6Data);
end;

procedure TForm1.readSI5Data();
begin
  writeReader(siReadSI5Data);
end;

procedure TForm1.readSI8Data(bb:byte);
begin
  blockNr:=bb;
  writeReader(siReadSI8Data);
end;

procedure TForm1.beep(bn:byte);
begin
  blockNr:=bn;
  writeReader(siBeep);
end;

procedure TForm1.setReaderMode(bn:byte);
begin
  blockNr:=bn;
  writeReader(siReaderMode);
end;

//datu imports no SIReader event.csv
procedure TForm1.MenuItem3Click(Sender: TObject);
var
  j,n1:integer;
  dd,fname,line:string;
  p_clear,p_check,p_start:string;
  pf:TextFile;
  p_p:TStringList;
begin
 if MessageDlg(mscC18, mstT18, mtConfirmation,[mbYes, mbNo],0) = mrYes then
 begin
   fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/event.csv';
   if FileExists(fname) then
   begin
     jvCSVBase1.CSVFileName:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/event.csv';
     jvCSVBase1.DataBaseOpen('events/'+eventList[RadioGroup1.ItemIndex].Caption+'/event.csv');  //EventId;SI-Card;CN;Mode;Source;DayOfWeek;PunchDate;PunchTime;No;Cnt
     jvCSVEdit1.CSVField:='SI-Card'; //1
     jvCSVEdit2.CSVField:='CN'; //2
     jvCSVEdit3.CSVField:='Mode'; //3
     jvCSVEdit4.CSVField:='PunchDate'; //6
     jvCSVEdit5.CSVField:='PunchTime'; //7
     jvCSVEdit6.CSVField:='No'; //8
     jvCSVEdit7.CSVField:='Cnt'; //9
     p_clear:=' None';
     p_check:=' None';
     p_start:=' None';
     p_p:=TStringList.Create;
     line:='';
     while jvCSVBase1.RecordNext do
     begin
       if jvCSVEdit1.Caption<>line then
       begin
         if line<>'' then begin
           AssignFile(pf,'punches_9999/'+line+'_9999');
           Rewrite(pf);
           writeln(pf,'card: '+line);
           writeln(pf,'clear:'+p_clear);
           writeln(pf,'check:'+p_check);
           writeln(pf,'start:'+p_start);
           writeln(pf,'punches:');
           writeln(pf,'S='+StringGrid1.Values['starttime']);
           for j:=0 to p_p.Count-1 do
           begin
               writeln(pf,p_p[j]);
           end;
           CloseFile(pf);
           p_clear:=' None';
           p_check:=' None';
           p_start:=' None';
           p_p.Clear;
         end;
         line:=jvCSVEdit1.Caption;
       end;
       if jvCSVEdit4.Caption='' then
       begin
         if (StrToInt(StringGrid1.Values['starttime'].Substring(11,2))<12) then n1:=0 else n1:=1;
         dd:=StringGrid1.Values['starttime'].Substring(0,11)+IntToStr(StrToInt(Copy(jvCSVEdit5.Caption,2,2))+12*n1)+Copy(jvCSVEdit5.Caption,4,6);
       end
       else
       begin
         dd:=StringGrid1.Values['starttime'].Substring(0,10)+Copy(jvCSVEdit5.Caption,1,9);
       end;
       if(jvCSVEdit3.Caption='CLR') then p_clear:=jvCSVEdit5.Caption;
       if(jvCSVEdit3.Caption='CHK') then p_check:=jvCSVEdit5.Caption;
       if(jvCSVEdit3.Caption='STA') then p_start:=Copy(jvCSVEdit5.Caption,1,9);
       if(jvCSVEdit3.Caption='FIN') then p_p.Add('F='+dd);
       if(jvCSVEdit3.Caption=' CN') then p_p.Add(jvCSVEdit2.Caption+'='+dd);
     end;
     jvCSVBase1.DataBaseClose;
    end
    else
      MessageDlg(mscC18,mstT18a,mtConfirmation,[mbOK],0);
  end;
end;

//datu imports no SIME splits.csv
procedure TForm1.MenuItem4Click(Sender: TObject);
var
    i,j:integer;
    fname,line:string;
    t_dd:TDateTime;
    p_clear,p_check,p_start,p_fin:string;
    tf,pf:TextFile;
    tnr,p_p,wordList:TStringList;
begin
   if MessageDlg(mscC18, mstT18b, mtConfirmation,[mbYes, mbNo],0) = mrYes then
   begin
     fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/splits.csv';
     if FileExists(fname) then
     begin
       AssignFile(tf,fname);  //Stno;Chip;...
       Reset(tf);
       wordList:=TStringList.Create;
       while not eof(tf) do
       begin
         Readln(tf,line);
         wordList.Add(line);
       end;
       CloseFile(tf);
       p_clear:=' None';
       p_check:=' None';
       p_start:=' None';
       p_fin:=' None';
       p_p:=TStringList.Create;
       tnr:=TStringList.Create;
       for i:=1 to wordList.Count-1 do
       begin
         tnr.Clear;
         tnr.AddStrings(wordList[i].Split(';'));
         if tnr.Count>0 then
         begin
         p_start:=tnr[44];
         p_fin:=tnr[45];
         j:=46;
         while j<tnr.Count do
         begin
           if Copy(tnr[j+1],0,1)<>'-' then
           begin
             t_dd:=laiks(StringGrid1.Values['starttime'])+StrToInt(tnr[j+1].Substring(0,1))/24+StrToInt(tnr[j+1].Substring(2,2))/(24*60)+StrToInt(tnr[j+1].Substring(5,2))/(24*3600);
             p_p.Add(tnr[j]+'='+FormatDateTime('YYYY-MM-DD hh:nn:ss',t_dd));
           end;
           j:=j+2;
         end;
         end;
         AssignFile(pf,'punches_9999/'+tnr[1]+'_9999');
         Rewrite(pf);
         writeln(pf,'card: '+tnr[1]);
         writeln(pf,'clear:'+p_clear);
         writeln(pf,'check:'+p_check);
         writeln(pf,'start:'+p_start);
         writeln(pf,'punches:');
         writeln(pf,'S='+StringGrid1.Values['starttime']);
         for j:=0 to p_p.Count-1 do
         begin
              writeln(pf,p_p[j]);
         end;
         writeln(pf,'F='+StringGrid1.Values['starttime'].Substring(0,11)+p_fin);
         CloseFile(pf);
         p_clear:=' None';
         p_check:=' None';
         p_start:=' None';
         p_p.Clear;
       end;
     end
     else
       MessageDlg(mscC18,mstT18c,mtConfirmation,[mbOK],0);
   end;
end;

//datu imports no rogaining.lv CSV
procedure TForm1.MenuItem5Click(Sender: TObject);
var
  fname:string;
  line:string;
  tm1:TStringList;
  tn:integer;
begin
{
"Number","Team","Group","Name","Surname","B.d.","B.m.","B.y.","Age","Sex",
"Sportident","Food","Nationality","ODB","Participation fee","SI fee",
"Total (EUR)","Paid","Status","Date entered","Notes","Email","Atlaides Kods"

}
 if MessageDlg(mscC18, mstT18d, mtConfirmation,[mbYes, mbNo],0) = mrYes then
 begin
   fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/data.csv';
   if FileExists(fname) then
   begin
     jvCSVBase1.CSVFileName:=fname;
     jvCSVBase1.DataBaseOpen(fname);
     jvCSVEdit1.CSVField:='Number'; //0
     jvCSVEdit2.CSVField:='Team'; //1
     jvCSVEdit3.CSVField:='Name'; //3
     jvCSVEdit4.CSVField:='Surname'; //4
     jvCSVEdit5.CSVField:='B.d.'; //5
     jvCSVEdit6.CSVField:='B.m.'; //6
     jvCSVEdit7.CSVField:='B.y.'; //7
     jvCSVEdit8.CSVField:='Sex'; //9
     jvCSVEdit9.CSVField:='Sportident'; //10
     jvCSVEdit10.CSVField:='Nationality'; //12
     line:='';
     tn:=1;
     tm1:=TStringList.Create;
     repeat
       if Length(jvCSVEdit5.Caption)=1 then jvCSVEdit5.Caption:='0'+jvCSVEdit5.Caption;
       if Length(jvCSVEdit5.Caption)=0 then jvCSVEdit5.Caption:='01';
       if Length(jvCSVEdit6.Caption)=1 then jvCSVEdit6.Caption:='0'+jvCSVEdit6.Caption;
       if Length(jvCSVEdit6.Caption)=0 then jvCSVEdit6.Caption:='01';
       if line<>jvCSVEdit1.Caption then
       begin
         if line<>'' then
         begin
           StringGrid2.Objects[5,StringGrid2.RowCount-1]:=TStringList.Create;
           (StringGrid2.Objects[5,StringGrid2.RowCount-1] as TStringList).AddStrings(tm1);
           tm1.Clear;
         end;
         StringGrid2.InsertRowWithValues(StringGrid2.RowCount,[jvCSVEdit1.Caption,jvCSVEdit2.Caption,'','','','',' R']);
         line:=jvCSVEdit1.Caption;
       end;
       StringGrid4.InsertRowWithValues(StringGrid4.RowCount,[IntToStr(tn),jvCSVEdit3.Caption+' '+jvCSVEdit4.Caption,jvCSVEdit1.Caption,
       jvCSVEdit9.Caption,'',jvCSVEdit8.Caption,jvCSVEdit7.Caption+'-'+jvCSVEdit6.Caption+'-'+jvCSVEdit5.Caption,jvCSVEdit10.Caption,'-']);
       tm1.Add(IntToStr(tn));
       tm1.Add(jvCSVEdit9.Caption);
       tm1.Add('');
       tn:=tn+1;
     until not jvCSVBase1.RecordNext;
     tm1.Free;
     jvCSVBase1.DataBaseClose;
     Button1m.Color:=clRed;
     Button1m.Font.Color:=clWhite;
     Button1m.Font.Bold:=true;
     Button4.Color:=clRed;
     Button4.Font.Color:=clWhite;
     Button4.Font.Bold:=true;
     Button11.Visible:=true;
     StringGrid2.Row:=1;
     StringGrid2.Col:=0;
     StringGrid2Click(StringGrid2);
    end
    else
      MessageDlg(mscC18,mstT18e,mtConfirmation,[mbOK],0);
  end;
end;

//startlist
procedure TForm1.MenuItem8Click(Sender: TObject);
var
  fname:string;
  i,j:integer;
begin
  fname:='events/'+eventList[RadioGroup1.ItemIndex].Caption+'/docs/startlist.htm';
  Form3.Memo1.Clear;
  Form3.Memo1.Lines.Add('<html><head>');
  Form3.Memo1.Lines.Add('<meta http-equiv="Content-Type" content="text/html; charset=utf-8">');
  Form3.Memo1.Lines.Add('</head><body>');
  Form3.Memo1.Lines.Add('<table>');
  StringGrid2.Col:=0;
  for i:=1 to StringGrid2.RowCount-1 do
  begin
    Form3.Memo1.Lines.Add('<tr><td><hr/></td><td><hr/></td></tr>');
    Form3.Memo1.Lines.Add('<tr>');
    Form3.Memo1.Lines.Add('<td><b>');
    Form3.Memo1.Lines.Add(StringGrid2.Cells[0,i]+'_'+StringGrid2.Cells[1,i]);
    Form3.Memo1.Lines.Add('</b></td>');
    Form3.Memo1.Lines.Add('<td><i>');
    Form3.Memo1.Lines.Add(StringGrid2.Cells[3,i]);
    Form3.Memo1.Lines.Add('</i></td>');
    Form3.Memo1.Lines.Add('</tr>');
    StringGrid2.Row:=i;
    StringGrid2Click(StringGrid2);
    for j:=1 to StringGrid3.RowCount-1 do
    begin
      Form3.Memo1.Lines.Add('<tr>');
      Form3.Memo1.Lines.Add('<td>');
      Form3.Memo1.Lines.Add(StringGrid3.Cells[1,j]);
      Form3.Memo1.Lines.Add('</td>');
      Form3.Memo1.Lines.Add('<td>');
      Form3.Memo1.Lines.Add(StringGrid3.Cells[5,j]);
      Form3.Memo1.Lines.Add('</td>');
      Form3.Memo1.Lines.Add('</tr>');
    end;
  end;
  Form3.Memo1.Lines.Add('</table>');
  Form3.Memo1.Lines.Add('</body>');
  Form3.Memo1.Lines.Add('</html>');
  Form3.Memo1.Lines.SaveToFile(fname);
end;

//jauns events
procedure TForm1.MenuItem9Click(Sender: TObject);
var
  i:integer;
begin
 MessageDlg(mscC19,mstT19a,mtConfirmation,[mbOK],0);
 if Form7.ShowModal=mrOK then
 with Form7.ValueListEditor1 do
   if (Values['eventID']<>'')and(Values['eventtype']<>'') then
   begin
      if not DirectoryExists('events/'+Values['eventID']) then
      begin
           CreateDir('events/'+Values['eventID']);
           CreateDir('events/'+Values['eventID']+'/punches');
           CreateDir('events/'+Values['eventID']+'/docs');
           CreateDir('events/'+Values['eventID']+'/teamresults');
           CreateDir('events/'+Values['eventID']+'/raw');
           StringGrid1.Values['eventID']:=Values['eventID'];
           StringGrid1.Values['eventtype']:=Values['eventtype'];
           StringGrid1.Values['starttime']:=FormatDateTime('YYYY-MM-DD',Now)+' 00:00:00';
           StringGrid1.Show;
           writeEvent;
           if (StringGrid1.Values['eventtype']='rogain') and (StringGrid6.RowCount=1) then Button2Click(Button2);
           Button5Click(Button5);
           Button6Click(Button6);
           Button4gClick(Button4g);
           Button4Click(Button4);
           Button1mClick(Button1m);
           loadEvents;
           for i:=0 to RadioGroup1.Items.Count-1 do
               if RadioGroup1.Items[i]=Values['eventID'] then
               begin
                    (RadioGroup1.Controls[i] as TRadioButton).Checked:=True;
                    break;
               end;
      end
      else
      begin
          MessageDlg(mscC19,mstT19,mtConfirmation,[mbOK],0);
          exit;
      end;
   end;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
 if RadioGroup2.ItemIndex=0 then
 begin
   setReaderMode($4D);
 end;
 if RadioGroup2.ItemIndex=1 then
 begin
   setReaderMode($53);
 end;
end;

//SARKANĀS POGAS
//izmaiņas eventa datos
procedure TForm1.StringGrid1SelectEditor(Sender: TObject; aCol, aRow: Integer;
  var Editor: TWinControl);
begin
  if (aRow>=5)and(aRow<=9) then
  begin
    MessageDlg('Select time','Please, use Date and Time selector below!',mtConfirmation,[mbOK],0);
  end;
  InitialValue := StringGrid1.Cells[aCol,aRow];
end;

procedure TForm1.StringGrid1SetEditText(Sender: TObject; ACol, ARow: Integer;
  const Value: string);
begin
  if (aRow>=5)and(aRow<=9) then
  begin
    StringGrid1.Cells[ACol,ARow]:=InitialValue;
    exit;
  end;
  if Value <> InitialValue then
  begin
  Button5.Color:=clRed;
  Button5.Font.Color:=clWhite;
  Button5.Font.Bold:=true;
  end;
end;

//izmaiņas komandu datos
procedure TForm1.StringGrid2SelectEditor(Sender: TObject; aCol, aRow: Integer;
  var Editor: TWinControl);
begin
  InitialValue := StringGrid2.Cells[aCol,aRow];
end;

procedure TForm1.StringGrid2SetEditText(Sender: TObject; ACol, ARow: Integer;
  const Value: string);
begin
  if Value <> InitialValue then
  begin
  Button1m.Color:=clRed;
  Button1m.Font.Color:=clWhite;
  Button1m.Font.Bold:=true;
  end;
end;

//izmaiņas memberu datos
procedure TForm1.StringGrid4SelectEditor(Sender: TObject; aCol, aRow: Integer;
  var Editor: TWinControl);
begin
  InitialValue := StringGrid4.Cells[aCol,aRow];
end;

procedure TForm1.StringGrid4SetEditText(Sender: TObject; ACol, ARow: Integer;
  const Value: string);
begin
  if Value <> InitialValue then
  begin
  Button4.Color:=clRed;
  Button4.Font.Color:=clWhite;
  Button4.Font.Bold:=true;
  end;
end;

procedure TForm1.StringGrid5DrawCell(Sender: TObject; aCol, aRow: Integer;
                                     aRect: TRect; aState: TGridDrawState);
begin
  with StringGrid5 do
    begin
      if (aCol = 6) and (Cells[6, aRow]=capC4) then
        begin
          Canvas.Font.Color := clWhite;
          Canvas.Brush.Color := clRed;
          Canvas.FillRect(aRect.Left, aRect.Top,
                         aRect.Right, aRect.Bottom);
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
        end;
      if (aCol = 6) and (Cells[6, aRow]=capC3) then
        begin
          Canvas.Font.Color := clBlack;
          Canvas.Brush.Color := clLime;
          Canvas.FillRect(aRect.Left, aRect.Top,
                         aRect.Right, aRect.Bottom);
          Canvas.TextOut(aRect.Left+5, aRect.Top+3, Cells[ACol, ARow]);
        end;
    end;
 end;

procedure TForm1.StringGrid5Click(Sender: TObject);
begin
  if StringGrid5.Col=6 then
  begin
    if StringGrid5.Cells[6,StringGrid5.Row]=capC4 then
      StringGrid5.Cells[6,StringGrid5.Row]:=capC3
    else
      StringGrid5.Cells[6,StringGrid5.Row]:=capC4;
  end;
end;

//izmaiņas grupu datos
procedure TForm1.StringGrid5SelectEditor(Sender: TObject; aCol, aRow: Integer;
  var Editor: TWinControl);
begin
  InitialValue := StringGrid5.Cells[aCol,aRow];
end;

procedure TForm1.StringGrid5SetEditText(Sender: TObject; ACol, ARow: Integer;
  const Value: string);
begin
  if Value <> InitialValue then
  begin
  Button4g.Color:=clRed;
  Button4g.Font.Color:=clWhite;
  Button4g.Font.Bold:=true;
  end;
end;


end.

