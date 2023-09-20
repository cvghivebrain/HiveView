unit MiscFunc;

interface
uses Sysutils, StrUtils, IOUtils, Bass, ExplodeFunc;

function IntToStrSep(i: integer): string;
function GetMinSec(handle: cardinal; i: integer): string;
function GetExtOnly(f: string): string;
function GetDriveRoot(d: string): string;
procedure CleanFolder(f: string; keepfolder: boolean);

var
  thousandsep: string;

implementation

{ Convert integer to string with separators. }

function IntToStrSep(i: integer): string;
begin
  if i = 0 then
    begin
    result := '0';
    exit;
    end;
  result := FormatFloat('#,###',i); // Convert to string with commas.
  result := ReplaceStr(result,',',thousandsep); // Replace comma with custom string.
end;

{ Convert time in bytes to M:SS format. }

function GetMinSec(handle: cardinal; i: integer): string;
var secs: int64;
begin
  secs := Round(BASS_ChannelBytes2Seconds(handle,i)); // Convert to seconds.
  result := IntToStr(secs mod 60); // Get seconds.
  if Length(result) = 1 then result := '0'+result; // Add leading 0 if needed.
  result := IntToStr(secs div 60)+':'+result; // Add minutes.
end;

{ Get file extension without dot. }

function GetExtOnly(f: string): string;
begin
  result := ExtractFileExt(f); // Get extension (including dot).
  if Length(result) = 0 then exit; // No extension.
  if result[1] = '.' then Delete(result,1,1); // Remove dot.
end;

{ Convert drive letter and name to drive root path. }

function GetDriveRoot(d: string): string;
begin
  result := AnsiUpperCase(Explode(d,':',0))+':\'; // 'c: []' -> 'C:\'
end;

{ Delete contents of a folder. }

procedure CleanFolder(f: string; keepfolder: boolean);
var rec: TSearchRec;
begin
  if not keepfolder then
    begin
    TDirectory.Delete(f,true); // Delete folder and all contents.
    exit;
    end;
  if SysUtils.DirectoryExists(f) then // Check if temp folder exists.
    begin
    if FindFirst(f+'\*',faAnyFile,rec) = 0 then // First item in temp folder.
      begin
      try
        repeat
          if (rec.Name <> '.') and (rec.Name <> '..') then // Exclude current and parent folder.
          begin
          if (rec.Attr and faDirectory) = faDirectory then
            TDirectory.Delete(f+'\'+rec.Name,true) // Delete folder.
          else
            begin
            FileSetAttr(f+'\'+rec.Name,rec.Attr and $FE); // Set as not read only.
            DeleteFile(f+'\'+rec.Name); // Delete file.
            end;
          end;
        until FindNext(rec) <> 0; // Repeat for all items.
      finally
        FindClose(rec);
      end;
      end;
    end
  else CreateDir(f); // Create temp folder.
end;

end.