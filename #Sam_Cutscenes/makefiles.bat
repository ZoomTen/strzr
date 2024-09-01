@echo off
echo Compressing art...

nemcmp intro1\intro1.tiles.bin intro1\compressed\intro1.tiles.nem
nemcmp intro2\intro2.tiles.bin intro2\compressed\intro2.tiles.nem
nemcmp intro3\intro3.tiles.bin intro3\compressed\intro3.tiles.nem
nemcmp intro4\intro4.tiles.bin intro4\compressed\intro4.tiles.nem
nemcmp intro5\intro5.tiles.bin intro5\compressed\intro5.tiles.nem
nemcmp intro6\intro6.tiles.bin intro6\compressed\intro6.tiles.nem
nemcmp intro7\intro7.tiles.bin intro7\compressed\intro7.tiles.nem
nemcmp intro12\intro12.tiles.bin intro12\compressed\intro12.tiles.nem

echo All art compression complete.


echo Processing text maps...

asm68k /p /q text01.asm, intro1\text01.bin
asm68k /p /q text02.asm, intro2\text02.bin
asm68k /p /q text03.asm, intro3\text03.bin
asm68k /p /q text04.asm, intro4\text04.bin
asm68k /p /q text05.asm, intro5\text05.bin
asm68k /p /q text06.asm, intro6\text06.bin
asm68k /p /q text07.asm, intro7\text07.bin
asm68k /p /q text09.asm, intro9\text09.bin
asm68k /p /q text0A.asm, intro10\text0A.bin
asm68k /p /q text0B.asm, intro11\text0B.bin
asm68k /p /q text0C.asm, intro12\text0C.bin

echo Text map processing complete.


echo Compressing text maps...

enicmp intro1\text01.bin intro1\compressed\text01.eni
enicmp intro2\text02.bin intro2\compressed\text02.eni
enicmp intro3\text03.bin intro3\compressed\text03.eni
enicmp intro4\text04.bin intro4\compressed\text04.eni
enicmp intro5\text05.bin intro5\compressed\text05.eni
enicmp intro6\text06.bin intro6\compressed\text06.eni
enicmp intro7\text07.bin intro7\compressed\text07.eni
enicmp intro9\text09.bin intro9\compressed\text09.eni
enicmp intro10\text0A.bin intro10\compressed\text0A.eni
enicmp intro11\text0B.bin intro11\compressed\text0B.eni
enicmp intro12\text0C.bin intro12\compressed\text0C.eni

echo Text map compression complete.


echo Intro files compiled!
pause