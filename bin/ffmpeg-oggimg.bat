rem @echo off
setlocal enabledelayedexpansion

set INPUT_FILE=%1
set TEMP_FOLDER=%2
set IMG_NUMBER=0

:LOOP
set /a IMG_NUMBER+=1
set OUTPUT_IMG=%TEMP_FOLDER%\image_!IMG_NUMBER!.jpg

"ffmpeg.exe" -i "%INPUT_FILE%" -map 0:%IMG_NUMBER% -c:v copy "%OUTPUT_IMG%"

if exist %OUTPUT_IMG% (
    echo Extracted %OUTPUT_IMG%
    goto LOOP
) else (
    echo All frames extracted.
)

endlocal