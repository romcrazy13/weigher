object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Weigher'
  ClientHeight = 437
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LabelDevices: TLabel
    Left = 15
    Top = 5
    Width = 150
    Height = 20
    AutoSize = False
    Caption = 'Devices list:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object LabelLogs: TLabel
    Left = 420
    Top = 5
    Width = 150
    Height = 20
    AutoSize = False
    Caption = 'Device logs:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object DevListBox: TListBox
    Left = 5
    Top = 25
    Width = 400
    Height = 376
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 0
    OnClick = DevListBoxClick
  end
  object ButtonInfo: TButton
    Left = 121
    Top = 407
    Width = 100
    Height = 25
    Caption = 'Info'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = ButtonInfoClick
  end
  object ButtonWeigher: TButton
    Left = 292
    Top = 407
    Width = 100
    Height = 25
    Caption = 'Weigher'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonWeigherClick
  end
  object ButtonSaveLog: TButton
    Left = 700
    Top = 407
    Width = 100
    Height = 25
    Caption = 'Save Logs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = ButtonSaveLogClick
  end
  object HistoryListBox: TListBox
    Left = 410
    Top = 25
    Width = 450
    Height = 376
    ItemHeight = 13
    TabOrder = 4
  end
  object ButtonSettings: TButton
    Left = 15
    Top = 407
    Width = 100
    Height = 25
    Caption = 'Settings'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = ButtonSettingsClick
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 25
    Top = 460
  end
  object HidCtl: TJvHidDeviceController
    OnEnumerate = HidCtlEnumerate
    OnDeviceChange = HidCtlDeviceChange
    OnDeviceData = ShowRead
    OnDeviceDataError = HidCtlDeviceDataError
    Left = 85
    Top = 460
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text Files|*.txt|All Files|*.*'
    Title = 'Save Logs'
    Left = 140
    Top = 460
  end
end
