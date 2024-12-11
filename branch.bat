git branch --show-current >> temp_file.h
SET /p branchname=<temp_file.h
SET branchmacro=#define BRANCH_NAME "%branchname%"
ECHO #pragma once > src/Branch.h
ECHO %branchmacro% >> src/Branch.h
DEL temp_file.h
