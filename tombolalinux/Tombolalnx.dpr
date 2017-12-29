program Tombola;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  tmblnx in 'tmblnx.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
