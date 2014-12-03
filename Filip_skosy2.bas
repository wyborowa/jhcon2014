Check 23B030E4
Auto 1

# Run-time Variables

Var koltuszu: Num = 5
Var koltla: Num = 1
Var posx: Num = 15
Var posy: Num = 10
Var kolorpop: Num = 5
Var kolor2: Num = 1
Var tmpx: Num = 14
Var tmpy: Num = 14
Var granx: Num = 15
Var grany: Num = 10
Var dodawana: Num = 0
Var start: Num = 0
Var i: NumFOR = 4, 25, 1, 1040, 2
Var m: NumFOR = 1, 4, 1, 1350, 2

# End Run-time Variables

  10 POKE USR "P",BIN 000000000
  20 POKE USR "P"+1,BIN 010101010
  30 POKE USR "P"+2,BIN 001010100
  40 POKE USR "P"+3,BIN 010101010
  50 POKE USR "P"+4,BIN 000110100
  60 POKE USR "P"+5,BIN 000111010
  70 POKE USR "P"+6,BIN 011000100
  80 POKE USR "P"+7,BIN 011001010
  90 POKE USR "O",BIN 000000000
 100 POKE USR "O"+1,BIN 001010101
 110 POKE USR "O"+2,BIN 000101010
 120 POKE USR "O"+3,BIN 001010101
 130 POKE USR "O"+4,BIN 000101100
 140 POKE USR "O"+5,BIN 001011100
 150 POKE USR "O"+6,BIN 000100011
 160 POKE USR "O"+7,BIN 001010011
 170 POKE USR "L",BIN 011001010
 180 POKE USR "L"+1,BIN 011000100
 190 POKE USR "L"+2,BIN 000111010
 200 POKE USR "L"+3,BIN 000110100
 210 POKE USR "L"+4,BIN 010101010
 220 POKE USR "L"+5,BIN 001010100
 230 POKE USR "L"+6,BIN 010101010
 240 POKE USR "L"+7,BIN 000000000
 250 POKE USR "K",BIN 001010011
 260 POKE USR "K"+1,BIN 000100011
 270 POKE USR "K"+2,BIN 001011100
 280 POKE USR "K"+3,BIN 000101100
 290 POKE USR "K"+4,BIN 001010101
 300 POKE USR "K"+5,BIN 000101010
 310 POKE USR "K"+6,BIN 001010101
 320 POKE USR "K"+7,BIN 000000000
 330 PAPER 7
 340 INK 7
 350 CLS
 360 BORDER 3
 370 FLASH 1
 380 LET kolTuszu=5
 390 LET kolTla=1
 400 LET posX=15
 410 LET posY=10
 420 FOR i=1 TO 25
 430 LET granX=15
 440 LET granY=10
 450 INK kolTuszu
 460 PAPER kolTla
 470 LET kolTuszu=kolTla
 480 LET kolorPop=kolTla
 490 LET kolor2=INT (RND*7)
 500 IF kolor2=kolorPop THEN GO TO 490
 510 LET kolTla=kolor2
 520 LET dodawana=0
 530 IF i>granX THEN LET dodawana=i-granX
 540 LET tmpX=posX+dodawana-i
 550 LET tmpY=posY-dodawana
 560 LET start=0
 570 IF i>granY THEN LET start=i-granY+dodawana
 580 FOR m=start TO i
 590 PRINT AT tmpY,tmpX;"\o"
 600 LET tmpY=tmpY-1
 610 LET tmpX=tmpX+1
 620 NEXT m
 630 LET dodawana=0
 640 IF i>granY THEN LET dodawana=i-granY
 650 LET tmpX=posX+1+dodawana
 660 LET tmpY=posY-i+dodawana
 670 LET start=0
 680 IF i>granY THEN LET start=i-granY
 690 IF i>granX THEN LET start=i-granX+dodawana
 700 FOR m=start TO i
 710 PRINT AT tmpY,tmpX;"\p"
 720 LET tmpY=tmpY+1
 730 LET tmpX=tmpX+1
 740 NEXT m
 750 LET dodawana=0
 760 IF i>granX THEN LET dodawana=i-granX
 770 LET tmpX=posX+i+1-dodawana
 780 LET tmpY=posY+1+dodawana
 790 LET start=0
 800 IF i>granY THEN LET start=i-granY+dodawana
 810 FOR m=start TO i
 820 PRINT AT tmpY,tmpX;"\l"
 830 LET tmpY=tmpY+1
 840 LET tmpX=tmpX-1
 850 NEXT m
 860 LET dodawana=0
 870 IF i>granY THEN LET dodawana=i-granY
 880 LET tmpX=posX-dodawana
 890 LET tmpY=posY+i+1-dodawana
 900 LET start=0
 910 IF i>granY THEN LET start=i-granY
 920 IF i>granX THEN LET start=i-granX+dodawana
 930 FOR m=start TO i
 940 PRINT AT tmpY,tmpX;"\k"
 950 LET tmpY=tmpY-1
 960 LET tmpX=tmpX-1
 970 NEXT m
 980 NEXT i
 990 PAUSE 5000
1000 PAPER 7
1010 INK 7
1020 FLASH 0
