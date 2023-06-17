unit Generic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StrUtils, ExtCtrls, StdCtrls, pngimage, PNGFunc, Vcl.ComCtrls,
  Vcl.FileCtrl, CRCFunc, ExplodeFunc, FileFunc, SolveFunc;

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
    procedure FormCreate(Sender: TObject);
    procedure menuFoldersClick(Sender: TObject);
    procedure menuFilesClick(Sender: TObject);
    procedure DefaultFormat;
    procedure btnReloadClick(Sender: TObject);
    procedure LoadImage;
    procedure LoadImagePixels;
    function GetColorRaw(a, len: integer): string;
    procedure chkPaletteClick(Sender: TObject);
    procedure menuDrivesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HiveView: THiveView;
  bitspercolor, bytespercolor, bitsperindex, indicesperbyte, imgw, imgh, iniformats: integer;
  inicontent: array[0..200, 0..13] of string;
  palarray: array[0..1024] of byte;

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

implementation

{$R *.dfm}

procedure THiveView.menuDrivesClick(Sender: TObject);
begin
  menuFolders.Directory := menuDrives.Drive+':\'; // Show folders on drive.
  menuFiles.Directory := menuFolders.Directory; // Show files in root folder.
  memDebug.Lines.Add(menuFolders.Directory);
end;

procedure THiveView.menuFilesClick(Sender: TObject);
var i: integer;
  formatfound: boolean;
begin
  LoadFile(menuFiles.FileName); // Load file to memory.
  memDebug.Lines.Add(menuFiles.FileName+' ('+IntToStr(fs)+' bytes)');
  DefaultFormat; // Use default settings.
  formatfound := false;
  for i := 0 to iniformats do
    if Solve(inicontent[i,ini_if]) > 0 then // Check file with condition from ini.
      begin
      editW.Text := inicontent[i,ini_width];
      editH.Text := inicontent[i,ini_height];
      editPixLoc.Text := inicontent[i,ini_pixelstart];
      editBPC.Text := inicontent[i,ini_bpc];
      editR.Text := inicontent[i,ini_r];
      editG.Text := inicontent[i,ini_g];
      editB.Text := inicontent[i,ini_b];
      editAlpha.Text := inicontent[i,ini_alpha];
      editPalLoc.Text := inicontent[i,ini_palstart];
      editPalSize.Text := inicontent[i,ini_palsize];
      editPalBits.Text := inicontent[i,ini_palbits];
      if inicontent[i,ini_palenable] = 'yes' then chkPalette.Checked := true
      else chkPalette.Checked := false;
      editPalLoc.Enabled := chkPalette.Checked;
      editPalSize.Enabled := chkPalette.Checked;
      editPalBits.Enabled := chkPalette.Checked;
      memDebug.Lines.Add('File format found: '+inicontent[i,ini_name]);
      formatfound := true;
      break; // Terminate loop when match is found
      end;
  if not formatfound then memDebug.Lines.Add('File format not recognised. Using default settings.');
  LoadImage;
end;

procedure THiveView.menuFoldersClick(Sender: TObject);
begin
  menuFolders.Perform(WM_LBUTTONDBLCLK,0,0); // Simulate double click to load folder on single click.
  menuFiles.Directory := menuFolders.Directory; // Show files.
  memDebug.Lines.Add(menuFolders.Directory);
end;

procedure THiveView.btnReloadClick(Sender: TObject);
begin
  LoadImage;
end;

procedure THiveView.chkPaletteClick(Sender: TObject);
begin
  editPalLoc.Enabled := chkPalette.Checked;
  editPalSize.Enabled := chkPalette.Checked;
  editPalBits.Enabled := chkPalette.Checked;
end;

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
  indicesperbyte := 8 div bitsperindex;
  if (bitspercolor mod 8 > 0) or (bitspercolor = 0) or (bitspercolor > 64) then // Check if colour info is valid.
    begin
    memDebug.Lines.Add('Unable to process '+editBPC.Text+' bits per color.');
    exit;
    end;
  if chkPalette.Checked = false then LoadImagePixels; // Load actual image pixel data.
  ShowPNG;
  memDebug.Lines.Add('Image is '+IntToStr(imgw)+' × '+IntToStr(imgh)+' pixels.');
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
      if fixedalpha = false then a := Solve(ReplaceStr(editAlpha.Text,'x',c));
      PixelPNG(r,g,b,a,j,i);
      pos := pos+bytespercolor; // Next colour.
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

procedure THiveView.FormCreate(Sender: TObject);
var i: integer;
  inifile: textfile;
  s: string;
label skipini;
begin
  menuFolders.Directory := ExtractFileDir(Application.ExeName);
  memDebug.Lines.Add(ExtractFileDir(Application.ExeName));
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
    else if AnsiPos('bitsperindex=',s) = 1 then inicontent[i,ini_palbits] := Explode(s,'bitsperindex=',1);
    if inicontent[i,ini_palstart] = '' then inicontent[i,ini_palstart] := '0';
    if inicontent[i,ini_palsize] = '' then inicontent[i,ini_palsize] := '0';
    if inicontent[i,ini_palbits] = '' then inicontent[i,ini_palbits] := '8';
    end;
  CloseFile(inifile);

  skipini:
  iniformats := i;
  memDebug.Lines.Add(IntToStr(i+1)+' formats found in HiveView.ini.');
  InitPNG(320,224); // Create 320x224 32-bit PNG.
  AssignPNG(imgMain); // Assign PNG to image on form.

  // Draw pixels here.
  for i := 0 to (PNG.Width*PNG.Height)-1 do PixelPNG(255,0,0,i div PNG.Width,i mod PNG.Width,i div PNG.Width); // Test pattern.

  //MovePNG(20,20); // Change position of PNG.
  ShowPNG; // Display PNG on form.
  //SavePNG('test.png');
end;

end.
