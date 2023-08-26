unit Generic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StrUtils, ExtCtrls, StdCtrls, pngimage, PNGFunc, Vcl.ComCtrls,
  Vcl.FileCtrl, IOUtils, CRCFunc, ExplodeFunc, FileFunc, SolveFunc,
  Vcl.WinXCtrls, Bass;

type
  THiveView = class(TForm)
    imgMain: TImage;
    menuFolders: TDirectoryListBox;
    menuDrives: TDriveComboBox;
    menuFiles: TFileListBox;
    grpFormat: TGroupBox;
    editW: TLabeledEdit;
    editH: TLabeledEdit;
    editPixLoc: TLabeledEdit;
    editBPC: TLabeledEdit;
    editR: TLabeledEdit;
    editG: TLabeledEdit;
    editB: TLabeledEdit;
    editAlpha: TLabeledEdit;
    btnReload: TButton;
    chkPalette: TCheckBox;
    editPalLoc: TLabeledEdit;
    editPalSize: TLabeledEdit;
    editPalBits: TLabeledEdit;
    dlgSave: TSaveDialog;
    btnSave: TButton;
    lstSubfiles: TListBox;
    memDebug: TRichEdit;
    searchFormat: TSearchBox;
    lstFormat: TListBox;
    editPalData: TLabeledEdit;
    btnPlayer: TButton;
    lblTime: TLabel;
    timePlayer: TTimer;
    trkVolume: TTrackBar;
    imgWavBG: TImage;
    imgWavFG: TImage;
    procedure FormCreate(Sender: TObject);
    procedure menuFoldersClick(Sender: TObject);
    procedure menuFilesClick(Sender: TObject);
    procedure CheckFormat;
    procedure DoConvert(i: integer);
    function MakeCommand(s, targetfile, tempfolderlocal: string): string;
    procedure DoUnpack(i: integer);
    procedure DoRaw(i: integer);
    procedure DoAudio(i: integer);
    procedure LoadWAV(f: string);
    procedure ClearWAV;
    function GetMinSec(i: integer): string;
    procedure DefaultFormat;
    procedure btnReloadClick(Sender: TObject);
    procedure LoadImage;
    procedure LoadImagePixels;
    procedure LoadImagePalette;
    procedure LoadImagePixels2;
    function GetColorVal(a, len: integer): int64;
    procedure chkPaletteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure ShowImageInfo;
    procedure ShowFormat(s: string);
    procedure menuDrivesClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DisplayImage;
    procedure CleanTempFolder;
    procedure lstSubfilesClick(Sender: TObject);
    procedure memDebugChange(Sender: TObject);
    procedure searchFormatChange(Sender: TObject);
    procedure lstFormatClick(Sender: TObject);
    procedure btnPlayerClick(Sender: TObject);
    procedure timePlayerTimer(Sender: TObject);
    procedure trkVolumeChange(Sender: TObject);
    procedure imgWavBGMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UpdateTime;
    procedure imgWavFGMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HiveView: THiveView;
  bitspercolor, bytespercolor, bitsperindex, bytesperindex,
    palsize, imgw, imgh, iniformats, wavlength: integer;
  inicontent: array[0..10000, 0..17] of string;
  palarray: array[0..1024] of byte;
  thisfolder, tempfolder, tempfilepath, tempwavpath: string;
  formatmatch: array[0..10000] of integer;
  submode, playingwav: boolean;
  currentfile, wavlengthstr: string;
  wav: HSTREAM;

const
  ini_name: integer = 0;
  ini_if: integer = 1;
  ini_width: integer = 2;
  ini_height: integer = 3;
  ini_pixelstart: integer = 4;
  ini_bpc: integer = 5;
  ini_r: integer = 6;
  ini_g: integer = 7;
  ini_b: integer = 8;
  ini_alpha: integer = 9;
  ini_palenable: integer = 10;
  ini_palstart: integer = 11;
  ini_palsize: integer = 12;
  ini_palbits: integer = 13;
  ini_convert: integer = 14;
  ini_unpack: integer = 15;
  ini_paldata: integer = 16;
  ini_audio: integer = 17;

implementation

{$R *.dfm}

procedure THiveView.FormCreate(Sender: TObject);
var i: integer;
  inifile: textfile;
  s: string;
label skipini;
begin
  thisfolder := ExtractFileDir(Application.ExeName);
  tempfolder := thisfolder+'\temp';
  CleanTempFolder; // Create/empty temp folder.
  tempfilepath := thisfolder+'\temp.png';
  tempwavpath := thisfolder+'\temp.wav';
  playingwav := false;
  BASS_Init(-1,44100,0,Handle,nil); // Initialize the BASS library.
  DeleteFile(tempfilepath); // Delete temp file.
  menuFolders.Directory := thisfolder;
  dlgSave.InitialDir := menuFolders.Directory;
  memDebug.Lines.Add(thisfolder);
  DefaultFormat; // Fill in default values for format menu.
  HiveView.Width := Round(Screen.WorkAreaWidth*0.8);
  i := -1; // Start at -1 so that first format is 0.
  if not FileExists('HiveView.ini') then // Check for ini file.
    begin
    memDebug.Lines.Add('HiveView.ini not found.');
    goto skipini;
    end;
  AssignFile(inifile,'HiveView.ini'); // Open ini file.
  Reset(inifile);
  while not eof(inifile) do
    begin
    ReadLn(inifile,s);
    if AnsiPos('[',s) = 1 then
      begin
      Inc(i); // Next format.
      inicontent[i,ini_name] := Explode(Explode(s,'[',1),']',0);
      end
    else if AnsiPos('if:',s) = 1 then inicontent[i,ini_if] := Explode(s,'if:',1)
    else if AnsiPos('width=',s) = 1 then inicontent[i,ini_width] := Explode(s,'width=',1)
    else if AnsiPos('height=',s) = 1 then inicontent[i,ini_height] := Explode(s,'height=',1)
    else if AnsiPos('pixelstart=',s) = 1 then inicontent[i,ini_pixelstart] := Explode(s,'pixelstart=',1)
    else if AnsiPos('bitspercolor=',s) = 1 then inicontent[i,ini_bpc] := Explode(s,'bitspercolor=',1)
    else if AnsiPos('red=',s) = 1 then inicontent[i,ini_r] := Explode(s,'red=',1)
    else if AnsiPos('green=',s) = 1 then inicontent[i,ini_g] := Explode(s,'green=',1)
    else if AnsiPos('blue=',s) = 1 then inicontent[i,ini_b] := Explode(s,'blue=',1)
    else if AnsiPos('alpha=',s) = 1 then inicontent[i,ini_alpha] := Explode(s,'alpha=',1)
    else if AnsiPos('palette=',s) = 1 then inicontent[i,ini_palenable] := Explode(s,'palette=',1)
    else if AnsiPos('palstart=',s) = 1 then inicontent[i,ini_palstart] := Explode(s,'palstart=',1)
    else if AnsiPos('palsize=',s) = 1 then inicontent[i,ini_palsize] := Explode(s,'palsize=',1)
    else if AnsiPos('paldata=',s) = 1 then inicontent[i,ini_paldata] := Explode(s,'paldata=',1)
    else if AnsiPos('bitsperindex=',s) = 1 then inicontent[i,ini_palbits] := Explode(s,'bitsperindex=',1)
    else if AnsiPos('unpack=',s) = 1 then inicontent[i,ini_unpack] := Explode(s,'unpack=',1)
    else if AnsiPos('convert=',s) = 1 then inicontent[i,ini_convert] := Explode(s,'convert=',1)
    else if AnsiPos('audio=',s) = 1 then inicontent[i,ini_audio] := Explode(s,'audio=',1);
    end;
  CloseFile(inifile);

  skipini:
  iniformats := i;
  memDebug.Lines.Add(IntToStr(i+1)+' formats found in HiveView.ini.');
  memDebug.Lines.Add('Warning: Large images can take several seconds to load.');
  InitPNG(100,100); // Create blank 32-bit PNG.
  AssignPNG(imgMain); // Assign PNG to image on form.
end;

procedure THiveView.FormResize(Sender: TObject);
begin
  if imgMain.Visible then DisplayImage; // Adjust scale of image to fit screen.
end;

procedure THiveView.memDebugChange(Sender: TObject);
var LastFocus: TWinControl;
begin
  LastFocus := Screen.ActiveControl as TWinControl; // Save previous focus.
  if HiveView.Visible and HiveView.Enabled then memDebug.SetFocus
    else exit;
  memDebug.SelStart := memDebug.GetTextLen;
  SendMessage(memDebug.Handle,EM_SCROLLCARET,0,0); // Scroll to bottom of debug text.
  LastFocus.SetFocus; // Restore focus.
end;

procedure THiveView.menuDrivesClick(Sender: TObject);
var drive: string;
begin
  drive := AnsiUpperCase(Explode(menuDrives.Items[menuDrives.ItemIndex],':',0));
  menuFolders.Directory := drive+':\'; // Show folders on drive.
  menuFiles.Directory := menuFolders.Directory; // Show files in root folder.
  memDebug.Lines.Add(menuFolders.Directory);
end;

procedure THiveView.menuFoldersClick(Sender: TObject);
begin
  menuFolders.Perform(WM_LBUTTONDBLCLK,0,0); // Simulate double click to load folder on single click.
  CleanTempFolder;
  menuFiles.Directory := menuFolders.Directory; // Show files.
  memDebug.Lines.Add(menuFolders.Directory);
end;

procedure THiveView.menuFilesClick(Sender: TObject);
begin
  if menuFiles.ItemIndex = -1 then exit; // Do nothing if not clicked on an item.
  submode := false;
  currentfile := menuFiles.FileName;
  LoadFile(currentfile); // Load file to memory.
  memDebug.Lines.Add(currentfile+' ('+IntToStr(fs)+' bytes)');
  if fs = 0 then exit; // Stop if file is 0 bytes.
  CleanTempFolder;
  ClearWAV;
  CheckFormat; // Find matching format and display image.
end;

procedure THiveView.CheckFormat;
var i: integer;
  matchfound: boolean;
begin
  DefaultFormat; // Use default settings.
  matchfound := false; // Assume no match.
  imgMain.Visible := false;
  for i := 0 to iniformats do
    if inicontent[i,ini_if] <> '' then
      if Solve(inicontent[i,ini_if]) > 0 then // Check file with condition from ini.
        begin
        if inicontent[i,ini_unpack] <> '' then DoUnpack(i); // Check for unpack/decompress by external program.
        if inicontent[i,ini_convert] <> '' then DoConvert(i); // Check for conversion by external program.
        if inicontent[i,ini_audio] <> '' then DoAudio(i); // Check for conversion by external program.
        if (inicontent[i,ini_unpack]+inicontent[i,ini_convert]+inicontent[i,ini_audio] = '') then DoRaw(i); // Load as raw using settings from ini.
        matchfound := true;
        break; // Stop checking for format matches.
        end;
  if not matchfound then
    begin
    memDebug.Lines.Add('File format not recognised. Using default settings.'); // No match found.
    LoadImage; // Load as raw using default settings.
    end;
end;

procedure THiveView.lstSubfilesClick(Sender: TObject);
var subfilename: string;
begin
  if lstSubfiles.ItemIndex = -1 then exit; // Do nothing if not clicked on an item.
  submode := true;
  subfilename := lstSubfiles.Items[lstSubfiles.ItemIndex];
  currentfile := tempfolder+subfilename;
  LoadFile(currentfile); // Load file to memory.
  memDebug.Lines.Add(menuFiles.FileName+subfilename+' ('+IntToStr(fs)+' bytes)');
  if fs = 0 then exit; // Stop if file is 0 bytes.
  CheckFormat; // Find matching format and display image.
end;

{ Convert file to PNG using external program. }

procedure THiveView.DoConvert(i: integer);
var c, c2: string;
  j: integer;
begin
  if inicontent[i,ini_unpack] = '' then ShowFormat(inicontent[i,ini_name]);
  c := inicontent[i,ini_convert];
  if c = 'open' then LoadPNG(currentfile)
  else
    begin
    memDebug.Lines.Add('Converting with external program...');
    j := 0;
    while Explode(c,'&&',j) <> '' do // Multiple commands separated by &&.
      begin
      c2 := MakeCommand(Explode(c,'&&',j),currentfile,tempfolder);
      //memDebug.Lines.Add(c2);
      RunCommand(c2); // Create temp.png.
      Inc(j); // Next command.
      end;
    if not FileExists(tempfilepath) then
      begin
      memDebug.Lines.Add('Conversion failed.');
      exit;
      end;
    LoadPNG(tempfilepath);
    DeleteFile(tempfilepath); // Delete temp.png.
    end;
  DisplayImage; // Display temp.png.
  imgw := PNG.Width; // Get image width.
  imgh := PNG.Height; // Get image height.
  ShowImageInfo;
end;

function THiveView.MakeCommand(s, targetfile, tempfolderlocal: string): string;
begin
  s := Trim(s); // Remove leading & trailing spaces.
  s := ReplaceStr(s,'{file}',targetfile); // File to open.
  s := ReplaceStr(s,'{filenoext}',ChangeFileExt(targetfile,'')); // File and path without '.ext'.
  s := ReplaceStr(s,'{filenameonly}',ChangeFileExt(ExtractFileName(targetfile),'')); // File without '.ext' or path.
  s := ReplaceStr(s,'{filedir}',ExtractFileDir(targetfile)); // File's folder (no trailing '\').
  s := ReplaceStr(s,'{tempfile}',tempfilepath); // temp.png
  s := ReplaceStr(s,'{tempwav}',tempwavpath); // temp.wav
  s := ReplaceStr(s,'{tempfolder}',tempfolderlocal);
  result := s;
end;

{ Unpack archive using external program. }

procedure THiveView.DoUnpack(i: integer);
var c, c2, unpackto: string;
  j: integer;
begin
  if submode then // Check if this is a file within a file.
    begin
    unpackto := currentfile+'_';
    if SysUtils.DirectoryExists(unpackto) then exit // Do nothing if already unpacked.
      else CreateDir(unpackto); // Create folder with same name as target file.
    end
  else unpackto := tempfolder;
  ShowFormat(inicontent[i,ini_name]);
  memDebug.Lines.Add('Unpacking with external program...');
  c := inicontent[i,ini_unpack];
  j := 0;
  while Explode(c,'&&',j) <> '' do // Multiple commands separated by &&.
    begin
    c2 := MakeCommand(Explode(c,'&&',j),currentfile,unpackto);
    RunCommand(c2); // Unpack to temp folder.
    Inc(j); // Next command.
    end;
  ListFiles(unpackto,true); // Create list of files. See filelist array.
  for j := 0 to Length(filelist)-1 do
    begin
    if not submode then lstSubfiles.Items.Add(filelist[j])
      else lstSubfiles.Items.Insert(lstSubfiles.ItemIndex+1,lstSubfiles.Items[lstSubfiles.ItemIndex]+'_'+filelist[j]);
    end;
  if Length(filelist) = 1 then memDebug.Lines.Add(IntToStr(Length(filelist))+' file extracted.')
    else memDebug.Lines.Add(IntToStr(Length(filelist))+' files extracted.');
end;

{ Display file as raw image using menu settings. }

procedure THiveView.DoRaw(i: integer);
begin
  if inicontent[i,ini_unpack] <> '' then exit; // Don't load as raw if file is an archive.
  if inicontent[i,ini_width] <> '' then editW.Text := inicontent[i,ini_width];
  if inicontent[i,ini_height] <> '' then editH.Text := inicontent[i,ini_height];
  if inicontent[i,ini_pixelstart] <> '' then editPixLoc.Text := inicontent[i,ini_pixelstart];
  if inicontent[i,ini_bpc] <> '' then editBPC.Text := inicontent[i,ini_bpc];
  if inicontent[i,ini_r] <> '' then editR.Text := inicontent[i,ini_r];
  if inicontent[i,ini_g] <> '' then editG.Text := inicontent[i,ini_g];
  if inicontent[i,ini_b] <> '' then editB.Text := inicontent[i,ini_b];
  if inicontent[i,ini_alpha] <> '' then editAlpha.Text := inicontent[i,ini_alpha];
  if inicontent[i,ini_palstart] <> '' then editPalLoc.Text := inicontent[i,ini_palstart];
  if inicontent[i,ini_palsize] <> '' then editPalSize.Text := inicontent[i,ini_palsize];
  if inicontent[i,ini_palbits] <> '' then editPalBits.Text := inicontent[i,ini_palbits];
  if inicontent[i,ini_paldata] <> '' then editPalData.Text := inicontent[i,ini_paldata];
  if inicontent[i,ini_palenable] = 'yes' then chkPalette.Checked := true
    else chkPalette.Checked := false;
  editPalLoc.Enabled := chkPalette.Checked;
  editPalSize.Enabled := chkPalette.Checked;
  editPalBits.Enabled := chkPalette.Checked;
  editPalData.Enabled := chkPalette.Checked;
  ShowFormat(inicontent[i,ini_name]);
  LoadImage; // Load image as raw using parameters from ini.
end;

{ Convert and open an audio file. }

procedure THiveView.DoAudio(i: integer);
var c, c2: string;
  j: integer;
begin
  if inicontent[i,ini_convert]+inicontent[i,ini_unpack] = '' then ShowFormat(inicontent[i,ini_name]);
  c := inicontent[i,ini_audio];
  if c = 'open' then LoadWAV(currentfile) // Load WAV file as-is.
  else
    begin
    memDebug.Lines.Add('Converting with external program...');
    j := 0;
    while Explode(c,'&&',j) <> '' do // Multiple commands separated by &&.
      begin
      c2 := MakeCommand(Explode(c,'&&',j),currentfile,tempfolder);
      //memDebug.Lines.Add(c2);
      RunCommand(c2); // Create temp.wav.
      Inc(j); // Next command.
      end;
    if not FileExists(tempwavpath) then
      begin
      memDebug.Lines.Add('Conversion failed.');
      exit;
      end;
    LoadWAV(tempwavpath);
    end;
end;

procedure THiveView.LoadWAV(f: string);
var wfcmd, wf: string;
begin
  wav := BASS_StreamCreateFile(false,PWideChar(f),0,0,BASS_UNICODE+BASS_STREAM_PRESCAN);
  BASS_ChannelSetAttribute(wav,BASS_ATTRIB_VOL,trkVolume.Position/trkVolume.Max);
  wavlength := BASS_ChannelGetLength(wav,BASS_POS_BYTE); // Get track length in bytes.
  wavlengthstr := GetMinSec(wavlength); // Get track length as M:SS.
  lblTime.Caption := '0:00 / '+wavlengthstr;
  btnPlayer.Enabled := true; // Enable controls.
  wfcmd := '"bin\ffmpeg.exe" -i "'+f+'" -filter_complex "showwavespic=s='+IntToStr(imgWavBG.Width)+'x'+IntToStr(imgWavBG.Height)+':colors={color}" "';
  wf := thisfolder+'\wf1.png';
  RunCommand(ReplaceStr(wfcmd,'{color}','red')+wf+'"'); // Create waveform image.
  RunCommand('"bin\magick.exe" mogrify -background black -alpha remove '+wf); // Set background colour.
  imgWavBG.Picture.LoadFromFile(wf); // Show waveform.
  wf := thisfolder+'\wf2.png';
  RunCommand(ReplaceStr(wfcmd,'{color}','#00FFFF')+wf+'"'); // Create waveform image.
  RunCommand('"bin\magick.exe" mogrify -background #004000 -alpha remove '+wf); // Set background colour.
  imgWavFG.Picture.LoadFromFile(wf);
  imgWavFG.Width := 0;
end;

procedure THiveView.ClearWAV;
begin
  if playingwav then BASS_ChannelStop(wav);//mediaPlayer.Stop;
  playingwav := false;
  btnPlayer.Enabled := false; // Disable controls.
  btnPlayer.Caption := 'Play';
  lblTime.Caption := '0:00 / 0:00';
  wavlength := 0;
  imgWavFG.Picture := nil;
  imgWavBG.Picture := nil;
  DeleteFile(thisfolder+'\wf1.png');
  DeleteFile(thisfolder+'\wf2.png');
end;

{ Convert time in bytes to M:SS format. }

function THiveView.GetMinSec(i: integer): string;
var secs: int64;
begin
  secs := Round(BASS_ChannelBytes2Seconds(wav,i)); // Convert to seconds.
  result := IntToStr(secs mod 60); // Get seconds.
  if Length(result) = 1 then result := '0'+result; // Add leading 0 if needed.
  result := IntToStr(secs div 60)+':'+result; // Add minutes.
end;

procedure THiveView.btnPlayerClick(Sender: TObject);
begin
  if playingwav then
    begin
    btnPlayer.Caption := 'Play';
    BASS_ChannelPause(wav);
    playingwav := false;
    end
  else
    begin
    btnPlayer.Caption := 'Pause';
    BASS_ChannelPlay(wav,false);
    playingwav := true;
    end;
end;

procedure THiveView.timePlayerTimer(Sender: TObject);
begin
  if playingwav then UpdateTime; // Update time and progress bar.
end;

procedure THiveView.UpdateTime;
var pos: integer;
begin
  pos := BASS_ChannelGetPosition(wav,BASS_POS_BYTE);
  lblTime.Caption := GetMinSec(pos)+' / '+wavlengthstr; // Update timer.
  imgWavFG.Width := Round(imgWavBG.Width*(pos/wavlength)); // Update progress bar.
  if pos = wavlength then // Check if at end of file.
    begin
    BASS_ChannelStop(wav); // Stop playing.
    btnPlayer.Caption := 'Play';
    playingwav := false;
    end;
end;

procedure THiveView.trkVolumeChange(Sender: TObject);
begin
  BASS_ChannelSetAttribute(wav,BASS_ATTRIB_VOL,trkVolume.Position/trkVolume.Max);
end;

procedure THiveView.imgWavBGMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if wavlength = 0 then exit; // Do nothing if no audio.
  BASS_ChannelSetPosition(wav,Round(wavlength*(X/imgWavBG.Width)),BASS_POS_BYTE);
  UpdateTime;
end;

procedure THiveView.imgWavFGMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if wavlength = 0 then exit; // Do nothing if no audio.
  BASS_ChannelSetPosition(wav,Round(wavlength*(X/imgWavBG.Width)),BASS_POS_BYTE);
  UpdateTime;
end;

procedure THiveView.btnReloadClick(Sender: TObject);
begin
  LoadImage;
end;

procedure THiveView.btnSaveClick(Sender: TObject);
begin
  if not imgMain.Visible then exit; // Do nothing if there is no image.
  if dlgSave.Execute then SavePNG(ChangeFileExt(dlgSave.FileName,'.png'));
end;

procedure THiveView.chkPaletteClick(Sender: TObject);
begin
  editPalLoc.Enabled := chkPalette.Checked;
  editPalSize.Enabled := chkPalette.Checked;
  editPalBits.Enabled := chkPalette.Checked;
  editPalData.Enabled := chkPalette.Checked;
end;

{ Write default values to menu. }

procedure THiveView.DefaultFormat;
begin
  editW.Text := '256'; // Set default values for image format.
  editH.Text := '256';
  editPixLoc.Text := '0';
  editBPC.Text := '24';
  editR.Text := '{val}>>16';
  editG.Text := '({val}>>8)&$FF';
  editB.Text := '{val}&$FF';
  editAlpha.Text := '255';
  chkPalette.Checked := false;
  editPalLoc.Text := '0';
  editPalSize.Text := '0';
  editPalBits.Text := '8';
  editPalLoc.Enabled := false;
  editPalSize.Enabled := false;
  editPalBits.Enabled := false;
  editPalData.Text := '';
  editPalData.Enabled := false;
end;

{ Check menu settings and load image using specified method. }

procedure THiveView.LoadImage;
begin
  if fs = 0 then // Check if file has been loaded.
    begin
    memDebug.Lines.Add('No image loaded.');
    exit;
    end;
  imgw := Solve(editW.Text); // Get image width.
  imgh := Solve(editH.Text); // Get image height.
  InitPNG(imgw,imgh);
  bitspercolor := Solve(editBPC.Text);
  bytespercolor := bitspercolor div 8;
  bitsperindex := Solve(editPalBits.Text);
  bytesperindex := bitsperindex div 8;
  palsize := Solve(editPalSize.Text);
  if (bitspercolor mod 8 > 0) or (bitspercolor = 0) or (bitspercolor > 64) then // Check if colour info is valid.
    begin
    memDebug.Lines.Add('Unable to process '+IntToStr(bitspercolor)+' bits per color.');
    exit;
    end;
  if palsize*4 > Length(palarray) then // Check if palette fits in array.
    begin
    memDebug.Lines.Add('Unable to process '+IntToStr(palsize)+' colors in palette.');
    exit;
    end;
  if (bitsperindex and (bitsperindex-1) > 0) or (bitsperindex > 8) then // Check if bitsperindex is valid.
    begin
    memDebug.Lines.Add('Unable to process '+IntToStr(bitsperindex)+' bits per index.');
    exit;
    end;
  if chkPalette.Checked = false then LoadImagePixels // Load actual image pixel data.
  else
    begin
    LoadImagePalette;
    LoadImagePixels2;
    end;
  DisplayImage;
  ShowImageInfo;
end;

{ Show image stats. }

procedure THiveView.ShowImageInfo;
begin
  memDebug.Lines.Add('Image is '+IntToStr(PNG.Width)+' � '+IntToStr(PNG.Height)+' pixels.');
end;

procedure THiveView.ShowFormat(s: string);
begin
  memDebug.Lines.Add('File format found: '+s);
  memDebug.SelStart := memDebug.GetTextLen;
  memDebug.SelLength := -1-Length(s); // Select the format text itself.
  memDebug.SelAttributes.Style := [fsBold]; // Make it bold.
  memDebug.SelLength := 0;
  memDebug.SelAttributes.Style := [];
end;

{ Update window so image is actually displayed. }

procedure THiveView.DisplayImage;
begin
  if (HiveView.ClientWidth-imgMain.Left < 16) or (HiveView.ClientHeight-imgMain.Top < 16) then exit;
  imgMain.Visible := true;
  ShowPNG(HiveView.ClientWidth-imgMain.Left,HiveView.ClientHeight-imgMain.Top);
end;

{ Load image by drawing pixels directly. }

procedure THiveView.LoadImagePixels;
var pos, i, j, r, g, b, a: integer;
  fixedalpha: boolean;
begin
  pos := Solve(editPixLoc.Text);
  fixedalpha := true;
  if AnsiPos('{val}',editAlpha.Text) = 0 then a := Solve(editAlpha.Text) // Alpha value doesn't change.
    else fixedalpha := false; // Alpha value is different for each pixel.
  for i := 0 to imgh-1 do
    for j := 0 to imgw-1 do
      begin
      val := GetColorVal(pos,bytespercolor); // Get whole colour ("val" is SolveFunc variable).
      r := Solve(editR.Text); // Get each colour channel.
      g := Solve(editG.Text);
      b := Solve(editB.Text);
      if not fixedalpha then a := Solve(editAlpha.Text);
      PixelPNG(r,g,b,a,j,i);
      pos := pos+bytespercolor; // Next colour.
      if pos >= fs then exit; // Stop drawing if at end of file.
      end;
end;

{ Load palette for image (doesn't draw image). }

procedure THiveView.LoadImagePalette;
var pos, i, r, g, b, a: integer;
  fixedalpha: boolean;
begin
  pos := Solve(editPalLoc.Text);
  fixedalpha := true;
  if AnsiPos('{val}',editAlpha.Text) = 0 then a := Solve(editAlpha.Text) // Alpha value doesn't change.
    else fixedalpha := false; // Alpha value is different for each colour.
  for i := 0 to palsize-1 do
    begin
    if Explode(editPalData.Text,',',i) <> '' then val := Solve(Explode(editPalData.Text,',',i))
      else val := GetColorVal(pos,bytespercolor); // Get whole colour ("val" is SolveFunc variable).
    r := Solve(editR.Text); // Get each colour channel.
    g := Solve(editG.Text);
    b := Solve(editB.Text);
    if not fixedalpha then a := Solve(editAlpha.Text);
    palarray[i*4] := r; // Write to palette array.
    palarray[(i*4)+1] := g;
    palarray[(i*4)+2] := b;
    palarray[(i*4)+3] := a;
    pos := pos+bytespercolor; // Next colour.
    if pos >= fs then exit; // Stop drawing if at end of file.
    end;
end;

{ Draw image using palette and indexed pixels. }

procedure THiveView.LoadImagePixels2; // Load pixels using palette array.
var pos, bit, i, r, g, b, a, c: integer;
begin
  pos := Solve(editPixLoc.Text);
  bit := 0;
  for i := 0 to (imgh*imgw)-1 do
    begin
    c := GetByte(pos) shr (8-bitsperindex-bit); // Get palette index.
    c := c and ((1 shl bitsperindex)-1); // Read only relevant bits.
    r := palarray[c*4]; // Get each colour channel.
    g := palarray[(c*4)+1];
    b := palarray[(c*4)+2];
    a := palarray[(c*4)+3];
    PixelPNG(r,g,b,a,i mod imgw,i div imgw);
    bit := bit+bitsperindex;
    if bit = 8 then
      begin
      pos := pos+1; // Next byte.
      bit := 0; // Reset bit counter.
      end;
    if pos >= fs then exit; // Stop drawing if at end of file.
    end;
end;

{ Get value of a single colour from the file. }

function THiveView.GetColorVal(a, len: integer): int64;
var i: integer;
begin
  result := 0;
  for i := 0 to len-1 do
    result := (result shl 8)+GetByte(a+i); // Move previous bytes up and add next one.
end;

{ Empty temp folder and clear list of subfiles. }

procedure THiveView.CleanTempFolder;
var rec: TSearchRec;
begin
  if SysUtils.DirectoryExists(tempfolder) then // Check if temp folder exists.
    begin
    if FindFirst(tempfolder+'\*',faAnyFile,rec) = 0 then // First item in temp folder.
      begin
      try
        repeat
          if (rec.Name <> '.') and (rec.Name <> '..') then // Exclude current and parent folder.
          begin
          if (rec.Attr and faDirectory) = faDirectory then
            TDirectory.Delete(tempfolder+'\'+rec.Name,true) // Delete folder.
          else
            begin
            FileSetAttr(tempfolder+'\'+rec.Name,rec.Attr and $FE); // Set as not read only.
            DeleteFile(tempfolder+'\'+rec.Name); // Delete file.
            end;
          end;
        until FindNext(rec) <> 0; // Repeat for all items.
      finally
        FindClose(rec);
      end;
      end;
    end
  else CreateDir(tempfolder); // Create temp folder.
  lstSubfiles.Clear; // Empty list.
end;

procedure THiveView.searchFormatChange(Sender: TObject);
var i: integer;
begin
  if searchFormat.Text = '' then exit; // Do nothing if search is empty.
  if currentfile = '' then exit; // Do nothing if file isn't loaded.
  lstFormat.Clear; // Clear list of matches.
  for i := 0 to iniformats do
    begin
    if AnsiPos(AnsiLowerCase(searchFormat.Text),AnsiLowerCase(inicontent[i,ini_name])) <> 0 then
      begin
      lstFormat.Items.Add(inicontent[i,ini_name]); // Add format name to list.
      formatmatch[lstFormat.Items.Count-1] := i; // Save format numerical id.
      end;
    end;
end;

procedure THiveView.lstFormatClick(Sender: TObject);
var i: integer;
begin
  if lstFormat.ItemIndex = -1 then exit; // Do nothing if not clicked on an item.
  DefaultFormat; // Use default settings.
  i := formatmatch[lstFormat.ItemIndex];
  if inicontent[i,ini_unpack] <> '' then DoUnpack(i); // Check for unpack/decompress by external program.
  if inicontent[i,ini_convert] <> '' then DoConvert(i); // Check for conversion by external program.
  if (inicontent[i,ini_unpack]+inicontent[i,ini_convert] = '') then DoRaw(i); // Load as raw using settings from ini.
end;

end.
