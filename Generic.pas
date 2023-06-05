unit Generic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StrUtils, ExtCtrls, StdCtrls, pngimage, PNGFunc, Vcl.ComCtrls,
  Vcl.FileCtrl, CRCFunc, ExplodeFunc, FileFunc, SolveFunc;

type
  TForm1 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.menuDrivesChange(Sender: TObject);
begin
  menuFolders.Directory := menuDrives.Drive+':\'; // Show folders on drive.
  menuFiles.Directory := menuFolders.Directory; // Show files in root folder.
  memDebug.Lines.Add(menuFolders.Directory);
end;

procedure TForm1.menuFilesClick(Sender: TObject);
begin
  LoadFile(menuFiles.FileName); // Load file to memory.
  memDebug.Lines.Add(menuFiles.FileName+' ('+IntToStr(fs)+' bytes)');
end;

procedure TForm1.menuFoldersClick(Sender: TObject);
begin
  menuFolders.Perform(WM_LBUTTONDBLCLK,0,0); // Simulate double click to load folder on single click.
  menuFiles.Directory := menuFolders.Directory; // Show files.
  memDebug.Lines.Add(menuFolders.Directory);
end;

procedure TForm1.btnReloadClick(Sender: TObject);
begin
  LoadImage;
end;

procedure TForm1.DefaultFormat;
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

procedure TForm1.FormCreate(Sender: TObject);
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

procedure TForm1.LoadImage;
begin
  if fs > 0 then // Check if file has been loaded.
    begin
    InitPNG(Solve(editW.Text),Solve(editH.Text));
    ShowPNG;
    end
  else memDebug.Lines.Add('No image loaded.');
end;

end.
