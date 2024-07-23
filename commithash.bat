git rev-parse --short HEAD > temp_file.h
set /p commithash=<temp_file.h
set commitmacro=#define COMMIT_HASH "%commithash%"
echo #pragma once > CommitHash.h
echo %commitmacro% >> CommitHash.h
git rev-parse HEAD > temp_file.h
set /p commithash_short=<temp_file.h
set commitmacro_short=#define COMMIT_HASH_SHORT "%commithash_short%"
echo %commitmacro_short% >> CommitHash.h
del temp_file.h
