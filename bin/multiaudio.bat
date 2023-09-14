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

endlocal