object JvSearchFileFrm: TJvSearchFileFrm
  Left = 0
  Top = 0
  Width = 601
  Height = 528
  TabOrder = 0
  object GroupBox1: TGroupBox
    Left = 44
    Top = 6
    Width = 365
    Height = 95
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 16
      Width = 42
      Height = 13
      Caption = 'Directory'
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 45
      Height = 13
      Caption = 'File Mask'
    end
    object edDirectory: TJvDirectoryEdit
      Left = 62
      Top = 14
      Width = 283
      Height = 21
      ButtonFlat = False
      NumGlyphs = 1
      TabOrder = 0
    end
    object chkRecursive: TCheckBox
      Left = 60
      Top = 66
      Width = 97
      Height = 17
      Caption = 'Recursive'
      TabOrder = 1
    end
    object edFileMask: TEdit
      Left = 62
      Top = 40
      Width = 283
      Height = 21
      TabOrder = 2
      Text = '*.*'
    end
  end
  object btnSearch: TButton
    Left = 194
    Top = 109
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 1
    OnClick = btnSearchClick
  end
  object GroupBox2: TGroupBox
    Left = 44
    Top = 138
    Width = 373
    Height = 295
    TabOrder = 2
    object lbFoundFiles: TJvListBox
      Left = 10
      Top = 13
      Width = 353
      Height = 274
      ItemHeight = 13
      TabOrder = 0
      ScrollBars = ssVertical
    end
  end
  object JvSearchFile1: TJvSearchFiles
    DirOption = doExcludeSubDirs
    DirParams.LastChangeAfter = 29221
    DirParams.LastChangeBefore = 29221
    FileParams.SearchTypes = [stFileMask]
    FileParams.LastChangeAfter = 29221
    FileParams.LastChangeBefore = 29221
    OnFindFile = JvSearchFile1FindFile
    Left = 324
    Top = 108
  end
end
