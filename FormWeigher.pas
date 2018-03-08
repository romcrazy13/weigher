unit FormWeigher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormWeigher = class(TForm)
    LabelWeigher: TLabel;
    ButtonReturn: TButton;
    procedure ButtonReturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure WMNCHitTest(var Msg: TWMNCHitTest) ; message WM_NCHitTest;
  public
    { Public declarations }
  end;

var
  FormWeigher: TFormWeigher;

implementation

uses FormMain;

{$R *.dfm}

procedure TFormWeigher.ButtonReturnClick(Sender: TObject);
begin
  FMain.Show;
  FWeigher.Hide;
end;

procedure TFormWeigher.FormShow(Sender: TObject);
begin
  with FWeigher do
    FormStyle:=fsStayOnTop;
    SetWindowPos(Handle,
    HWND_TOPMOST,
    Left,
    Top,
    Width,
    Height,
    SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TFormWeigher.WMNCHitTest(var Msg: TWMNCHitTest) ;
begin
  inherited;
  if Msg.Result = htClient then Msg.Result := htCaption;
end;

end.
