object HiveView: THiveView
  Left = 192
  Top = 124
  Caption = 'HiveView'
  ClientHeight = 765
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object imgMain: TImage
    Left = 559
    Top = 0
    Width = 57
    Height = 57
  end
  object menuFolders: TDirectoryListBox
    Left = 0
    Top = 24
    Width = 281
    Height = 329
    TabOrder = 0
    OnClick = menuFoldersClick
  end
  object menuDrives: TDriveComboBox
    Left = 0
    Top = 0
    Width = 281
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
    Left = 280
    Top = 0
    Width = 281
    Height = 353
    ItemHeight = 13
    TabOrder = 3
    OnClick = menuFilesClick
  end
  object grpFormat: TGroupBox
    Left = 8
    Top = 359
    Width = 545
    Height = 398
    Caption = 'Raw Image Format'
    TabOrder = 4
    object editW: TLabeledEdit
      Left = 11
      Top = 40
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
      Top = 40
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
      Top = 40
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
      Top = 40
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
      Top = 88
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
      Left = 11
      Top = 136
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
      Top = 184
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
      Left = 11
      Top = 232
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
      Top = 274
      Width = 97
      Height = 17
      Caption = 'Use Palette'
      TabOrder = 8
      OnClick = chkPaletteClick
    end
    object editPalLoc: TLabeledEdit
      Left = 11
      Top = 312
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
      Top = 312
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
      Left = 11
      Top = 360
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
  end
  object btnSave: TButton
    Left = 443
    Top = 447
    Width = 100
    Height = 58
    Caption = 'Save Image As...'
    TabOrder = 5
    OnClick = btnSaveClick
  end
  object btnReload: TButton
    Left = 443
    Top = 376
    Width = 100
    Height = 58
    Caption = 'Reload Image'
    TabOrder = 6
    OnClick = btnReloadClick
  end
  object memDebug: TMemo
    Left = 231
    Top = 518
    Width = 322
    Height = 239
    TabOrder = 2
  end
  object dlgSave: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 568
    Top = 592
  end
end
