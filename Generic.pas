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
    editPix: TLabeledEdit;
    editBPC: TLabeledEdit;
    editR: TLabeledEdit;
    editG: TLabeledEdit;
    editB: TLabeledEdit;
    editAlpha: TLabeledEdit;
    btnReload: TButton;
    procedure FormCreate(Sender: TObject);
    procedure menuDrivesChange(Sender: TObject);
    procedure menuFoldersClick(Sender: TObject);
    procedure menuFilesClick(Sender: TObject);
    procedure DefaultFormat;
    procedure btnReloadClick(Sender: TObject);
    procedure LoadImage;
    procedure LoadImagePixels;
    function GetColorRaw(a, len: integer): string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HiveView: THiveView;
  bitspercolor, bytespercolor, imgw, imgh: integer;

implementation

{$R *.dfm}

procedure THiveView.menuDrivesChange(Sender: TObject);
begin
  menuFolders.Directory := menuDrives.Drive+':\'; // Show folders on drive.
  menuFiles.Directory := menuFolders.Directory; // Show files in root folder.
  memDebug.Lines.Add(menuFolders.Directory);
end;

procedure THiveView.menuFilesClick(Sender: TObject);
begin
  LoadFile(menuFiles.FileName); // Load file to memory.
  memDebug.Lines.Add(menuFiles.FileName+' ('+IntToStr(fs)+' bytes)');
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

procedure THiveView.DefaultFormat;
begin
  editW.Text := '100'; // Set default values for image format.
  editH.Text := '100';
  editPix.Text := '0';
  editBPC.Text := '24';
  editR.Text := 'x>>16';
  editG.Text := '(x>>8)&$FF';
  editB.Text := 'x&$FF';
  editAlpha.Text := '255';
end;

procedure THiveView.LoadImage;
begin
  if fs > 0 then // Check if file has been loaded.
    begin
    imgw := Solve(editW.Text);
    imgh := Solve(editH.Text);
    InitPNG(imgw,imgh);
    bitspercolor := Solve(editBPC.Text);
    bytespercolor := bitspercolor div 8;
    if (bitspercolor mod 8 = 0) and (bitspercolor > 0) and (bitspercolor <= 64) then
      begin
      LoadImagePixels; // Load actual image pixel data.
      ShowPNG;
      end
    else memDebug.Lines.Add('Unable to process '+editBPC.Text+' bits per color.');
    end
  else memDebug.Lines.Add('No image loaded.');
end;

procedure THiveView.LoadImagePixels;
var pos, i, j, r, g, b, a: integer;
  c: string;
  fixedalpha: boolean;
label exitloop;
begin
  pos := Solve(editPix.Text);
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
      if pos >= fs then goto exitloop; // Stop drawing if at end of file.
      end;
  exitloop:
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
begin
  DefaultFormat; // Fill in default values for format menu.
  InitPNG(320,224); // Create 320x224 32-bit PNG.
  AssignPNG(imgMain); // Assign PNG to image on form.

  // Draw pixels here.
  for i := 0 to (PNG.Width*PNG.Height)-1 do PixelPNG(255,0,0,i div PNG.Width,i mod PNG.Width,i div PNG.Width); // Test pattern.

  //MovePNG(20,20); // Change position of PNG.
  ShowPNG; // Display PNG on form.
  //SavePNG('test.png');
end;

end.
