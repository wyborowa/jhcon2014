Check 01A9A178
Auto 1

# Run-time Variables

Var x: Num = 19.2176051
Var y: Num = 25.1612452
Var cx: Num = 12
Var cy: Num = 16
Var ang: Num = 11.662857
Var i: NumFOR = 27, 26, 1, 50, 2

# End Run-time Variables

  10 LET cx=12
  20 LET cy=16
  50 FOR i=0 TO 26 STEP 1
  60 LET ang=(3.14/7)*i
  70 LET x=cx+(ang*(COS (ang)))
  80 LET y=cy-(ang*(SIN (ang)))
  90 REM PLOT x,y
  91 PRINT AT x,y;"x"
  92 REM PRINT x,y
 100 NEXT i
