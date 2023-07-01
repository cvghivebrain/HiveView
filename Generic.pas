unit Generic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StrUtils, ExtCtrls, StdCtrls, pngimage, PNGFunc, Vcl.ComCtrls,
  Vcl.FileCtrl, IOUtils, CRCFunc, ExplodeFunc, FileFunc, SolveFunc;

type
  THiveView = class(TForm)
    imgMain: TImage;
    menuFolders: TDirectoryListBox;
    menuDrives: TDriveComboBox;
    memDebug: TMemo;
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
    procedure FormCreate(Sender: TObject);
    procedure menuFoldersClick(Sender: TObject);
    procedure menuFilesClick(Sender: TObject);
    procedure DoConvert(i: integer; targetfile: string);
    procedure DoUnpack(i: integer);
    procedure DoRaw(i: integer);
    procedure DefaultFormat;
    procedure btnReloadClick(Sender: TObject);
    procedure LoadImage;
    procedure LoadImagePixels;
    procedure LoadImagePalette;
    procedure LoadImagePixels2;
    function GetColorRaw(a, len: integer): string;
    procedure chkPaletteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure ShowImageInfo;
    procedure menuDrivesClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DisplayImage;
    procedure CleanTempFolder;
    procedure lstSubfilesClick(Sender: TObject);
    function FindInFile(s: string): string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HiveView: THiveView;
  bitspercolor, bytespercolor, bitsperindex, bytesperindex,
    palsize, imgw, imgh, iniformats: integer;
  inicontent: array[0..200, 0..15] of string;
  palarray: array[0..1024] of byte;
  thisfolder, tempfolder, tempfilepath: string;

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
  DeleteFile(tempfilepath); // Delete temp file.
  menuFolders.Directory := thisfolder;
  dlgSave.InitialDir := menuFolders.Directory;
  memDebug.Lines.Add(thisfolder);
  DefaultFormat; // Fill in default values for format menu.
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
    else if AnsiPos('bitsperindex=',s) = 1 then inicontent[i,ini_palbits] := Explode(s,'bitsperindex=',1)
    else if AnsiPos('unpack=',s) = 1 then inicontent[i,ini_unpack] := Explode(s,'unpack=',1)
    else if AnsiPos('convert=',s) = 1 then inicontent[i,ini_convert] := Explode(s,'convert=',1);
    end;
  CloseFile(inifile);

  skipini:
  iniformats := i;
  memDebug.Lines.Add(IntToStr(i+1)+' formats found in HiveView.ini.');
  memDebug.Lines.Add('Warning: Large images can take several seconds to load.');
  InitPNG(100,100); // Create blank 32-bit PNG.
  AssignPNG(imgMain); // Assign PNG to image on form.
  for i := 0 to (PNG.Width*PNG.Height)-1 do PixelPNG(255,0,0,i div PNG.Width,i mod PNG.Width,i div PNG.Width); // Test pattern.
  DisplayImage; // Display PNG on form.
end;

procedure THiveView.FormResize(Sender: TObject);
begin
  DisplayImage;
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
  menuFiles.Directory := menuFolders.Directory; // Show files.
  memDebug.Lines.Add(menuFolders.Directory);
end;

procedure THiveView.menuFilesClick(Sender: TObject);
var i: integer;
  cond: string;
  matchfound: boolean;
begin
  LoadFile(menuFiles.FileName); // Load file to memory.
  memDebug.Lines.Add(menuFiles.FileName+' ('+IntToStr(fs)+' bytes)');
  DefaultFormat; // Use default settings.
  CleanTempFolder;
  matchfound := false; // Assume no match.
  for i := 0 to iniformats do
    begin
    cond := ReplaceStr(inicontent[i,ini_if],'{filesize}',IntToStr(fs));
    cond := FindInFile(cond);
    if Solve(cond) > 0 then // Check file with condition from ini.
      begin
      if inicontent[i,ini_unpack] <> '' then DoUnpack(i); // Check for unpack/decompress by external program.
      if inicontent[i,ini_convert] <> '' then DoConvert(i,menuFiles.FileName) // Check for conversion by external program.
        else DoRaw(i); // Load as raw using settings from ini.
      matchfound := true;
      break; // Stop checking for format matches.
      end;
    end;
  if not matchfound then
    begin
    memDebug.Lines.Add('File format not recognised. Using default settings.'); // No match found.
    LoadImage; // Load as raw using default settings.
    end;
end;

procedure THiveView.lstSubfilesClick(Sender: TObject);
var i: integer;
  subfilename, subfilepath, cond: string;
  matchfound: boolean;
begin
  subfilename := lstSubfiles.Items[lstSubfiles.ItemIndex];
  subfilepath := tempfolder+subfilename;
  LoadFile(subfilepath); // Load file to memory.
  memDebug.Lines.Add(menuFiles.FileName+subfilename+' ('+IntToStr(fs)+' bytes)');
  DefaultFormat; // Use default settings.
  matchfound := false; // Assume no match.
  for i := 0 to iniformats do
    begin
    cond := ReplaceStr(inicontent[i,ini_if],'{filesize}',IntToStr(fs));
    cond := FindInFile(cond);
    if Solve(cond) > 0 then // Check file with condition from ini.
      begin
      if inicontent[i,ini_convert] <> '' then DoConvert(i,subfilepath) // Check for conversion by external program.
        else DoRaw(i); // Load as raw using settings from ini.
      matchfound := true;
      break; // Stop checking for format matches.
      end;
    end;
  if not matchfound then
    begin
    memDebug.Lines.Add('File format not recognised. Using default settings.'); // No match found.
    LoadImage; // Load as raw using default settings.
    end;
end;

{ Convert file to PNG using external program. }

procedure THiveView.DoConvert(i: integer; targetfile: string);
var c: string;
begin
  if inicontent[i,ini_unpack] = '' then memDebug.Lines.Add('File format found: '+inicontent[i,ini_name]);
  memDebug.Lines.Add('Converting with external program...');
  c := ReplaceStr(inicontent[i,ini_convert],'{file}',targetfile);
  c := ReplaceStr(c,'{tempfile}',tempfilepath);
  RunCommand(c); // Create temp.png.
  if not FileExists(tempfilepath) then
    begin
    memDebug.Lines.Add('temp.png not found.');
    exit;
    end;
  LoadPNG(tempfilepath);
  DisplayImage; // Display temp.png.
  DeleteFile(tempfilepath); // Delete temp.png.
  imgw := PNG.Width; // Get image width.
  imgh := PNG.Height; // Get image height.
  ShowImageInfo;
end;

{ Unpack archive using external program. }

procedure THiveView.DoUnpack(i: integer);
var c: string;
  j: integer;
begin
  memDebug.Lines.Add('File format found: '+inicontent[i,ini_name]);
  memDebug.Lines.Add('Unpacking with external program...');
  c := ReplaceStr(inicontent[i,ini_unpack],'{file}',menuFiles.FileName);
  c := ReplaceStr(c,'{tempfolder}',tempfolder);
  RunCommand(c); // Unpack to temp folder.
  ListFiles(tempfolder,true);
  for j := 0 to Length(filelist)-1 do lstSubfiles.Items.Add(filelist[j]);
  if lstSubfiles.Count = 1 then memDebug.Lines.Add(IntToStr(lstSubfiles.Count)+' file extracted.')
    else memDebug.Lines.Add(IntToStr(lstSubfiles.Count)+' files extracted.');
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
  if inicontent[i,ini_palenable] = 'yes' then chkPalette.Checked := true
    else chkPalette.Checked := false;
  editPalLoc.Enabled := chkPalette.Checked;
  editPalSize.Enabled := chkPalette.Checked;
  editPalBits.Enabled := chkPalette.Checked;
  memDebug.Lines.Add('File format found: '+inicontent[i,ini_name]);
  LoadImage; // Load image as raw using parameters from ini.
end;

{ Find a string in the file if the ini condition has a "find:" instruction,
  and insert its address back into the instruction. }

function THiveView.FindInFile(s: string): string;
var allinputs, searchstr, foundat: string;
  startpos, endpos, i: integer;
begin
  if AnsiPos('{find:',s) = 0 then
    begin
    result := s; // No change if there isn't a "find:" instruction.
    exit;
    end;
  allinputs := Explode(Explode(s,'{find:',1),'}',0); // Get all input parameters.
  searchstr := Explode(allinputs,'"',1); // Get string to search for.
  startpos := StrToInt(Explode(allinputs,',',0)); // Address to start searching.
  endpos := StrToInt(Explode(allinputs,',',1))-Length(searchstr); // Address to stop searching.
  foundat := '-1'; // Assume it won't be found.
  for i := startpos to endpos do
    if GetString(i,Length(searchstr)) = searchstr then
      begin
      foundat := IntToStr(i); // Address where string was found.
      break; // Stop searching.
      end;
  result := ReplaceStr(s,'{find:'+allinputs+'}',foundat); // Reconstruct original condition with address.
end;

procedure THiveView.btnReloadClick(Sender: TObject);
begin
  LoadImage;
end;

procedure THiveView.btnSaveClick(Sender: TObject);
begin
  if dlgSave.Execute then SavePNG(ChangeFileExt(dlgSave.FileName,'.png'));
end;

procedure THiveView.chkPaletteClick(Sender: TObject);
begin
  editPalLoc.Enabled := chkPalette.Checked;
  editPalSize.Enabled := chkPalette.Checked;
  editPalBits.Enabled := chkPalette.Checked;
end;

{ Write default values to menu. }

procedure THiveView.DefaultFormat;
begin
  editW.Text := '100'; // Set default values for image format.
  editH.Text := '100';
  editPixLoc.Text := '0';
  editBPC.Text := '24';
  editR.Text := 'x>>16';
  editG.Text := '(x>>8)&$FF';
  editB.Text := 'x&$FF';
  editAlpha.Text := '255';
  chkPalette.Checked := false;
  editPalLoc.Text := '0';
  editPalSize.Text := '0';
  editPalBits.Text := '8';
  editPalLoc.Enabled := false;
  editPalSize.Enabled := false;
  editPalBits.Enabled := false;
end;

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

procedure THiveView.ShowImageInfo;
begin
  memDebug.Lines.Add('Image is '+IntToStr(PNG.Width)+' × '+IntToStr(PNG.Height)+' pixels.');
end;

procedure THiveView.DisplayImage;
begin
  ShowPNG(HiveView.ClientWidth-imgMain.Left,HiveView.ClientHeight-imgMain.Top);
end;

procedure THiveView.LoadImagePixels;
var pos, i, j, r, g, b, a: integer;
  c: string;
  fixedalpha: boolean;
begin
  pos := Solve(editPixLoc.Text);
  fixedalpha := true;
  if AnsiPos('x',editAlpha.Text) = 0 then a := Solve(editAlpha.Text) // Alpha value doesn't change.
    else fixedalpha := false; // Alpha value is different for each pixel.
  for i := 0 to imgh-1 do
    for j := 0 to imgw-1 do
      begin
      c := GetColorRaw(pos,bytespercolor); // Get whole colour.
      r := Solve(ReplaceStr(editR.Text,'x',c)); // Get each colour channel.
      g := Solve(ReplaceStr(editG.Text,'x',c));
      b := Solve(ReplaceStr(editB.Text,'x',c));
      if not fixedalpha then a := Solve(ReplaceStr(editAlpha.Text,'x',c));
      PixelPNG(r,g,b,a,j,i);
      pos := pos+bytespercolor; // Next colour.
      if pos >= fs then exit; // Stop drawing if at end of file.
      end;
end;

procedure THiveView.LoadImagePalette;
var pos, i, r, g, b, a: integer;
  c: string;
  fixedalpha: boolean;
begin
  pos := Solve(editPalLoc.Text);
  fixedalpha := true;
  if AnsiPos('x',editAlpha.Text) = 0 then a := Solve(editAlpha.Text) // Alpha value doesn't change.
    else fixedalpha := false; // Alpha value is different for each colour.
  for i := 0 to palsize-1 do
    begin
    c := GetColorRaw(pos,bytespercolor); // Get whole colour.
    r := Solve(ReplaceStr(editR.Text,'x',c)); // Get each colour channel.
    g := Solve(ReplaceStr(editG.Text,'x',c));
    b := Solve(ReplaceStr(editB.Text,'x',c));
    if fixedalpha = false then a := Solve(ReplaceStr(editAlpha.Text,'x',c));
    palarray[i*4] := r; // Write to palette array.
    palarray[(i*4)+1] := g;
    palarray[(i*4)+2] := b;
    palarray[(i*4)+3] := a;
    pos := pos+bytespercolor; // Next colour.
    if pos >= fs then exit; // Stop drawing if at end of file.
    end;
end;

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

function THiveView.GetColorRaw(a, len: integer): string; // Get colour data from file.
var i: integer;
  r: string;
begin
  for i := 0 to len-1 do
    r := r+IntToHex(GetByte(a+i),2); // Append byte to result.
  result := '$'+r; // Output hex string.
end;

procedure THiveView.CleanTempFolder;
begin
  if SysUtils.DirectoryExists(tempfolder) then TDirectory.Delete(tempfolder,true); // Delete temp folder & all contents.
  CreateDir(tempfolder); // Create temp folder.
  lstSubfiles.Clear; // Empty list.
end;

end.
