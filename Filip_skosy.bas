Check 3A2F2B60
Auto 1


  10 POKE USR "P",BIN 00000000
  20 POKE USR "P"+1,BIN 10101010
  30 POKE USR "P"+2,BIN 01010100
  40 POKE USR "P"+3,BIN 10101010
  50 POKE USR "P"+4,BIN 00110100
  60 POKE USR "P"+5,BIN 00111010
  70 POKE USR "P"+6,BIN 11000100
  80 POKE USR "P"+7,BIN 11001010
 110 POKE USR "O",BIN 00000000
 120 POKE USR "O"+1,BIN 01010101
 130 POKE USR "O"+2,BIN 00101010
 140 POKE USR "O"+3,BIN 01010101
 150 POKE USR "O"+4,BIN 00101100
 160 POKE USR "O"+5,BIN 01011100
 170 POKE USR "O"+6,BIN 00100011
 180 POKE USR "O"+7,BIN 01010011
 210 POKE USR "L",BIN 11001010
 220 POKE USR "L"+1,BIN 11000100
 230 POKE USR "L"+2,BIN 00111010
 240 POKE USR "L"+3,BIN 00110100
 250 POKE USR "L"+4,BIN 10101010
 260 POKE USR "L"+5,BIN 01010100
 270 POKE USR "L"+6,BIN 10101010
 280 POKE USR "L"+7,BIN 00000000
 310 POKE USR "K",BIN 01010011
 320 POKE USR "K"+1,BIN 00100011
 330 POKE USR "K"+2,BIN 01011100
 340 POKE USR "K"+3,BIN 00101100
 350 POKE USR "K"+4,BIN 01010101
 360 POKE USR "K"+5,BIN 00101010
 370 POKE USR "K"+6,BIN 01010101
 380 POKE USR "K"+7,BIN 00000000
 900 PAPER 7
 910 INK 7
 920 CLS
 999 FLASH 1
1000 LET kolTuszu=5
1010 LET kolTla=1
1020 LET posX=15
1030 LET posY=10
1040 FOR i=1 TO 20
1050 INK kolTuszu
1060 PAPER kolTla
1070 LET kolTuszu=kolTla
1080 LET kolorPop=kolTla
1090 LET kolor2=INT (RND*7)
1100 IF kolor2=kolorPop THEN GO TO 1090
1110 LET kolTla=kolor2
1120 LET tmpX=posX-i
1130 LET tmpY=posY
1140 FOR m=0 TO i
1150 IF tmpY>-1 THEN IF tmpY<22 THEN IF tmpX>-1 THEN IF tmpX<32 THEN PRINT AT tmpY,tmpX;"\o"
1160 LET tmpY=tmpY-1
1170 LET tmpX=tmpX+1
1180 NEXT m
1190 LET tmpX=posX+1
1200 LET tmpY=posY-i
1210 FOR m=0 TO i
1220 IF tmpY>-1 THEN IF tmpY<22 THEN IF tmpX>-1 THEN IF tmpX<32 THEN PRINT AT tmpY,tmpX;"\p"
1230 LET tmpY=tmpY+1
1240 LET tmpX=tmpX+1
1250 NEXT m
1260 LET tmpX=posX+i+1
1270 LET tmpY=posY+1
1280 FOR m=0 TO i
1290 IF tmpY>-1 THEN IF tmpY<22 THEN IF tmpX>-1 THEN IF tmpX<32 THEN PRINT AT tmpY,tmpX;"\l"
1300 LET tmpY=tmpY+1
1310 LET tmpX=tmpX-1
1320 NEXT m
1330 LET tmpX=posX
1340 LET tmpY=posY+i+1
1350 FOR m=0 TO i
1360 IF tmpY>-1 THEN IF tmpY<22 THEN IF tmpX>-1 THEN IF tmpX<32 THEN PRINT AT tmpY,tmpX;"\k"
1370 LET tmpY=tmpY-1
1380 LET tmpX=tmpX-1
1390 NEXT m
1400 NEXT i
1435 PAUSE 500
1440 PAPER 7
1450 INK 7
1460 FLASH 0
