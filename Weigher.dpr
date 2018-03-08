program Weigher;

uses
  Forms,
  FMain in 'FMain.pas' {FormMain},
  FInfo in 'FInfo.pas' {FormInfo},
  FWeigher in 'FWeigher.pas' {FormWeigher},
  FSettings in 'FSettings.pas' {FormSettings};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Weigher';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormInfo, FormInfo);
  Application.CreateForm(TFormWeigher, FormWeigher);
  Application.CreateForm(TFormSettings, FormSettings);
  Application.Run;
end.
