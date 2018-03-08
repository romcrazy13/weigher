unit FSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, INIFiles;

type
  TFormSettings = class(TForm)
    ButtonOk: TButton;
    ButtonCancel: TButton;
    BoxHotKey: TGroupBox;
    EditHotKey: THotKey;
    BoxTitle: TGroupBox;
    EditTitle: TEdit;
    CheckTitle: TCheckBox;
    procedure ButtonOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure CheckTitleClick(Sender: TObject);
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

procedure TFormSettings.ButtonCancelClick(Sender: TObject);
begin
  CheckTitle.Checked := ini.CheckTitle;
  self.CheckTitleClick(self);
  EditTitle.Text := ini.Title;
  EditHotKey.HotKey := ini.HotKey;
  FormSettings.Close;
end;

procedure TFormSettings.ButtonOkClick(Sender: TObject);
var
  iniFile: TINIFile;
begin
  iniFile := TINIFile.Create(ini.FileName);

  ini.CheckTitle := CheckTitle.Checked;
  ini.Title := trim(EditTitle.Text);
  ini.HotKey := EditHotKey.HotKey;

  FormMain.HotKeyRegister;

  iniFile.WriteBool('application', 'checkTitle', ini.CheckTitle);
  iniFile.WriteString('application', 'title', ini.Title);
  iniFile.WriteInteger('weight', 'hotkey', ini.HotKey);

  iniFile.Free;
  FormSettings.Close;
end;

procedure TFormSettings.CheckTitleClick(Sender: TObject);
begin
  EditTitle.Enabled := not CheckTitle.Checked;
end;

procedure TFormSettings.FormCreate(Sender: TObject);
begin
//  CheckTitle.Hint := 'Check it this if you want set weight only in the concrete window, else you can data from weigher can paste in any window.';
  CheckTitle.Checked := ini.CheckTitle;
  self.CheckTitleClick(self);
  EditTitle.Text := ini.Title;
  EditHotKey.HotKey := ini.HotKey;
end;

procedure TFormSettings.FormShow(Sender: TObject);
begin
  EditTitle.SetFocus;
end;

end.
