object JvEdits: TJvEdits
  Left = 0
  Top = 0
  Width = 349
  Height = 459
  TabOrder = 0
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 135
    Height = 16
    Caption = 'I '#39'm a Filename box: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 39
    Width = 132
    Height = 16
    Caption = 'I '#39'm a Directory box: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 70
    Width = 116
    Height = 16
    Caption = 'I '#39'm a Button box: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 101
    Width = 103
    Height = 16
    Caption = 'I '#39'm a Floatedit :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 132
    Width = 140
    Height = 16
    Caption = 'I '#39'm a Calculater box: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 163
    Width = 132
    Height = 16
    Caption = 'I '#39'm a Currency edit: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 194
    Width = 156
    Height = 16
    Caption = 'I '#39'm a another Floatedit: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 225
    Width = 116
    Height = 16
    Caption = 'I '#39'm a Integeredit: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 256
    Width = 100
    Height = 16
    Caption = 'I '#39'm a YearEdit: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object JvFileNameBox1: TJvFilenameEdit
    Left = 175
    Top = 8
    Width = 150
    Height = 21
    ButtonFlat = False
    NumGlyphs = 1
    TabOrder = 0
  end
  object JvButtonBox1: TJvComboEdit
    Left = 175
    Top = 70
    Width = 150
    Height = 21
    ButtonFlat = False
    GlyphKind = gkEllipsis
    ButtonWidth = 16
    NumGlyphs = 1
    TabOrder = 1
    OnButtonClick = JvButtonBox1ButtonClick
  end
  object JvFloatEdit1: TJvFloatEdit
    Left = 175
    Top = 101
    Width = 150
    Height = 21
    GroupIndex = -1
    MaxPixel.Font.Charset = DEFAULT_CHARSET
    MaxPixel.Font.Color = clWindowText
    MaxPixel.Font.Height = -11
    MaxPixel.Font.Name = 'MS Sans Serif'
    MaxPixel.Font.Style = []
    Modified = False
    SelStart = 0
    SelLength = 0
    ReadOnly = False
    TabOrder = 2
    Value = 1.9
  end
  object JvCalculatorBox1: TJvCalcEdit
    Left = 175
    Top = 132
    Width = 150
    Height = 21
    AutoSize = False
    NumGlyphs = 2
    TabOrder = 3
  end
  object JvCurrencyEdit1: TJvCurrencyEdit
    Left = 175
    Top = 163
    Width = 150
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 5
    Value = 1
    HasMaxValue = False
    HasMinValue = False
  end
  object JvFloatEdit21: TJvFloatEdit2
    Left = 175
    Top = 194
    Width = 150
    Height = 21
    Alignment = taRightJustify
    MaxLength = 10
    ReadOnly = False
    TabOrder = 7
    Value = 1
    MaxValue = 999
    MinValue = 1
    MaxDecimals = 5
    HasMaxValue = True
    HasMinValue = True
  end
  object JvIntegerEdit1: TJvIntegerEdit
    Left = 175
    Top = 225
    Width = 150
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 4
    Value = 1
    MaxValue = 999999
    MinValue = 1
    HasMaxValue = True
    HasMinValue = True
  end
  object JvYearEdit1: TJvYearEdit
    Left = 175
    Top = 256
    Width = 150
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 6
    Value = 2002
    MaxValue = 9999
    MinValue = 1900
    HasMaxValue = True
    HasMinValue = True
    WindowsillYear = 71
  end
  object JvDirectoryEdit1: TJvDirectoryEdit
    Left = 175
    Top = 39
    Width = 150
    Height = 21
    ButtonFlat = False
    NumGlyphs = 1
    TabOrder = 8
    Text = 'JvDirectoryEdit1'
  end
end
