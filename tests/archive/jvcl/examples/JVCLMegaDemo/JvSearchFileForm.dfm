object JvSeachFilesForm: TJvSeachFilesForm
  Left = 393
  Top = 133
  AutoScroll = False
  Caption = 'JvSearchFiles Demo'
  ClientHeight = 453
  ClientWidth = 443
  Color = clBtnFace
  Constraints.MinHeight = 343
  Constraints.MinWidth = 370
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Shell Dlg 2'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 6
    Width = 434
    Height = 139
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 16
      Width = 48
      Height = 13
      Caption = '&Directory:'
      FocusControl = JvDirectoryBox1
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 47
      Height = 13
      Caption = '&File mask:'
      FocusControl = edFileMask
    end
    object JvDirectoryBox1: TJvDirectoryEdit
      Left = 62
      Top = 14
      Width = 362
      Height = 21
      ButtonFlat = False
      NumGlyphs = 1
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'C:\'
      OnChange = OptionsChange
    end
    object chkRecursive: TCheckBox
      Left = 72
      Top = 64
      Width = 97
      Height = 17
      Caption = '&Recursive'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = OptionsChange
    end
    object edFileMask: TEdit
      Left = 62
      Top = 40
      Width = 362
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Text = '*.*'
      OnChange = OptionsChange
    end
    object cbContainText: TComboBox
      Left = 24
      Top = 108
      Width = 400
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 5
      OnChange = OptionsChange
    end
    object rbInclude: TRadioButton
      Left = 6
      Top = 87
      Width = 79
      Height = 17
      Caption = '&With text:'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = OptionsChange
    end
    object rbExclude: TRadioButton
      Left = 132
      Top = 87
      Width = 113
      Height = 17
      Caption = 'With&out text:'
      TabOrder = 4
      OnClick = OptionsChange
    end
  end
  object btnSearch: TButton
    Left = 271
    Top = 160
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Search'
    Default = True
    ModalResult = 1
    TabOrder = 3
    OnClick = btnSearchClick
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 190
    Width = 434
    Height = 240
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    object reFoundFiles: TRichEdit
      Left = 6
      Top = 12
      Width = 422
      Height = 222
      Anchors = [akLeft, akTop, akRight, akBottom]
      PlainText = True
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
    end
  end
  object btnCancel: TButton
    Left = 357
    Top = 160
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = '&Cancel'
    Enabled = False
    ModalResult = 2
    TabOrder = 4
    OnClick = btnCancelClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 434
    Width = 443
    Height = 19
    Panels = <
      item
        Text = 'Ready'
        Width = 50
      end>
  end
  object chkClearList: TCheckBox
    Left = 24
    Top = 152
    Width = 134
    Height = 17
    Caption = 'C&lear list before search'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object chkNoDupes: TCheckBox
    Left = 24
    Top = 171
    Width = 134
    Height = 17
    Caption = 'Skip d&uplicates'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object JvSearchFile1: TJvSearchFiles
    DirOption = doExcludeInvalidDirs
    FileParams.SearchTypes = [stFileMask]
    OnBeginScanDir = JvSearchFile1BeginScanDir
    OnFindFile = JvSearchFile1FindFile
    Left = 234
    Top = 72
  end
  object JvFormStorage1: TJvFormStorage
    IniSection = 'Settings'
    StoredProps.Strings = (
      'edFileMask.Text'
      'chkRecursive.Checked'
      'JvDirectoryBox1.Text'
      'cbContainText.Items'
      'cbContainText.Text'
      'chkClearList.Checked'
      'chkNoDupes.Checked'
      'rbInclude.Checked'
      'rbExclude.Checked')
    StoredValues = <>
    Left = 186
    Top = 72
  end
end
