rem @echo off
setlocal enabledelayedexpansion

set "INPUT_VIDEO=%~1"
set "TEMP_FOLDER=%~2"
set AUDIO_TRACK=-1

:LOOP
set /a AUDIO_TRACK+=1
set "OUTPUT_WAV=%TEMP_FOLDER%\track_!AUDIO_TRACK!.wav"

"ffmpeg.exe" -i "%INPUT_VIDEO%" -map 0:a:!AUDIO_TRACK! "%OUTPUT_WAV%"

if exist "%OUTPUT_WAV%" (
    echo Extracted %OUTPUT_WAV%
    goto LOOP
) else (
    echo All tracks extracted.
)

"ffprobe.exe" -v error -select_streams v:0 -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "%INPUT_VIDEO%" > "%TEMP_FOLDER%\temp.txt"
set /p duration=<"%TEMP_FOLDER%\temp.txt"
set /a "duration=!duration!/1"

set /a "TIME=!duration! / 4"
"ffmpeg.exe" -noaccurate_seek -ss !TIME! -i "%INPUT_VIDEO%" -frames:v 1 "%TEMP_FOLDER%\screenshot_25.png"
set /a "TIME=!duration! / 2"
"ffmpeg.exe" -ss !TIME! -i "%INPUT_VIDEO%" -frames:v 1 "%TEMP_FOLDER%\screenshot_50.png"
set /a "TIME=(!duration! / 4) * 3"
"ffmpeg.exe" -ss !TIME! -i "%INPUT_VIDEO%" -frames:v 1 "%TEMP_FOLDER%\screenshot_75.png"

del "%TEMP_FOLDER%\temp.txt"

endlocal