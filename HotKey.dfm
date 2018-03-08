object FormHotKey: TFormHotKey
  Left = 0
  Top = 0
  Caption = 'Hot Key'
  ClientHeight = 145
  ClientWidth = 218
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 89
    Top = 85
    Width = 71
    Height = 20
    AutoSize = False
    Caption = 'Key'
    Layout = tlCenter
  end
  object ButtonOk: TButton
    Left = 5
    Top = 112
    Width = 100
    Height = 25
    Caption = 'Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object ButtonCancel: TButton
    Left = 111
    Top = 112
    Width = 100
    Height = 25
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object CheckBoxCtrl: TCheckBox
    Left = 63
    Top = 8
    Width = 97
    Height = 20
    Caption = 'Ctrl'
    TabOrder = 0
  end
  object CheckBoxAlt: TCheckBox
    Left = 63
    Top = 34
    Width = 97
    Height = 20
    Caption = 'Alt'
    TabOrder = 1
  end
  object CheckBoxShift: TCheckBox
    Left = 63
    Top = 60
    Width = 97
    Height = 20
    Caption = 'Shift'
    TabOrder = 2
  end
  object EditKey: TEdit
    Left = 63
    Top = 85
    Width = 20
    Height = 20
    TabOrder = 3
  end
end
