Check B2E9F0AF
Auto 1

# Run-time Variables

Var x: Num = 112.3154122
Var y: Num = 155.5169443
Var cx: Num = 120
Var cy: Num = 160
Var ang: Num = 8.8966667
Var i: NumFOR = 205, 204, 1, 50, 2

# End Run-time Variables

  10 LET cx=120
  20 LET cy=160
  50 FOR i=0 TO 204 STEP 1
  60 LET ang=(3.14/72)*i
  70 LET x=cx+(ang*(COS (ang)))
  80 LET y=cy-(ang*(SIN (ang)))
  90 PLOT x,y
 100 NEXT i
