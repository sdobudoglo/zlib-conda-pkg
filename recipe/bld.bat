REM build the project
nmake -f win32/Makefile.msc

if errorlevel 1 exit 1

REM install project
copy minigzip.exe %LIBRARY_BIN%

copy zlib.h %LIBRARY_INC%
copy zconf.h %LIBRARY_INC%

copy zlib1.dll %LIBRARY_LIB%
copy zlib1.pdb %LIBRARY_LIB%

copy zlib.lib %LIBRARY_LIB%
copy zlib.pdb %LIBRARY_LIB%
