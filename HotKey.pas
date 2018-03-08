unit HotKey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TFormHotKey = class(TForm)
    ButtonOk: TButton;
    ButtonCancel: TButton;
    CheckBoxCtrl: TCheckBox;
    CheckBoxAlt: TCheckBox;
    CheckBoxShift: TCheckBox;
    Label1: TLabel;
    EditKey: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHotKey: TFormHotKey;

implementation

{$R *.dfm}

end.
