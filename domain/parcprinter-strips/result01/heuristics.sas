begin_version
3
end_version
begin_metric
1
end_metric
23
begin_variable
var0
-1
18
Atom location(sheet1, colorcontainer_exit-up_bottomentry)
Atom location(sheet1, colorcontainer_entry-down_bottomexit)
Atom location(sheet1, down_topexit-htmovercolor_entry)
Atom location(sheet1, blackcontainer_entry-blackfeeder_exit)
Atom location(sheet1, finisher2_exit)
Atom location(sheet1, blackcontainer_exittoime-blackprinter_entry)
Atom location(sheet1, colorcontainer_exittoime-colorprinter_entry)
Atom location(sheet1, blackprinter_exit-blackcontainer_entryfromime)
Atom location(sheet1, down_bottomentry-colorfeeder_exit)
Atom location(sheet1, finisher1_entry-up_topexit)
Atom location(sheet1, finisher2_entry-finisher1_exit)
Atom location(sheet1, some_feeder_tray)
Atom location(sheet1, some_finisher_tray)
Atom location(sheet1, colorprinter_exit-colorcontainer_entryfromime)
Atom location(sheet1, htmoverblack_exit-down_topentry)
Atom location(sheet1, endcap_entry-blackcontainer_exit)
Atom location(sheet1, htmoverblack_entry-endcap_exit)
Atom location(sheet1, htmovercolor_exit-up_topentry)
end_variable
begin_variable
var1
-1
2
Atom available(htmoverblack-rsrc)
<none of those>
end_variable
begin_variable
var2
-1
2
Atom available(endcap-rsrc)
<none of those>
end_variable
begin_variable
var3
-1
2
Atom stackedin(sheet1, finisher2_tray)
<none of those>
end_variable
begin_variable
var4
-1
2
Atom available(blackprinter-rsrc)
<none of those>
end_variable
begin_variable
var5
-1
2
Atom available(finisher2-rsrc)
<none of those>
end_variable
begin_variable
var6
-1
2
Atom available(blackfeeder-rsrc)
<none of those>
end_variable
begin_variable
var7
-1
2
Atom available(finisher1-rsrc)
<none of those>
end_variable
begin_variable
var8
-1
2
Atom available(colorprinter-rsrc)
<none of those>
end_variable
begin_variable
var9
-1
2
Atom available(down-rsrc)
<none of those>
end_variable
begin_variable
var10
-1
2
Atom uninitialized()
<none of those>
end_variable
begin_variable
var11
-1
2
Atom available(colorcontainer-rsrc)
<none of those>
end_variable
begin_variable
var12
-1
2
Atom stackedin(sheet1, finisher1_tray)
<none of those>
end_variable
begin_variable
var13
-1
2
Atom notprintedwith(sheet1, front, black)
<none of those>
end_variable
begin_variable
var14
-1
2
Atom sideup(sheet1, front)
<none of those>
end_variable
begin_variable
var15
-1
2
Atom available(up-rsrc)
<none of those>
end_variable
begin_variable
var16
-1
2
Atom notprintedwith(sheet1, back, black)
<none of those>
end_variable
begin_variable
var17
-1
2
Atom hasimage(sheet1, back, image-1)
<none of those>
end_variable
begin_variable
var18
-1
2
Atom available(htmovercolor-rsrc)
<none of those>
end_variable
begin_variable
var19
-1
2
Atom available(blackcontainer-rsrc)
<none of those>
end_variable
begin_variable
var20
-1
2
Atom available(colorfeeder-rsrc)
<none of those>
end_variable
begin_variable
var21
-1
2
Atom hasimage(sheet1, front, image-1)
<none of those>
end_variable
begin_variable
var22
-1
2
Atom sideup(sheet1, back)
<none of those>
end_variable
1
begin_mutex_group
18
0 11
0 12
0 15
0 16
0 14
0 1
0 6
0 13
0 0
0 8
0 3
0 2
0 17
0 5
0 7
0 9
0 10
0 4
end_mutex_group
begin_state
11
1
1
1
1
1
1
1
1
1
0
1
1
0
1
1
0
1
1
1
1
1
1
end_state
begin_goal
4
12 0
14 0
16 0
21 0
end_goal
25
begin_operator
initialize 
0
14
0 1 -1 0
0 2 -1 0
0 4 -1 0
0 5 -1 0
0 6 -1 0
0 7 -1 0
0 8 -1 0
0 9 -1 0
0 10 0 1
0 11 -1 0
0 15 -1 0
0 18 -1 0
0 19 -1 0
0 20 -1 0
0
end_operator
begin_operator
colorfeeder-feed-letter sheet1
1
20 0
2
0 0 11 8
0 14 -1 0
8000
end_operator
begin_operator
blackfeeder-feed-letter sheet1
1
6 0
2
0 0 11 3
0 14 -1 0
8000
end_operator
begin_operator
down-movebottom-letter sheet1
1
9 0
1
0 0 8 1
2999
end_operator
begin_operator
blackcontainer-toime-letter sheet1
1
19 0
1
0 0 3 5
2000
end_operator
begin_operator
colorcontainer-toime-letter sheet1
1
11 0
1
0 0 1 6
8000
end_operator
begin_operator
blackprinter-simplex-letter sheet1 front image-1
2
4 0
14 0
3
0 0 5 7
0 13 0 1
0 21 -1 0
113013
end_operator
begin_operator
blackprinter-simplexandinvert-letter sheet1 front back image-1
1
4 0
5
0 0 5 7
0 13 0 1
0 14 0 1
0 21 -1 0
0 22 -1 0
123013
end_operator
begin_operator
colorprinter-simplexmono-letter sheet1 front image-1
2
8 0
14 0
3
0 0 6 13
0 13 0 1
0 21 -1 0
224040
end_operator
begin_operator
blackcontainer-fromime-letter sheet1
1
19 0
1
0 0 7 15
2000
end_operator
begin_operator
colorprinter-simplexmono-letter sheet1 back image-1
2
8 0
22 0
3
0 0 6 13
0 16 0 1
0 17 -1 0
224040
end_operator
begin_operator
blackprinter-simplex-letter sheet1 back image-1
2
4 0
22 0
3
0 0 5 7
0 16 0 1
0 17 -1 0
113013
end_operator
begin_operator
blackprinter-simplexandinvert-letter sheet1 back front image-1
1
4 0
5
0 0 5 7
0 14 -1 0
0 16 0 1
0 17 -1 0
0 22 0 1
123013
end_operator
begin_operator
colorcontainer-fromime-letter sheet1
1
11 0
1
0 0 13 0
8000
end_operator
begin_operator
endcap-move-letter sheet1
1
2 0
1
0 0 15 16
2000
end_operator
begin_operator
up-moveup-letter sheet1
1
15 0
1
0 0 0 9
9999
end_operator
begin_operator
htmoverblack-move-letter sheet1
1
1 0
1
0 0 16 14
17999
end_operator
begin_operator
finisher1-passthrough-letter sheet1
1
7 0
1
0 0 9 10
8000
end_operator
begin_operator
down-movetop-letter sheet1
1
9 0
1
0 0 14 2
2999
end_operator
begin_operator
down-movedown-letter sheet1
1
9 0
1
0 0 14 1
9999
end_operator
begin_operator
finisher1-stack-letter sheet1 dummy-sheet
1
7 0
2
0 0 9 12
0 12 -1 0
8000
end_operator
begin_operator
finisher2-passthrough-letter sheet1
1
5 0
1
0 0 10 4
8000
end_operator
begin_operator
htmovercolor-move-letter sheet1
1
18 0
1
0 0 2 17
9999
end_operator
begin_operator
finisher2-stack-letter sheet1 dummy-sheet
1
5 0
2
0 0 10 12
0 3 -1 0
8000
end_operator
begin_operator
up-movetop-letter sheet1
1
15 0
1
0 0 17 9
2999
end_operator
0