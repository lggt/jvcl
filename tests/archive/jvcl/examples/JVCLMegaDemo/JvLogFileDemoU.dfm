object JvLogFileDemo: TJvLogFileDemo
  Left = 0
  Top = 0
  Width = 421
  Height = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Shell Dlg 2'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  OnMouseMove = FormMouseMove
  object lblActive: TLabel
    Left = 40
    Top = 104
    Width = 336
    Height = 13
    Anchors = []
    Caption = 'Move the mouse across the form to generate log messages'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Shell Dlg 2'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblInactive: TLabel
    Left = 40
    Top = 104
    Width = 329
    Height = 13
    Anchors = []
    Caption = 'Click on the Start button to start generating log messages'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Shell Dlg 2'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnStart: TButton
    Left = 159
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Start'
    TabOrder = 0
    OnClick = btnStartClick
  end
  object btnShow: TButton
    Left = 239
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'S&how'
    TabOrder = 1
    OnClick = btnShowClick
  end
  object btnReset: TButton
    Left = 319
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Reset'
    TabOrder = 2
    OnClick = btnResetClick
  end
  object JvLogFile1: TJvLogFile
    Left = 32
    Top = 184
  end
end
