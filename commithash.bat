git rev-parse HEAD > temp_file.h
SET /p commithash=<temp_file.h
SET commitmacro=#define COMMIT_HASH "%commithash%"
ECHO #pragma once > CommitHash.h
ECHO %commitmacro% >> CommitHash.h
git rev-parse --short HEAD > temp_file.h
SET /p commithash_short=<temp_file.h
SET commitmacro_short=#define COMMIT_HASH_SHORT "%commithash_short%"
ECHO %commitmacro_short% >> CommitHash.h
DEL temp_file.h
