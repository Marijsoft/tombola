program TombolaClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  tmbc in 'tmbc.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.InvertedLandscape];
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
