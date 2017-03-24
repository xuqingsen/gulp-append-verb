@ECHO off
ECHO ---------------------------------------------
call gulp default
rem 命令行后面，传递project参数，指定运行的项目，如: call gulp default -project mkk.
ECHO ---------------------------------------------
ECHO Finish
ECHO ---------------------------------------------
pause
