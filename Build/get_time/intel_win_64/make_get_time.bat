@echo off
set from=%1
:: setup compiler environment
call ..\..\..\Utilities\Scripts\setup_intel_compilers.bat

Title Building make_time for 64 bit Windows

erase *.obj *.mod
make -f ..\Makefile intel_win_64

if x%from% == xbot goto skip_pause
pause
:skip_pause
