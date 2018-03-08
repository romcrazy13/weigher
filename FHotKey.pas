unit FHotKey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, INIFiles;

type
  TFormSettings = class(TForm)
    ButtonOk: TButton;
    ButtonCancel: TButton;
    GroupBox1: TGroupBox;
    EditCaption: TEdit;
    GroupBox2: TGroupBox;
    EditHotKey: THotKey;
    procedure ButtonOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSettings: TFormSettings;

implementation

uses FMain;

{$R *.dfm}

procedure TFormSettings.ButtonOkClick(Sender: TObject);
var
  iniFile: TINIFile;
  iniFileName: string;
begin
  iniFile := TINIFile.Create(iniFileName);
  iniFile.WriteInteger('weight', 'hotkey', EditHotKey.HotKey);
  iniFile.Free;
  FormMain.weightHotKey := EditHotKey.HotKey;
  FormHotKey.Close;
end;

end.
