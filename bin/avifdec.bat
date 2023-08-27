rem @echo off
setlocal enabledelayedexpansion

set INPUT_AVIF=%1
set TEMP_FOLDER=%2
set FRAME_NUMBER=-1

:LOOP
set /a FRAME_NUMBER+=1
set OUTPUT_PNG=%TEMP_FOLDER%\frame_!FRAME_NUMBER!.png

"avifdec.exe" --index %FRAME_NUMBER% "%INPUT_AVIF%" "%OUTPUT_PNG%"

if exist %OUTPUT_PNG% (
    echo Extracted %OUTPUT_PNG%
    goto LOOP
) else (
    echo All frames extracted.
)

endlocal