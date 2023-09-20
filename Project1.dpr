program Project1;

uses
  Forms,
  Generic in 'Generic.pas' {HiveView},
  PNGFunc in 'PNGFunc.pas',
  CRCFunc in 'CRCFunc.pas',
  ExplodeFunc in 'ExplodeFunc.pas',
  FileFunc in 'FileFunc.pas',
  SolveFunc in 'SolveFunc.pas',
  bass in 'bass.pas',
  MiscFunc in 'MiscFunc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THiveView, HiveView);
  Application.Run;
end.
