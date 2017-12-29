unit tmb;

interface


uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Media, FMX.Edit, FMX.EditBox,
  FMX.NumberBox, IPPeerClient, IPPeerServer, System.Tether.Manager,
  System.Tether.AppProfile;


{$REGION 'Componenti'}
type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Circle1: TCircle;
    Circle2: TCircle;
    Circle3: TCircle;
    Circle4: TCircle;
    Circle5: TCircle;
    Circle6: TCircle;
    Circle7: TCircle;
    Circle8: TCircle;
    Circle9: TCircle;
    Circle10: TCircle;
    Circle11: TCircle;
    Circle12: TCircle;
    Circle13: TCircle;
    Circle14: TCircle;
    Circle15: TCircle;
    Circle16: TCircle;
    Circle17: TCircle;
    Circle18: TCircle;
    Circle19: TCircle;
    Circle20: TCircle;
    Circle21: TCircle;
    Circle22: TCircle;
    Circle23: TCircle;
    Circle24: TCircle;
    Circle25: TCircle;
    Circle26: TCircle;
    Circle27: TCircle;
    Circle28: TCircle;
    Circle29: TCircle;
    Circle30: TCircle;
    Circle31: TCircle;
    Circle32: TCircle;
    Circle33: TCircle;
    Circle34: TCircle;
    Circle35: TCircle;
    Circle36: TCircle;
    Circle37: TCircle;
    Circle38: TCircle;
    Circle39: TCircle;
    Circle40: TCircle;
    Circle41: TCircle;
    Circle42: TCircle;
    Circle43: TCircle;
    Circle44: TCircle;
    Circle45: TCircle;
    Circle46: TCircle;
    Circle47: TCircle;
    Circle48: TCircle;
    Circle49: TCircle;
    Circle50: TCircle;
    Circle51: TCircle;
    Circle52: TCircle;
    Circle53: TCircle;
    Circle54: TCircle;
    Circle55: TCircle;
    Circle56: TCircle;
    Circle57: TCircle;
    Circle58: TCircle;
    Circle59: TCircle;
    Circle60: TCircle;
    Circle61: TCircle;
    Circle62: TCircle;
    Circle63: TCircle;
    Circle64: TCircle;
    Circle65: TCircle;
    Circle66: TCircle;
    Circle67: TCircle;
    Circle68: TCircle;
    Circle69: TCircle;
    Circle70: TCircle;
    Circle71: TCircle;
    Circle72: TCircle;
    Circle73: TCircle;
    Circle74: TCircle;
    Circle75: TCircle;
    Circle76: TCircle;
    Circle77: TCircle;
    Circle78: TCircle;
    Circle79: TCircle;
    Circle80: TCircle;
    Circle81: TCircle;
    Circle82: TCircle;
    Circle83: TCircle;
    Circle84: TCircle;
    Circle85: TCircle;
    Circle86: TCircle;
    Circle87: TCircle;
    Circle88: TCircle;
    Circle89: TCircle;
    Circle90: TCircle;
    Button1: TButton;
    Image1: TImage;
    StyleBook1: TStyleBook;
    MediaPlayer1: TMediaPlayer;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    NumberBox1: TNumberBox;
    GroupBox4: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Button2: TButton;
    Timer1: TTimer;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;

    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    TetheringAppProfile1: TTetheringAppProfile;
    TetheringManager1: TTetheringManager;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TetheringManager1RequestManagerPassword(const Sender: TObject;
      const ARemoteIdentifier: string; var Password: string);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure cambiacolore(numero: Integer);
  end;

var
  Form1: TForm1;
  i: Integer;

implementation
 uses System.ioutils;
{$R *.fmx}

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Interval := StrToInt(NumberBox1.Text + '000');
  Timer1.Enabled := True;
end;

procedure TForm1.cambiacolore(numero: Integer);
var
  a: Integer;
begin
  if (Findcomponent('Circle' + inttostr(i)) as TCircle)
    .Fill.Color = TAlphaColorRec.Red = True then
  begin
    Button1Click(self);
  end;
  for a := 1 to 90 do
  begin
    (Findcomponent('Circle' + inttostr(i)) as TCircle).Fill.Color :=
      TAlphaColorRec.Red;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
TetheringManager1.AutoConnect;
end;

procedure TForm1.TetheringManager1RequestManagerPassword(const Sender: TObject;
  const ARemoteIdentifier: string; var Password: string);
begin
Password:='tombola';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Button1Click(self);
end;

procedure TForm1.Button1Click(Sender: TObject);
var v:Integer;
begin
  Randomize;
  i := Random(90) + 1;
  cambiacolore(i);
{$IFDEF MSWINDOWS}
  MediaPlayer1.FileName := inttostr(i) + '.wav';
{$ENDIF}
{$IFDEF MACOS}
MediaPlayer1.FileName:=TPath.Combine(TPath.GetHomePath,IntToStr(i)+'.wav');
{$ENDIF}
  MediaPlayer1.Play;
{$IFDEF MSWINDOWS}
  Image1.Bitmap.LoadFromFile('smorfia' + inttostr(i) + '.jpg');
{$ENDIF}
{$IFDEF MACOS}
  Image1.Bitmap.LoadFromFile(TPath.Combine(TPath.GetHomePath,'smorfia' + inttostr(i) + '.jpg'));
{$ENDIF}
if TetheringManager1.Enabled then
begin
  for v := 0 to TetheringManager1.RemoteProfiles.Count-1 do
  begin
TetheringAppProfile1.Resources.Items[0].Value:=IntToStr(i);
TetheringAppProfile1.SendString(TetheringAppProfile1.ConnectedProfiles[v],'nestratto',IntToStr(i));
end;
end;
end;

end.
