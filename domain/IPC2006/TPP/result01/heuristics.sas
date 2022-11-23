begin_version
3
end_version
begin_metric
0
end_metric
6
begin_variable
var0
-1
4
Atom stored-goods1-level1()
Atom loaded-goods1-truck1-level1()
Atom on-sale-goods1-market1-level1()
Atom ready-to-load-goods1-market1-level1()
end_variable
begin_variable
var1
-1
2
Atom at-truck1-depot1()
Atom at-truck1-market1()
end_variable
begin_variable
var2
-1
2
Atom loaded-goods1-truck1-level0()
<none of those>
end_variable
begin_variable
var3
-1
2
Atom stored-goods1-level0()
<none of those>
end_variable
begin_variable
var4
-1
2
Atom on-sale-goods1-market1-level0()
<none of those>
end_variable
begin_variable
var5
-1
2
Atom ready-to-load-goods1-market1-level0()
<none of those>
end_variable
8
begin_mutex_group
2
0 2
0 3
end_mutex_group
begin_mutex_group
4
0 1
0 0
0 2
0 3
end_mutex_group
begin_mutex_group
2
1 0
1 1
end_mutex_group
begin_mutex_group
3
0 1
0 2
0 3
end_mutex_group
begin_mutex_group
2
3 0
0 0
end_mutex_group
begin_mutex_group
2
0 2
4 0
end_mutex_group
begin_mutex_group
2
5 0
0 3
end_mutex_group
begin_mutex_group
2
2 0
0 1
end_mutex_group
begin_state
2
0
0
0
1
0
end_state
begin_goal
1
0 0
end_goal
5
begin_operator
drive-truck1-depot1-market1 
0
1
0 1 0 1
0
end_operator
begin_operator
drive-truck1-market1-depot1 
0
1
0 1 1 0
0
end_operator
begin_operator
buy-truck1-goods1-market1-level0-level1-level0-level1 
1
1 1
3
0 0 2 3
0 4 -1 0
0 5 0 1
0
end_operator
begin_operator
load-goods1-truck1-market1-level0-level1-level0-level1 
1
1 1
3
0 0 3 1
0 2 0 1
0 5 -1 0
0
end_operator
begin_operator
unload-goods1-truck1-depot1-level0-level1-level0-level1 
1
1 0
3
0 0 1 0
0 2 -1 0
0 3 0 1
0
end_operator
0
