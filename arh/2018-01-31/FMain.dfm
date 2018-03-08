object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Weigher'
  ClientHeight = 525
  ClientWidth = 834
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
    Left = 15
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
    Left = 420
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
    Left = 705
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
  object Button3: TButton
    Left = 545
    Top = 465
    Width = 100
    Height = 25
    Caption = 'Send'
    TabOrder = 4
    OnClick = Button3Click
  end
  object HistoryListBox: TListBox
    Left = 410
    Top = 25
    Width = 400
    Height = 376
    ItemHeight = 13
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 285
    Top = 465
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
    OnKeyPress = Edit1KeyPress
    OnKeyUp = Edit1KeyUp
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
