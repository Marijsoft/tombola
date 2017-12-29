unit tmbc;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, IPPeerClient,
  System.Math,
  IPPeerServer, System.Tether.Manager, System.Tether.AppProfile,
  System.UIConsts;

type
  TCartella = class
  private
    Numeri: Array [1 .. 15] of integer;
    R1: Array [1 .. 5] of byte;
    R2: Array [1 .. 5] of byte;
    R3: Array [1 .. 5] of byte;
    Dec: Array [1 .. 9] of integer;
    function Utilizzabile(N: integer): Boolean;
  public
    constructor create;
    function Controlla(C: TCartella): integer;
    function R1AsString(): String;
    function R2AsString(): String;
    function R3AsString(): String;
    procedure Rifai(N: integer);
    function inDecina(riga, decina: integer): integer;
    function cheDecina(N: integer): integer;
  end;

type
  TForm3 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Circle1: TCircle;
    SpeedButton2: TSpeedButton;
    TetheringManager1: TTetheringManager;
    TetheringAppProfile1: TTetheringAppProfile;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    Rectangle2: TRectangle;
    Label2: TLabel;
    Rectangle3: TRectangle;
    Label3: TLabel;
    Rectangle4: TRectangle;
    Label4: TLabel;
    Rectangle5: TRectangle;
    Label5: TLabel;
    Rectangle6: TRectangle;
    Label6: TLabel;
    Rectangle7: TRectangle;
    Label7: TLabel;
    Rectangle8: TRectangle;
    Label8: TLabel;
    Rectangle9: TRectangle;
    Label9: TLabel;
    Rectangle10: TRectangle;
    Label10: TLabel;
    Rectangle11: TRectangle;
    Label11: TLabel;
    Rectangle12: TRectangle;
    Label12: TLabel;
    Rectangle13: TRectangle;
    Label13: TLabel;
    Rectangle14: TRectangle;
    Label14: TLabel;
    Rectangle15: TRectangle;
    Label15: TLabel;
    Rectangle16: TRectangle;
    Label16: TLabel;
    Rectangle17: TRectangle;
    Label17: TLabel;
    Rectangle18: TRectangle;
    Label18: TLabel;
    Rectangle19: TRectangle;
    Label19: TLabel;
    Rectangle20: TRectangle;
    Label20: TLabel;
    Rectangle21: TRectangle;
    Label21: TLabel;
    Rectangle22: TRectangle;
    Label22: TLabel;
    Rectangle23: TRectangle;
    Label23: TLabel;
    Rectangle24: TRectangle;
    Label24: TLabel;
    Rectangle25: TRectangle;
    Label25: TLabel;
    Rectangle26: TRectangle;
    Label26: TLabel;
    Rectangle27: TRectangle;
    Label27: TLabel;
    Rectangle28: TRectangle;
    Label28: TLabel;
    StyleBook1: TStyleBook;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TetheringManager1PairedToRemote(const Sender: TObject;
      const AManagerInfo: TTetheringManagerInfo);
    procedure TetheringManager1RemoteManagerShutdown(const Sender: TObject;
      const AManagerIdentifier: string);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Circle1Click(Sender: TObject);
    procedure TetheringManager1RequestManagerPassword(const Sender: TObject;
      const ARemoteIdentifier: string; var Password: string);
    procedure TetheringAppProfile1ResourceReceived(const Sender: TObject;
      const AResource: TRemoteResource);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle2DblClick(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure Rectangle4DblClick(Sender: TObject);
    procedure Rectangle7DblClick(Sender: TObject);
    procedure Rectangle7Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure Rectangle8DblClick(Sender: TObject);
    procedure Rectangle9DblClick(Sender: TObject);
    procedure Rectangle9Click(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
    procedure Rectangle11DblClick(Sender: TObject);
    procedure Rectangle13DblClick(Sender: TObject);
    procedure Rectangle13Click(Sender: TObject);
    procedure Rectangle14DblClick(Sender: TObject);
    procedure Rectangle14Click(Sender: TObject);
    procedure Rectangle18Click(Sender: TObject);
    procedure Rectangle18DblClick(Sender: TObject);
    procedure Rectangle19Click(Sender: TObject);
    procedure Rectangle19DblClick(Sender: TObject);
    procedure Rectangle20DblClick(Sender: TObject);
    procedure Rectangle21DblClick(Sender: TObject);
    procedure Rectangle25DblClick(Sender: TObject);
    procedure Rectangle27DblClick(Sender: TObject);
    procedure Rectangle28DblClick(Sender: TObject);
    procedure Rectangle20Click(Sender: TObject);
    procedure Rectangle21Click(Sender: TObject);
    procedure Rectangle25Click(Sender: TObject);
    procedure Rectangle27Click(Sender: TObject);
    procedure Rectangle28Click(Sender: TObject);
  private
    { Private declarations }
    Lista: TList;
    Uguali: integer;
    procedure confronta(nm: string);
  public
    { Public declarations }
    procedure pulisci;
    procedure puliscicolore;
    procedure puliscitesto;
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}


procedure Tform3.puliscitesto;
begin
 Label2.Text:='';
 Label3.Text:='';
 Label4.Text:='';
 Label5.Text:='';
 Label6.Text:='';
 Label7.Text:='';
 Label8.Text:='';
 Label9.Text:='';
 Label10.Text:='';
 Label11.Text:='';
 Label12.Text:='';
 Label13.Text:='';
 Label14.Text:='';
 Label15.Text:='';
 Label16.Text:='';
 Label17.Text:='';
 Label18.Text:='';
 Label19.Text:='';
 Label20.Text:='';                 
 Label21.Text:='';
 Label22.Text:='';
 Label23.Text:='';
 Label24.Text:='';
 Label25.Text:='';
 Label26.Text:='';
 Label27.Text:='';
 Label28.Text:='';
  end;



procedure Tform3.puliscicolore;
var x:Integer;
begin
  for x := 0 to 99 do begin
    (Findcomponent('Label' + inttostr(x)) as TLabel).TextSettings.FontColor:=TAlphaColorRec.Black;
    end;
end;

procedure TForm3.Circle1Click(Sender: TObject);
begin
  SpeedButton1Click(self);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Lista := TList.create;
end;

{$REGION 'Pulisci'}

procedure TForm3.pulisci;
begin
  Rectangle11.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle13.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle14.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle18.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle19.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle20.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle21.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle25.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle27.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle28.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle2.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle4.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle7.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle8.Fill.Color := RGBtoBGR($FFE0E0E0);
  Rectangle9.Fill.Color := RGBtoBGR($FFE0E0E0);
end;
{$ENDREGION}
{$REGION 'Colori bottoni quando si preme'}

procedure TForm3.Rectangle11Click(Sender: TObject);
begin
  Rectangle11.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle11DblClick(Sender: TObject);
begin
  Rectangle11.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle13Click(Sender: TObject);
begin
    Rectangle13.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle13DblClick(Sender: TObject);
begin
  Rectangle13.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle14Click(Sender: TObject);
begin
  Rectangle14.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle14DblClick(Sender: TObject);
begin
  Rectangle14.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle18Click(Sender: TObject);
begin
  Rectangle18.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle18DblClick(Sender: TObject);
begin
  Rectangle18.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle19Click(Sender: TObject);
begin
  Rectangle19.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle19DblClick(Sender: TObject);
begin
  Rectangle19.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle20Click(Sender: TObject);
begin
  Rectangle20.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle20DblClick(Sender: TObject);
begin
  Rectangle20.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle21Click(Sender: TObject);
begin
  Rectangle21.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle21DblClick(Sender: TObject);
begin
  Rectangle21.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle25Click(Sender: TObject);
begin
  Rectangle25.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle25DblClick(Sender: TObject);
begin
  Rectangle25.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle27Click(Sender: TObject);
begin
  Rectangle27.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle27DblClick(Sender: TObject);
begin
  Rectangle27.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle28Click(Sender: TObject);
begin
  Rectangle28.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle28DblClick(Sender: TObject);
begin
  Rectangle28.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle2Click(Sender: TObject);
begin
  Rectangle2.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle2DblClick(Sender: TObject);
begin
  Rectangle2.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle4Click(Sender: TObject);
begin
  Rectangle4.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle4DblClick(Sender: TObject);
begin
  Rectangle4.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle7Click(Sender: TObject);
begin
  Rectangle7.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle7DblClick(Sender: TObject);
begin
  Rectangle7.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle8Click(Sender: TObject);
begin
  Rectangle8.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle8DblClick(Sender: TObject);
begin
  Rectangle8.Fill.Color := RGBtoBGR($FFE0E0E0);
end;

procedure TForm3.Rectangle9Click(Sender: TObject);
begin
  Rectangle9.Fill.Color := TAlphaColorRec.Darkgreen;
end;

procedure TForm3.Rectangle9DblClick(Sender: TObject);
begin
  Rectangle9.Fill.Color := RGBtoBGR($FFE0E0E0);
end;
{$ENDREGION}
{$REGION 'Funzioni cartella'}

function TCartella.Controlla(C: TCartella): integer;
var
  I, i1: integer;
  N: integer;
begin
  N := 0;
  for I := 1 to 15 do
    for i1 := 1 to 15 do
      if self.Numeri[I] = C.Numeri[i1] then
        inc(N);

  Result := N;
end;

procedure TCartella.Rifai(N: integer);
begin
  showMessage('Rifai');
end;

constructor TCartella.create;
var
  I, N, ex: integer;
begin
  inherited;
  randomize;
  for I := 1 to 15 do
    Numeri[I] := 0;
  for I := 1 to 9 do
    Dec[I] := 0;
  I := 1;
  while I < 16 do
  begin
    N := random(90) + 1;
    if Utilizzabile(N) then
    begin
      Numeri[I] := N;
      inc(Dec[cheDecina(N)]);
      inc(I);
    end;
  end;
  // ordina
  for I := 1 to 14 do
    for N := I + 1 to 15 do
      if Numeri[N] < Numeri[I] then
      begin
        ex := Numeri[N];
        Numeri[N] := Numeri[I];
        Numeri[I] := ex;
      end;

  I := 1;
  for N := 1 to 5 do
  begin
    R1[N] := Numeri[I];
    R2[N] := Numeri[I + 1];
    R3[N] := Numeri[I + 2];
    inc(I, 3);
  end;
end;

function TCartella.Utilizzabile(N: integer): Boolean;
var
  I: integer;
begin
  I := 1;
  while (I < 16) and (Numeri[I] <> N) do
    inc(I);
  if I <= 15 then
    Result := False
  else
  begin
    I := cheDecina(N);
    if Dec[I] > 2 then
      Result := False
    else
      Result := True;
  end;
end;

function TCartella.R1AsString: String;
var
  I: integer;
begin
  Result := '';
  for I := 1 to 5 do
    Result := Result + format('%d ', [R1[I]]);
end;

function TCartella.R2AsString: String;
var
  I: integer;
begin
  Result := '';
  for I := 1 to 5 do
    Result := Result + format('%d ', [R2[I]]);

end;

function TCartella.R3AsString: String;
var
  I: integer;
begin
  Result := '';
  for I := 1 to 5 do
    Result := Result + format('%d ', [R3[I]]);

end;

function TCartella.inDecina(riga, decina: integer): integer;
var
  I, D: integer;
  P: Pbyte;
begin
  Result := 0;
  case riga of
    1:
      P := @R1[1];
    2:
      P := @R2[1];
    3:
      P := @R3[1];
  end;

  I := 0;
  while (I < 5) and (Result = 0) do
  begin
    D := cheDecina(P^);
    if D = decina then
      Result := P^;
    inc(P);
    inc(I);
  end;

end;

function TCartella.cheDecina(N: integer): integer;
begin
  case N of
    1 .. 9:
      Result := 1;
    10 .. 19:
      Result := 2;
    20 .. 29:
      Result := 3;
    30 .. 39:
      Result := 4;
    40 .. 49:
      Result := 5;
    50 .. 59:
      Result := 6;
    60 .. 69:
      Result := 7;
    70 .. 79:
      Result := 8;
    80 .. 90:
      Result := 9;
  end;
end;

procedure TForm3.confronta(nm: String);
begin
  if Label4.Text = nm = True then
    Label4.FontColor := TAlphaColorRec.Red;
  if Label2.Text = nm = True then
    Label2.FontColor := TAlphaColorRec.Red;
  if Label7.Text = nm = True then
    Label7.FontColor := TAlphaColorRec.Red;
  if Label8.Text = nm = True then
    Label8.FontColor := TAlphaColorRec.Red;
  if Label9.Text = nm = True then
    Label9.FontColor := TAlphaColorRec.Red;
  if Label11.Text = nm = True then
    Label11.FontColor := TAlphaColorRec.Red;
  if Label13.Text = nm = True then
    Label13.FontColor := TAlphaColorRec.Red;
  if Label14.Text = nm = True then
    Label14.FontColor := TAlphaColorRec.Red;
  if Label18.Text = nm = True then
    Label18.FontColor := TAlphaColorRec.Red;
  if Label19.Text = nm = True then
    Label19.FontColor := TAlphaColorRec.Red;
  if Label20.Text = nm = True then
    Label20.FontColor := TAlphaColorRec.Red;
  if Label21.Text = nm = True then
    Label21.FontColor := TAlphaColorRec.Red;
  if Label25.Text = nm = True then
    Label25.FontColor := TAlphaColorRec.Red;
  if Label27.Text = nm = True then
    Label27.FontColor := TAlphaColorRec.Red;
  if Label28.Text = nm = True then
    Label28.FontColor := TAlphaColorRec.Red;
end;

{$ENDREGION}

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  TetheringManager1.AutoConnect;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
var
  C: TCartella;
  I, N, T: integer;
  TF, sc, MM: integer;
  vx:Boolean;
begin
  pulisci;
if Label2.TextSettings.FontColor=TAlphaColorRec.Red then puliscicolore;
if Label2.Text.IsEmpty=False then puliscitesto;
Lista:=TList.Create;
  Uguali := 1;
  for I := 0 to Lista.Count - 1 do
    TCartella(Lista.Items[I]).DisposeOf;
  Lista.Clear;
  Application.ProcessMessages;
  T := 0;
  sc := 0;
  MM := Uguali;
  while (T < 500) and (sc < 20000) do
  begin
    C := TCartella.create;
    N := 0;
    TF := 0;
    while (N < Lista.Count) and (TF <= MM) do
    begin
      TF := max(TF, TCartella(Lista.Items[N]).Controlla(C));
      inc(N);
    end;
    if TF <= MM then
    begin
      Lista.Add(C);
      inc(T);
      sc := 0;
  Label4.Text:= C.R1[1].ToString;
  Label2.Text := C.R1[2].ToString;
  Label7.Text := C.R1[3].ToString;
  Label8.Text := C.R1[4].ToString;
  Label9.Text := C.R1[5].ToString;
  Label11.Text := C.R2[1].ToString;
  Label13.Text := C.R2[2].ToString;
  Label14.Text := C.R2[3].ToString;
  Label18.Text := C.R2[4].ToString;
  Label19.Text := C.R2[5].ToString;
  Label20.Text := C.R3[1].ToString;
  Label21.Text := C.R3[2].ToString;
  Label25.Text := C.R3[3].ToString;
  Label27.Text := C.R3[4].ToString;
  Label28.Text := C.R3[5].ToString;
    end
    else
    begin
      C.DisposeOf;
      inc(sc);
    end;
  end;
end;

{$REGION 'Tethering'}

procedure TForm3.TetheringAppProfile1ResourceReceived(const Sender: TObject;
  const AResource: TRemoteResource);
begin
  if AResource.Hint = 'nestratto' then
  begin
    confronta(AResource.Value.AsString);
  end;
end;

procedure TForm3.TetheringManager1PairedToRemote(const Sender: TObject;
  const AManagerInfo: TTetheringManagerInfo);
var
  LRemoteProfile: TTetheringProfileInfo;
begin
  Circle1.Fill.Color := TAlphaColorRec.Green;
  TetheringAppProfile1.SubscribeToRemoteItem(LRemoteProfile,
    TetheringAppProfile1.GetRemoteResourceValue(LRemoteProfile, 'nestratto'));
end;

procedure TForm3.TetheringManager1RemoteManagerShutdown(const Sender: TObject;
  const AManagerIdentifier: string);
begin
  Circle1.Fill.Color := TAlphaColorRec.Red;
end;

procedure TForm3.TetheringManager1RequestManagerPassword(const Sender: TObject;
  const ARemoteIdentifier: string; var Password: string);
begin
  Password := 'tombola';
end;
{$ENDREGION}

end.
