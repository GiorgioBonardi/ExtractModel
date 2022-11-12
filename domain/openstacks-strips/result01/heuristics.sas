begin_version
3
end_version
begin_metric
1
end_metric
11
begin_variable
var0
-1
6
Atom stacks-avail(n3)
Atom stacks-avail(n1)
Atom stacks-avail(n4)
Atom stacks-avail(n5)
Atom stacks-avail(n2)
Atom stacks-avail(n0)
end_variable
begin_variable
var1
-1
3
Atom started(o1)
Atom waiting(o1)
Atom shipped(o1)
end_variable
begin_variable
var2
-1
3
Atom waiting(o3)
Atom shipped(o3)
Atom started(o3)
end_variable
begin_variable
var3
-1
3
Atom waiting(o2)
Atom shipped(o2)
Atom started(o2)
end_variable
begin_variable
var4
-1
3
Atom started(o4)
Atom shipped(o4)
Atom waiting(o4)
end_variable
begin_variable
var5
-1
3
Atom waiting(o5)
Atom shipped(o5)
Atom started(o5)
end_variable
begin_variable
var6
-1
2
Atom made(p5)
Atom not-made(p5)
end_variable
begin_variable
var7
-1
2
Atom made(p4)
Atom not-made(p4)
end_variable
begin_variable
var8
-1
2
Atom not-made(p1)
Atom made(p1)
end_variable
begin_variable
var9
-1
2
Atom made(p3)
Atom not-made(p3)
end_variable
begin_variable
var10
-1
2
Atom not-made(p2)
Atom made(p2)
end_variable
16
begin_mutex_group
3
5 0
5 2
5 1
end_mutex_group
begin_mutex_group
2
10 1
10 0
end_mutex_group
begin_mutex_group
2
2 2
2 0
end_mutex_group
begin_mutex_group
3
4 2
4 0
4 1
end_mutex_group
begin_mutex_group
2
9 0
9 1
end_mutex_group
begin_mutex_group
3
3 0
3 2
3 1
end_mutex_group
begin_mutex_group
3
2 0
2 2
2 1
end_mutex_group
begin_mutex_group
2
8 1
8 0
end_mutex_group
begin_mutex_group
2
3 2
3 0
end_mutex_group
begin_mutex_group
3
1 1
1 0
1 2
end_mutex_group
begin_mutex_group
2
5 2
5 0
end_mutex_group
begin_mutex_group
2
7 0
7 1
end_mutex_group
begin_mutex_group
6
0 5
0 1
0 4
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
2
4 0
4 2
end_mutex_group
begin_mutex_group
2
6 0
6 1
end_mutex_group
begin_state
5
1
0
0
2
0
1
1
0
1
0
end_state
begin_goal
5
1 2
2 1
3 1
4 1
5 1
end_goal
60
begin_operator
open-new-stack n0 n1
0
1
0 0 5 1
1
end_operator
begin_operator
open-new-stack n1 n2
0
1
0 0 1 4
1
end_operator
begin_operator
start-order o1 n1 n0
0
2
0 0 1 5
0 1 1 0
0
end_operator
begin_operator
start-order o2 n1 n0
0
2
0 0 1 5
0 3 0 2
0
end_operator
begin_operator
start-order o3 n1 n0
0
2
0 0 1 5
0 2 0 2
0
end_operator
begin_operator
start-order o4 n1 n0
0
2
0 0 1 5
0 4 2 0
0
end_operator
begin_operator
start-order o5 n1 n0
0
2
0 0 1 5
0 5 0 2
0
end_operator
begin_operator
open-new-stack n2 n3
0
1
0 0 4 0
1
end_operator
begin_operator
make-product-p1 
1
3 2
1
0 8 0 1
0
end_operator
begin_operator
make-product-p2 
2
1 0
3 2
1
0 10 0 1
0
end_operator
begin_operator
make-product-p3 
2
2 2
4 0
1
0 9 1 0
0
end_operator
begin_operator
make-product-p4 
1
4 0
1
0 7 1 0
0
end_operator
begin_operator
make-product-p5 
1
5 2
1
0 6 1 0
0
end_operator
begin_operator
start-order o1 n2 n1
0
2
0 0 4 1
0 1 1 0
0
end_operator
begin_operator
start-order o2 n2 n1
0
2
0 0 4 1
0 3 0 2
0
end_operator
begin_operator
start-order o3 n2 n1
0
2
0 0 4 1
0 2 0 2
0
end_operator
begin_operator
start-order o4 n2 n1
0
2
0 0 4 1
0 4 2 0
0
end_operator
begin_operator
start-order o5 n2 n1
0
2
0 0 4 1
0 5 0 2
0
end_operator
begin_operator
ship-order-o1 n0 n1
1
10 1
2
0 0 5 1
0 1 0 2
0
end_operator
begin_operator
ship-order-o1 n1 n2
1
10 1
2
0 0 1 4
0 1 0 2
0
end_operator
begin_operator
ship-order-o1 n2 n3
1
10 1
2
0 0 4 0
0 1 0 2
0
end_operator
begin_operator
ship-order-o2 n0 n1
2
8 1
10 1
2
0 0 5 1
0 3 2 1
0
end_operator
begin_operator
ship-order-o2 n1 n2
2
8 1
10 1
2
0 0 1 4
0 3 2 1
0
end_operator
begin_operator
ship-order-o2 n2 n3
2
8 1
10 1
2
0 0 4 0
0 3 2 1
0
end_operator
begin_operator
ship-order-o3 n0 n1
1
9 0
2
0 0 5 1
0 2 2 1
0
end_operator
begin_operator
ship-order-o3 n1 n2
1
9 0
2
0 0 1 4
0 2 2 1
0
end_operator
begin_operator
ship-order-o3 n2 n3
1
9 0
2
0 0 4 0
0 2 2 1
0
end_operator
begin_operator
ship-order-o4 n0 n1
2
7 0
9 0
2
0 0 5 1
0 4 0 1
0
end_operator
begin_operator
ship-order-o4 n1 n2
2
7 0
9 0
2
0 0 1 4
0 4 0 1
0
end_operator
begin_operator
ship-order-o4 n2 n3
2
7 0
9 0
2
0 0 4 0
0 4 0 1
0
end_operator
begin_operator
ship-order-o5 n0 n1
1
6 0
2
0 0 5 1
0 5 2 1
0
end_operator
begin_operator
ship-order-o5 n1 n2
1
6 0
2
0 0 1 4
0 5 2 1
0
end_operator
begin_operator
ship-order-o5 n2 n3
1
6 0
2
0 0 4 0
0 5 2 1
0
end_operator
begin_operator
open-new-stack n3 n4
0
1
0 0 0 2
1
end_operator
begin_operator
start-order o1 n3 n2
0
2
0 0 0 4
0 1 1 0
0
end_operator
begin_operator
start-order o2 n3 n2
0
2
0 0 0 4
0 3 0 2
0
end_operator
begin_operator
start-order o3 n3 n2
0
2
0 0 0 4
0 2 0 2
0
end_operator
begin_operator
start-order o4 n3 n2
0
2
0 0 0 4
0 4 2 0
0
end_operator
begin_operator
start-order o5 n3 n2
0
2
0 0 0 4
0 5 0 2
0
end_operator
begin_operator
ship-order-o1 n3 n4
1
10 1
2
0 0 0 2
0 1 0 2
0
end_operator
begin_operator
ship-order-o2 n3 n4
2
8 1
10 1
2
0 0 0 2
0 3 2 1
0
end_operator
begin_operator
ship-order-o3 n3 n4
1
9 0
2
0 0 0 2
0 2 2 1
0
end_operator
begin_operator
ship-order-o4 n3 n4
2
7 0
9 0
2
0 0 0 2
0 4 0 1
0
end_operator
begin_operator
ship-order-o5 n3 n4
1
6 0
2
0 0 0 2
0 5 2 1
0
end_operator
begin_operator
open-new-stack n4 n5
0
1
0 0 2 3
1
end_operator
begin_operator
start-order o1 n4 n3
0
2
0 0 2 0
0 1 1 0
0
end_operator
begin_operator
start-order o2 n4 n3
0
2
0 0 2 0
0 3 0 2
0
end_operator
begin_operator
start-order o3 n4 n3
0
2
0 0 2 0
0 2 0 2
0
end_operator
begin_operator
start-order o4 n4 n3
0
2
0 0 2 0
0 4 2 0
0
end_operator
begin_operator
start-order o5 n4 n3
0
2
0 0 2 0
0 5 0 2
0
end_operator
begin_operator
ship-order-o1 n4 n5
1
10 1
2
0 0 2 3
0 1 0 2
0
end_operator
begin_operator
ship-order-o2 n4 n5
2
8 1
10 1
2
0 0 2 3
0 3 2 1
0
end_operator
begin_operator
ship-order-o3 n4 n5
1
9 0
2
0 0 2 3
0 2 2 1
0
end_operator
begin_operator
ship-order-o4 n4 n5
2
7 0
9 0
2
0 0 2 3
0 4 0 1
0
end_operator
begin_operator
ship-order-o5 n4 n5
1
6 0
2
0 0 2 3
0 5 2 1
0
end_operator
begin_operator
start-order o1 n5 n4
0
2
0 0 3 2
0 1 1 0
0
end_operator
begin_operator
start-order o2 n5 n4
0
2
0 0 3 2
0 3 0 2
0
end_operator
begin_operator
start-order o3 n5 n4
0
2
0 0 3 2
0 2 0 2
0
end_operator
begin_operator
start-order o4 n5 n4
0
2
0 0 3 2
0 4 2 0
0
end_operator
begin_operator
start-order o5 n5 n4
0
2
0 0 3 2
0 5 0 2
0
end_operator
0
