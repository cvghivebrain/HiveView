object HiveView: THiveView
  Left = 192
  Top = 124
  Caption = 'HiveView'
  ClientHeight = 793
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object imgMain: TImage
    Left = 714
    Top = 0
    Width = 57
    Height = 57
    Visible = False
  end
  object lblTime: TLabel
    Left = 559
    Top = 617
    Width = 53
    Height = 13
    Caption = '0:00 / 0:00'
  end
  object lstSubfiles: TListBox
    Left = 185
    Top = 177
    Width = 523
    Height = 177
    ItemHeight = 13
    TabOrder = 6
    OnClick = lstSubfilesClick
  end
  object menuFolders: TDirectoryListBox
    Left = 0
    Top = 24
    Width = 186
    Height = 330
    TabOrder = 0
    OnClick = menuFoldersClick
  end
  object menuDrives: TDriveComboBox
    Left = 0
    Top = 0
    Width = 186
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = menuDrivesClick
  end
  object menuFiles: TFileListBox
    Left = 185
    Top = 0
    Width = 523
    Height = 177
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = menuFilesClick
  end
  object grpFormat: TGroupBox
    Left = 8
    Top = 499
    Width = 441
    Height = 286
    Caption = 'Raw Image Format'
    TabOrder = 3
    object editW: TLabeledEdit
      Left = 11
      Top = 32
      Width = 100
      Height = 27
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Width'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object editH: TLabeledEdit
      Left = 117
      Top = 32
      Width = 100
      Height = 27
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Height'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object editPixLoc: TLabeledEdit
      Left = 223
      Top = 32
      Width = 100
      Height = 27
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Pixel Address'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object editBPC: TLabeledEdit
      Left = 329
      Top = 32
      Width = 100
      Height = 27
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Bits Per Color'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object editR: TLabeledEdit
      Left = 11
      Top = 80
      Width = 206
      Height = 27
      EditLabel.Width = 20
      EditLabel.Height = 13
      EditLabel.Caption = 'Red'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object editG: TLabeledEdit
      Left = 223
      Top = 80
      Width = 206
      Height = 27
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Green'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object editB: TLabeledEdit
      Left = 11
      Top = 128
      Width = 206
      Height = 27
      EditLabel.Width = 21
      EditLabel.Height = 13
      EditLabel.Caption = 'Blue'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object editAlpha: TLabeledEdit
      Left = 223
      Top = 128
      Width = 206
      Height = 27
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Alpha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object chkPalette: TCheckBox
      Left = 14
      Top = 162
      Width = 97
      Height = 17
      Caption = 'Use Palette'
      TabOrder = 8
      OnClick = chkPaletteClick
    end
    object editPalLoc: TLabeledEdit
      Left = 11
      Top = 200
      Width = 100
      Height = 27
      EditLabel.Width = 74
      EditLabel.Height = 13
      EditLabel.Caption = 'Palette Address'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object editPalSize: TLabeledEdit
      Left = 117
      Top = 200
      Width = 100
      Height = 27
      EditLabel.Width = 69
      EditLabel.Height = 13
      EditLabel.Caption = 'Palette Length'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object editPalBits: TLabeledEdit
      Left = 223
      Top = 200
      Width = 100
      Height = 27
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = 'Bits Per Index'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object editPalData: TLabeledEdit
      Left = 11
      Top = 248
      Width = 312
      Height = 27
      EditLabel.Width = 59
      EditLabel.Height = 13
      EditLabel.Caption = 'Palette Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
  end
  object btnSave: TButton
    Left = 455
    Top = 499
    Width = 253
    Height = 58
    Caption = 'Save Image As...'
    TabOrder = 4
    OnClick = btnSaveClick
  end
  object btnReload: TButton
    Left = 337
    Top = 716
    Width = 100
    Height = 58
    Caption = 'Reload as Raw'
    TabOrder = 5
    OnClick = btnReloadClick
  end
  object memDebug: TRichEdit
    Left = 0
    Top = 352
    Width = 708
    Height = 133
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 7
    Zoom = 100
    OnChange = memDebugChange
  end
  object searchFormat: TSearchBox
    Left = 455
    Top = 647
    Width = 253
    Height = 21
    TabOrder = 8
    OnChange = searchFormatChange
  end
  object lstFormat: TListBox
    Left = 455
    Top = 668
    Width = 253
    Height = 117
    ItemHeight = 13
    TabOrder = 9
    OnClick = lstFormatClick
  end
  object mediaPlayer: TMediaPlayer
    Left = 714
    Top = 608
    Width = 57
    Height = 33
    Enabled = False
    EnabledButtons = [btPlay, btPause]
    VisibleButtons = [btPlay, btPause]
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 10
  end
  object btnPlayer: TButton
    Left = 455
    Top = 608
    Width = 98
    Height = 33
    Caption = 'Play'
    Enabled = False
    TabOrder = 11
    OnClick = btnPlayerClick
  end
  object dlgSave: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 712
    Top = 64
  end
  object timePlayer: TTimer
    Interval = 100
    OnTimer = timePlayerTimer
    Left = 776
    Top = 608
  end
end
