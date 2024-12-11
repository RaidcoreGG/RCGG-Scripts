WMIC.EXE Alias /? >NUL 2>&1 || GOTO s_error

FOR /F "skip=1 tokens=1-6" %%G IN ('WMIC Path win32_utctime Get Day^,Hour^,Minute^,Month^,Second^,Year /Format:table') DO (
   IF "%%~L"=="" GOTO s_done
      SET _yyyy=%%L
      SET _mm=%%J
      SET _dd=%%G
      SET _hour=%%H
      SET _minute=%%I
)
:s_done

ECHO #pragma once > src/Version.h
ECHO #define V_MAJOR %_yyyy% >> src/Version.h
ECHO #define V_MINOR %_mm% >> src/Version.h
ECHO #define V_BUILD %_dd% >> src/Version.h
SET /A var_res = %_hour% * 60 + %_minute%
ECHO #define V_REVISION %var_res% >> src/Version.h
