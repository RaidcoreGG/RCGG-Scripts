git rev-parse HEAD > temp_file.h
SET /p commithash=<temp_file.h
SET commitmacro=#define COMMIT_HASH "%commithash%"
ECHO #pragma once > src/CommitHash.h
ECHO %commitmacro% >> src/CommitHash.h

git rev-parse --short HEAD > temp_file.h
SET /p commithash_short=<temp_file.h
SET commitmacro_short=#define COMMIT_HASH_SHORT "%commithash_short%"
ECHO %commitmacro_short% >> src/CommitHash.h
DEL temp_file.h
