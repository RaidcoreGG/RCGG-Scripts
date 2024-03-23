git config --get remote.origin.url >> temp_file.h
set /p remoteurl=<temp_file.h
setlocal enabledelayedexpansion
set "remoteurl=!remoteurl:.git=!"
set remotemacro=#define REMOTE_URL "%remoteurl:~%"
echo #pragma once > Remote.h
echo %remotemacro% >> Remote.h
del temp_file.h
