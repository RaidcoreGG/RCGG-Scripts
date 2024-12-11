git config --get remote.origin.url >> temp_file.h
SET /p remoteurl=<temp_file.h
SETLOCAL enabledelayedexpansion
SET "remoteurl=!remoteurl:.git=!"
SET remotemacro=#define REMOTE_URL "%remoteurl:~%"
ECHO #pragma once > src/Remote.h
ECHO %remotemacro% >> src/Remote.h
DEL temp_file.h
