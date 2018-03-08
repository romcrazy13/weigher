object FormSettings: TFormSettings
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Settings'
  ClientHeight = 100
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonOk: TButton
    Left = 5
    Top = 65
    Width = 100
    Height = 25
    Caption = 'Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonOkClick
  end
  object ButtonCancel: TButton
    Left = 114
    Top = 65
    Width = 100
    Height = 25
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = ButtonCancelClick
  end
  object BoxHotKey: TGroupBox
    Left = 5
    Top = 10
    Width = 300
    Height = 45
    Caption = 'Weigher Hot Key:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object EditHotKey: THotKey
      Left = 5
      Top = 15
      Width = 290
      Height = 20
      AutoSize = False
      HotKey = 16471
      Modifiers = [hkCtrl]
      TabOrder = 0
    end
  end
  object BoxTitle: TGroupBox
    Left = 5
    Top = 208
    Width = 300
    Height = 75
    Caption = 'Application Part Of Title:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object EditTitle: TEdit
      Left = 5
      Top = 45
      Width = 290
      Height = 20
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CheckTitle: TCheckBox
      Left = 5
      Top = 20
      Width = 290
      Height = 17
      Hint = 
        'Check it this if you want set weight only in the concrete window' +
        ', else you can data from weigher can paste in any window'
      Caption = 'Set Weight only in alone window with part of title'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckTitleClick
    end
  end
end
