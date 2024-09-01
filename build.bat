@echo off
rem SET /P romname="Enter ASM file name (with no extension) : "

SET romname=strzr_2015

echo Compiling %romname%...
asm68k /c /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- %romname%.asm, %romname%.gen >%romname%_out.txt, %romname%.lst

echo.
rompad.exe %romname%.gen 255 0

echo.
fixheadr.exe %romname%.gen

echo.
echo ROM compiled to %romname%.gen.
echo Check %romname%_out.txt for any compilation errors.
echo.
pause