begin_version
3
end_version
begin_metric
1
end_metric
21
begin_variable
var0
-1
11
Atom stacks-avail(n4)
Atom stacks-avail(n3)
Atom stacks-avail(n9)
Atom stacks-avail(n2)
Atom stacks-avail(n8)
Atom stacks-avail(n1)
Atom stacks-avail(n10)
Atom stacks-avail(n7)
Atom stacks-avail(n0)
Atom stacks-avail(n6)
Atom stacks-avail(n5)
end_variable
begin_variable
var1
-1
3
Atom waiting(o1)
Atom shipped(o1)
Atom started(o1)
end_variable
begin_variable
var2
-1
3
Atom waiting(o9)
Atom shipped(o9)
Atom started(o9)
end_variable
begin_variable
var3
-1
3
Atom started(o8)
Atom shipped(o8)
Atom waiting(o8)
end_variable
begin_variable
var4
-1
3
Atom waiting(o3)
Atom started(o3)
Atom shipped(o3)
end_variable
begin_variable
var5
-1
3
Atom shipped(o2)
Atom waiting(o2)
Atom started(o2)
end_variable
begin_variable
var6
-1
3
Atom waiting(o6)
Atom started(o6)
Atom shipped(o6)
end_variable
begin_variable
var7
-1
3
Atom started(o10)
Atom waiting(o10)
Atom shipped(o10)
end_variable
begin_variable
var8
-1
3
Atom shipped(o4)
Atom started(o4)
Atom waiting(o4)
end_variable
begin_variable
var9
-1
3
Atom shipped(o5)
Atom started(o5)
Atom waiting(o5)
end_variable
begin_variable
var10
-1
3
Atom started(o7)
Atom shipped(o7)
Atom waiting(o7)
end_variable
begin_variable
var11
-1
2
Atom made(p5)
Atom not-made(p5)
end_variable
begin_variable
var12
-1
2
Atom made(p6)
Atom not-made(p6)
end_variable
begin_variable
var13
-1
2
Atom made(p4)
Atom not-made(p4)
end_variable
begin_variable
var14
-1
2
Atom made(p7)
Atom not-made(p7)
end_variable
begin_variable
var15
-1
2
Atom not-made(p9)
Atom made(p9)
end_variable
begin_variable
var16
-1
2
Atom not-made(p3)
Atom made(p3)
end_variable
begin_variable
var17
-1
2
Atom not-made(p10)
Atom made(p10)
end_variable
begin_variable
var18
-1
2
Atom made(p8)
Atom not-made(p8)
end_variable
begin_variable
var19
-1
2
Atom not-made(p2)
Atom made(p2)
end_variable
begin_variable
var20
-1
2
Atom not-made(p1)
Atom made(p1)
end_variable
31
begin_mutex_group
3
10 2
10 0
10 1
end_mutex_group
begin_mutex_group
3
9 2
9 1
9 0
end_mutex_group
begin_mutex_group
2
20 1
20 0
end_mutex_group
begin_mutex_group
2
19 1
19 0
end_mutex_group
begin_mutex_group
2
4 1
4 0
end_mutex_group
begin_mutex_group
2
18 0
18 1
end_mutex_group
begin_mutex_group
3
8 2
8 1
8 0
end_mutex_group
begin_mutex_group
2
17 1
17 0
end_mutex_group
begin_mutex_group
2
16 1
16 0
end_mutex_group
begin_mutex_group
3
7 1
7 0
7 2
end_mutex_group
begin_mutex_group
2
15 1
15 0
end_mutex_group
begin_mutex_group
3
6 0
6 1
6 2
end_mutex_group
begin_mutex_group
2
2 2
2 0
end_mutex_group
begin_mutex_group
3
5 1
5 2
5 0
end_mutex_group
begin_mutex_group
3
4 0
4 1
4 2
end_mutex_group
begin_mutex_group
2
6 1
6 0
end_mutex_group
begin_mutex_group
2
7 0
7 1
end_mutex_group
begin_mutex_group
2
10 0
10 2
end_mutex_group
begin_mutex_group
3
3 2
3 0
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
5 2
5 1
end_mutex_group
begin_mutex_group
3
1 0
1 2
1 1
end_mutex_group
begin_mutex_group
2
14 0
14 1
end_mutex_group
begin_mutex_group
2
9 1
9 2
end_mutex_group
begin_mutex_group
2
1 2
1 0
end_mutex_group
begin_mutex_group
2
3 0
3 2
end_mutex_group
begin_mutex_group
2
13 0
13 1
end_mutex_group
begin_mutex_group
11
0 8
0 5
0 3
0 1
0 0
0 10
0 9
0 7
0 4
0 2
0 6
end_mutex_group
begin_mutex_group
2
8 1
8 2
end_mutex_group
begin_mutex_group
2
12 0
12 1
end_mutex_group
begin_mutex_group
2
11 0
11 1
end_mutex_group
begin_state
8
0
0
2
0
1
0
1
2
2
2
1
1
1
1
0
0
0
1
0
0
end_state
begin_goal
10
1 1
2 1
3 1
4 2
5 0
6 2
7 2
8 0
9 0
10 1
end_goal
220
begin_operator
open-new-stack n0 n1
0
1
0 0 8 5
1
end_operator
begin_operator
open-new-stack n1 n2
0
1
0 0 5 3
1
end_operator
begin_operator
start-order o1 n1 n0
0
2
0 0 5 8
0 1 0 2
0
end_operator
begin_operator
start-order o2 n1 n0
0
2
0 0 5 8
0 5 1 2
0
end_operator
begin_operator
start-order o3 n1 n0
0
2
0 0 5 8
0 4 0 1
0
end_operator
begin_operator
start-order o4 n1 n0
0
2
0 0 5 8
0 8 2 1
0
end_operator
begin_operator
start-order o5 n1 n0
0
2
0 0 5 8
0 9 2 1
0
end_operator
begin_operator
start-order o6 n1 n0
0
2
0 0 5 8
0 6 0 1
0
end_operator
begin_operator
start-order o7 n1 n0
0
2
0 0 5 8
0 10 2 0
0
end_operator
begin_operator
start-order o8 n1 n0
0
2
0 0 5 8
0 3 2 0
0
end_operator
begin_operator
start-order o9 n1 n0
0
2
0 0 5 8
0 2 0 2
0
end_operator
begin_operator
start-order o10 n1 n0
0
2
0 0 5 8
0 7 1 0
0
end_operator
begin_operator
open-new-stack n2 n3
0
1
0 0 3 1
1
end_operator
begin_operator
make-product-p6 
1
1 2
1
0 12 1 0
0
end_operator
begin_operator
make-product-p2 
1
5 2
1
0 19 0 1
0
end_operator
begin_operator
make-product-p10 
2
1 2
5 2
1
0 17 0 1
0
end_operator
begin_operator
make-product-p7 
1
4 1
1
0 14 1 0
0
end_operator
begin_operator
make-product-p8 
1
4 1
1
0 18 1 0
0
end_operator
begin_operator
make-product-p4 
1
8 1
1
0 13 1 0
0
end_operator
begin_operator
make-product-p5 
2
6 1
10 0
1
0 11 1 0
0
end_operator
begin_operator
make-product-p3 
2
3 0
9 1
1
0 16 0 1
0
end_operator
begin_operator
make-product-p1 
2
2 2
4 1
1
0 20 0 1
0
end_operator
begin_operator
make-product-p9 
2
1 2
7 0
1
0 15 0 1
0
end_operator
begin_operator
start-order o1 n2 n1
0
2
0 0 3 5
0 1 0 2
0
end_operator
begin_operator
start-order o2 n2 n1
0
2
0 0 3 5
0 5 1 2
0
end_operator
begin_operator
start-order o3 n2 n1
0
2
0 0 3 5
0 4 0 1
0
end_operator
begin_operator
start-order o4 n2 n1
0
2
0 0 3 5
0 8 2 1
0
end_operator
begin_operator
start-order o5 n2 n1
0
2
0 0 3 5
0 9 2 1
0
end_operator
begin_operator
start-order o6 n2 n1
0
2
0 0 3 5
0 6 0 1
0
end_operator
begin_operator
start-order o7 n2 n1
0
2
0 0 3 5
0 10 2 0
0
end_operator
begin_operator
start-order o8 n2 n1
0
2
0 0 3 5
0 3 2 0
0
end_operator
begin_operator
start-order o9 n2 n1
0
2
0 0 3 5
0 2 0 2
0
end_operator
begin_operator
start-order o10 n2 n1
0
2
0 0 3 5
0 7 1 0
0
end_operator
begin_operator
ship-order-o2 n0 n1
2
17 1
19 1
2
0 0 8 5
0 5 2 0
0
end_operator
begin_operator
ship-order-o2 n1 n2
2
17 1
19 1
2
0 0 5 3
0 5 2 0
0
end_operator
begin_operator
ship-order-o2 n2 n3
2
17 1
19 1
2
0 0 3 1
0 5 2 0
0
end_operator
begin_operator
ship-order-o4 n0 n1
1
13 0
2
0 0 8 5
0 8 1 0
0
end_operator
begin_operator
ship-order-o4 n1 n2
1
13 0
2
0 0 5 3
0 8 1 0
0
end_operator
begin_operator
ship-order-o4 n2 n3
1
13 0
2
0 0 3 1
0 8 1 0
0
end_operator
begin_operator
ship-order-o6 n0 n1
1
11 0
2
0 0 8 5
0 6 1 2
0
end_operator
begin_operator
ship-order-o6 n1 n2
1
11 0
2
0 0 5 3
0 6 1 2
0
end_operator
begin_operator
ship-order-o6 n2 n3
1
11 0
2
0 0 3 1
0 6 1 2
0
end_operator
begin_operator
ship-order-o7 n0 n1
1
11 0
2
0 0 8 5
0 10 0 1
0
end_operator
begin_operator
ship-order-o7 n1 n2
1
11 0
2
0 0 5 3
0 10 0 1
0
end_operator
begin_operator
ship-order-o7 n2 n3
1
11 0
2
0 0 3 1
0 10 0 1
0
end_operator
begin_operator
ship-order-o5 n0 n1
1
16 1
2
0 0 8 5
0 9 1 0
0
end_operator
begin_operator
ship-order-o5 n1 n2
1
16 1
2
0 0 5 3
0 9 1 0
0
end_operator
begin_operator
ship-order-o5 n2 n3
1
16 1
2
0 0 3 1
0 9 1 0
0
end_operator
begin_operator
ship-order-o8 n0 n1
1
16 1
2
0 0 8 5
0 3 0 1
0
end_operator
begin_operator
ship-order-o8 n1 n2
1
16 1
2
0 0 5 3
0 3 0 1
0
end_operator
begin_operator
ship-order-o8 n2 n3
1
16 1
2
0 0 3 1
0 3 0 1
0
end_operator
begin_operator
ship-order-o3 n0 n1
3
14 0
18 0
20 1
2
0 0 8 5
0 4 1 2
0
end_operator
begin_operator
ship-order-o3 n1 n2
3
14 0
18 0
20 1
2
0 0 5 3
0 4 1 2
0
end_operator
begin_operator
ship-order-o3 n2 n3
3
14 0
18 0
20 1
2
0 0 3 1
0 4 1 2
0
end_operator
begin_operator
ship-order-o9 n0 n1
1
20 1
2
0 0 8 5
0 2 2 1
0
end_operator
begin_operator
ship-order-o9 n1 n2
1
20 1
2
0 0 5 3
0 2 2 1
0
end_operator
begin_operator
ship-order-o9 n2 n3
1
20 1
2
0 0 3 1
0 2 2 1
0
end_operator
begin_operator
ship-order-o1 n0 n1
3
12 0
15 1
17 1
2
0 0 8 5
0 1 2 1
0
end_operator
begin_operator
ship-order-o1 n1 n2
3
12 0
15 1
17 1
2
0 0 5 3
0 1 2 1
0
end_operator
begin_operator
ship-order-o1 n2 n3
3
12 0
15 1
17 1
2
0 0 3 1
0 1 2 1
0
end_operator
begin_operator
ship-order-o10 n0 n1
1
15 1
2
0 0 8 5
0 7 0 2
0
end_operator
begin_operator
ship-order-o10 n1 n2
1
15 1
2
0 0 5 3
0 7 0 2
0
end_operator
begin_operator
ship-order-o10 n2 n3
1
15 1
2
0 0 3 1
0 7 0 2
0
end_operator
begin_operator
open-new-stack n3 n4
0
1
0 0 1 0
1
end_operator
begin_operator
start-order o1 n3 n2
0
2
0 0 1 3
0 1 0 2
0
end_operator
begin_operator
start-order o2 n3 n2
0
2
0 0 1 3
0 5 1 2
0
end_operator
begin_operator
start-order o3 n3 n2
0
2
0 0 1 3
0 4 0 1
0
end_operator
begin_operator
start-order o4 n3 n2
0
2
0 0 1 3
0 8 2 1
0
end_operator
begin_operator
start-order o5 n3 n2
0
2
0 0 1 3
0 9 2 1
0
end_operator
begin_operator
start-order o6 n3 n2
0
2
0 0 1 3
0 6 0 1
0
end_operator
begin_operator
start-order o7 n3 n2
0
2
0 0 1 3
0 10 2 0
0
end_operator
begin_operator
start-order o8 n3 n2
0
2
0 0 1 3
0 3 2 0
0
end_operator
begin_operator
start-order o9 n3 n2
0
2
0 0 1 3
0 2 0 2
0
end_operator
begin_operator
start-order o10 n3 n2
0
2
0 0 1 3
0 7 1 0
0
end_operator
begin_operator
ship-order-o1 n3 n4
3
12 0
15 1
17 1
2
0 0 1 0
0 1 2 1
0
end_operator
begin_operator
ship-order-o2 n3 n4
2
17 1
19 1
2
0 0 1 0
0 5 2 0
0
end_operator
begin_operator
ship-order-o3 n3 n4
3
14 0
18 0
20 1
2
0 0 1 0
0 4 1 2
0
end_operator
begin_operator
ship-order-o4 n3 n4
1
13 0
2
0 0 1 0
0 8 1 0
0
end_operator
begin_operator
ship-order-o5 n3 n4
1
16 1
2
0 0 1 0
0 9 1 0
0
end_operator
begin_operator
ship-order-o6 n3 n4
1
11 0
2
0 0 1 0
0 6 1 2
0
end_operator
begin_operator
ship-order-o7 n3 n4
1
11 0
2
0 0 1 0
0 10 0 1
0
end_operator
begin_operator
ship-order-o8 n3 n4
1
16 1
2
0 0 1 0
0 3 0 1
0
end_operator
begin_operator
ship-order-o9 n3 n4
1
20 1
2
0 0 1 0
0 2 2 1
0
end_operator
begin_operator
ship-order-o10 n3 n4
1
15 1
2
0 0 1 0
0 7 0 2
0
end_operator
begin_operator
open-new-stack n4 n5
0
1
0 0 0 10
1
end_operator
begin_operator
start-order o1 n4 n3
0
2
0 0 0 1
0 1 0 2
0
end_operator
begin_operator
start-order o2 n4 n3
0
2
0 0 0 1
0 5 1 2
0
end_operator
begin_operator
start-order o3 n4 n3
0
2
0 0 0 1
0 4 0 1
0
end_operator
begin_operator
start-order o4 n4 n3
0
2
0 0 0 1
0 8 2 1
0
end_operator
begin_operator
start-order o5 n4 n3
0
2
0 0 0 1
0 9 2 1
0
end_operator
begin_operator
start-order o6 n4 n3
0
2
0 0 0 1
0 6 0 1
0
end_operator
begin_operator
start-order o7 n4 n3
0
2
0 0 0 1
0 10 2 0
0
end_operator
begin_operator
start-order o8 n4 n3
0
2
0 0 0 1
0 3 2 0
0
end_operator
begin_operator
start-order o9 n4 n3
0
2
0 0 0 1
0 2 0 2
0
end_operator
begin_operator
start-order o10 n4 n3
0
2
0 0 0 1
0 7 1 0
0
end_operator
begin_operator
ship-order-o1 n4 n5
3
12 0
15 1
17 1
2
0 0 0 10
0 1 2 1
0
end_operator
begin_operator
ship-order-o2 n4 n5
2
17 1
19 1
2
0 0 0 10
0 5 2 0
0
end_operator
begin_operator
ship-order-o3 n4 n5
3
14 0
18 0
20 1
2
0 0 0 10
0 4 1 2
0
end_operator
begin_operator
ship-order-o4 n4 n5
1
13 0
2
0 0 0 10
0 8 1 0
0
end_operator
begin_operator
ship-order-o5 n4 n5
1
16 1
2
0 0 0 10
0 9 1 0
0
end_operator
begin_operator
ship-order-o6 n4 n5
1
11 0
2
0 0 0 10
0 6 1 2
0
end_operator
begin_operator
ship-order-o7 n4 n5
1
11 0
2
0 0 0 10
0 10 0 1
0
end_operator
begin_operator
ship-order-o8 n4 n5
1
16 1
2
0 0 0 10
0 3 0 1
0
end_operator
begin_operator
ship-order-o9 n4 n5
1
20 1
2
0 0 0 10
0 2 2 1
0
end_operator
begin_operator
ship-order-o10 n4 n5
1
15 1
2
0 0 0 10
0 7 0 2
0
end_operator
begin_operator
open-new-stack n5 n6
0
1
0 0 10 9
1
end_operator
begin_operator
start-order o1 n5 n4
0
2
0 0 10 0
0 1 0 2
0
end_operator
begin_operator
start-order o2 n5 n4
0
2
0 0 10 0
0 5 1 2
0
end_operator
begin_operator
start-order o3 n5 n4
0
2
0 0 10 0
0 4 0 1
0
end_operator
begin_operator
start-order o4 n5 n4
0
2
0 0 10 0
0 8 2 1
0
end_operator
begin_operator
start-order o5 n5 n4
0
2
0 0 10 0
0 9 2 1
0
end_operator
begin_operator
start-order o6 n5 n4
0
2
0 0 10 0
0 6 0 1
0
end_operator
begin_operator
start-order o7 n5 n4
0
2
0 0 10 0
0 10 2 0
0
end_operator
begin_operator
start-order o8 n5 n4
0
2
0 0 10 0
0 3 2 0
0
end_operator
begin_operator
start-order o9 n5 n4
0
2
0 0 10 0
0 2 0 2
0
end_operator
begin_operator
start-order o10 n5 n4
0
2
0 0 10 0
0 7 1 0
0
end_operator
begin_operator
ship-order-o1 n5 n6
3
12 0
15 1
17 1
2
0 0 10 9
0 1 2 1
0
end_operator
begin_operator
ship-order-o2 n5 n6
2
17 1
19 1
2
0 0 10 9
0 5 2 0
0
end_operator
begin_operator
ship-order-o3 n5 n6
3
14 0
18 0
20 1
2
0 0 10 9
0 4 1 2
0
end_operator
begin_operator
ship-order-o4 n5 n6
1
13 0
2
0 0 10 9
0 8 1 0
0
end_operator
begin_operator
ship-order-o5 n5 n6
1
16 1
2
0 0 10 9
0 9 1 0
0
end_operator
begin_operator
ship-order-o6 n5 n6
1
11 0
2
0 0 10 9
0 6 1 2
0
end_operator
begin_operator
ship-order-o7 n5 n6
1
11 0
2
0 0 10 9
0 10 0 1
0
end_operator
begin_operator
ship-order-o8 n5 n6
1
16 1
2
0 0 10 9
0 3 0 1
0
end_operator
begin_operator
ship-order-o9 n5 n6
1
20 1
2
0 0 10 9
0 2 2 1
0
end_operator
begin_operator
ship-order-o10 n5 n6
1
15 1
2
0 0 10 9
0 7 0 2
0
end_operator
begin_operator
open-new-stack n6 n7
0
1
0 0 9 7
1
end_operator
begin_operator
start-order o1 n6 n5
0
2
0 0 9 10
0 1 0 2
0
end_operator
begin_operator
start-order o2 n6 n5
0
2
0 0 9 10
0 5 1 2
0
end_operator
begin_operator
start-order o3 n6 n5
0
2
0 0 9 10
0 4 0 1
0
end_operator
begin_operator
start-order o4 n6 n5
0
2
0 0 9 10
0 8 2 1
0
end_operator
begin_operator
start-order o5 n6 n5
0
2
0 0 9 10
0 9 2 1
0
end_operator
begin_operator
start-order o6 n6 n5
0
2
0 0 9 10
0 6 0 1
0
end_operator
begin_operator
start-order o7 n6 n5
0
2
0 0 9 10
0 10 2 0
0
end_operator
begin_operator
start-order o8 n6 n5
0
2
0 0 9 10
0 3 2 0
0
end_operator
begin_operator
start-order o9 n6 n5
0
2
0 0 9 10
0 2 0 2
0
end_operator
begin_operator
start-order o10 n6 n5
0
2
0 0 9 10
0 7 1 0
0
end_operator
begin_operator
ship-order-o1 n6 n7
3
12 0
15 1
17 1
2
0 0 9 7
0 1 2 1
0
end_operator
begin_operator
ship-order-o2 n6 n7
2
17 1
19 1
2
0 0 9 7
0 5 2 0
0
end_operator
begin_operator
ship-order-o3 n6 n7
3
14 0
18 0
20 1
2
0 0 9 7
0 4 1 2
0
end_operator
begin_operator
ship-order-o4 n6 n7
1
13 0
2
0 0 9 7
0 8 1 0
0
end_operator
begin_operator
ship-order-o5 n6 n7
1
16 1
2
0 0 9 7
0 9 1 0
0
end_operator
begin_operator
ship-order-o6 n6 n7
1
11 0
2
0 0 9 7
0 6 1 2
0
end_operator
begin_operator
ship-order-o7 n6 n7
1
11 0
2
0 0 9 7
0 10 0 1
0
end_operator
begin_operator
ship-order-o8 n6 n7
1
16 1
2
0 0 9 7
0 3 0 1
0
end_operator
begin_operator
ship-order-o9 n6 n7
1
20 1
2
0 0 9 7
0 2 2 1
0
end_operator
begin_operator
ship-order-o10 n6 n7
1
15 1
2
0 0 9 7
0 7 0 2
0
end_operator
begin_operator
open-new-stack n7 n8
0
1
0 0 7 4
1
end_operator
begin_operator
start-order o1 n7 n6
0
2
0 0 7 9
0 1 0 2
0
end_operator
begin_operator
start-order o2 n7 n6
0
2
0 0 7 9
0 5 1 2
0
end_operator
begin_operator
start-order o3 n7 n6
0
2
0 0 7 9
0 4 0 1
0
end_operator
begin_operator
start-order o4 n7 n6
0
2
0 0 7 9
0 8 2 1
0
end_operator
begin_operator
start-order o5 n7 n6
0
2
0 0 7 9
0 9 2 1
0
end_operator
begin_operator
start-order o6 n7 n6
0
2
0 0 7 9
0 6 0 1
0
end_operator
begin_operator
start-order o7 n7 n6
0
2
0 0 7 9
0 10 2 0
0
end_operator
begin_operator
start-order o8 n7 n6
0
2
0 0 7 9
0 3 2 0
0
end_operator
begin_operator
start-order o9 n7 n6
0
2
0 0 7 9
0 2 0 2
0
end_operator
begin_operator
start-order o10 n7 n6
0
2
0 0 7 9
0 7 1 0
0
end_operator
begin_operator
ship-order-o1 n7 n8
3
12 0
15 1
17 1
2
0 0 7 4
0 1 2 1
0
end_operator
begin_operator
ship-order-o2 n7 n8
2
17 1
19 1
2
0 0 7 4
0 5 2 0
0
end_operator
begin_operator
ship-order-o3 n7 n8
3
14 0
18 0
20 1
2
0 0 7 4
0 4 1 2
0
end_operator
begin_operator
ship-order-o4 n7 n8
1
13 0
2
0 0 7 4
0 8 1 0
0
end_operator
begin_operator
ship-order-o5 n7 n8
1
16 1
2
0 0 7 4
0 9 1 0
0
end_operator
begin_operator
ship-order-o6 n7 n8
1
11 0
2
0 0 7 4
0 6 1 2
0
end_operator
begin_operator
ship-order-o7 n7 n8
1
11 0
2
0 0 7 4
0 10 0 1
0
end_operator
begin_operator
ship-order-o8 n7 n8
1
16 1
2
0 0 7 4
0 3 0 1
0
end_operator
begin_operator
ship-order-o9 n7 n8
1
20 1
2
0 0 7 4
0 2 2 1
0
end_operator
begin_operator
ship-order-o10 n7 n8
1
15 1
2
0 0 7 4
0 7 0 2
0
end_operator
begin_operator
open-new-stack n8 n9
0
1
0 0 4 2
1
end_operator
begin_operator
start-order o1 n8 n7
0
2
0 0 4 7
0 1 0 2
0
end_operator
begin_operator
start-order o2 n8 n7
0
2
0 0 4 7
0 5 1 2
0
end_operator
begin_operator
start-order o3 n8 n7
0
2
0 0 4 7
0 4 0 1
0
end_operator
begin_operator
start-order o4 n8 n7
0
2
0 0 4 7
0 8 2 1
0
end_operator
begin_operator
start-order o5 n8 n7
0
2
0 0 4 7
0 9 2 1
0
end_operator
begin_operator
start-order o6 n8 n7
0
2
0 0 4 7
0 6 0 1
0
end_operator
begin_operator
start-order o7 n8 n7
0
2
0 0 4 7
0 10 2 0
0
end_operator
begin_operator
start-order o8 n8 n7
0
2
0 0 4 7
0 3 2 0
0
end_operator
begin_operator
start-order o9 n8 n7
0
2
0 0 4 7
0 2 0 2
0
end_operator
begin_operator
start-order o10 n8 n7
0
2
0 0 4 7
0 7 1 0
0
end_operator
begin_operator
ship-order-o1 n8 n9
3
12 0
15 1
17 1
2
0 0 4 2
0 1 2 1
0
end_operator
begin_operator
ship-order-o2 n8 n9
2
17 1
19 1
2
0 0 4 2
0 5 2 0
0
end_operator
begin_operator
ship-order-o3 n8 n9
3
14 0
18 0
20 1
2
0 0 4 2
0 4 1 2
0
end_operator
begin_operator
ship-order-o4 n8 n9
1
13 0
2
0 0 4 2
0 8 1 0
0
end_operator
begin_operator
ship-order-o5 n8 n9
1
16 1
2
0 0 4 2
0 9 1 0
0
end_operator
begin_operator
ship-order-o6 n8 n9
1
11 0
2
0 0 4 2
0 6 1 2
0
end_operator
begin_operator
ship-order-o7 n8 n9
1
11 0
2
0 0 4 2
0 10 0 1
0
end_operator
begin_operator
ship-order-o8 n8 n9
1
16 1
2
0 0 4 2
0 3 0 1
0
end_operator
begin_operator
ship-order-o9 n8 n9
1
20 1
2
0 0 4 2
0 2 2 1
0
end_operator
begin_operator
ship-order-o10 n8 n9
1
15 1
2
0 0 4 2
0 7 0 2
0
end_operator
begin_operator
open-new-stack n9 n10
0
1
0 0 2 6
1
end_operator
begin_operator
start-order o1 n9 n8
0
2
0 0 2 4
0 1 0 2
0
end_operator
begin_operator
start-order o2 n9 n8
0
2
0 0 2 4
0 5 1 2
0
end_operator
begin_operator
start-order o3 n9 n8
0
2
0 0 2 4
0 4 0 1
0
end_operator
begin_operator
start-order o4 n9 n8
0
2
0 0 2 4
0 8 2 1
0
end_operator
begin_operator
start-order o5 n9 n8
0
2
0 0 2 4
0 9 2 1
0
end_operator
begin_operator
start-order o6 n9 n8
0
2
0 0 2 4
0 6 0 1
0
end_operator
begin_operator
start-order o7 n9 n8
0
2
0 0 2 4
0 10 2 0
0
end_operator
begin_operator
start-order o8 n9 n8
0
2
0 0 2 4
0 3 2 0
0
end_operator
begin_operator
start-order o9 n9 n8
0
2
0 0 2 4
0 2 0 2
0
end_operator
begin_operator
start-order o10 n9 n8
0
2
0 0 2 4
0 7 1 0
0
end_operator
begin_operator
ship-order-o1 n9 n10
3
12 0
15 1
17 1
2
0 0 2 6
0 1 2 1
0
end_operator
begin_operator
ship-order-o2 n9 n10
2
17 1
19 1
2
0 0 2 6
0 5 2 0
0
end_operator
begin_operator
ship-order-o3 n9 n10
3
14 0
18 0
20 1
2
0 0 2 6
0 4 1 2
0
end_operator
begin_operator
ship-order-o4 n9 n10
1
13 0
2
0 0 2 6
0 8 1 0
0
end_operator
begin_operator
ship-order-o5 n9 n10
1
16 1
2
0 0 2 6
0 9 1 0
0
end_operator
begin_operator
ship-order-o6 n9 n10
1
11 0
2
0 0 2 6
0 6 1 2
0
end_operator
begin_operator
ship-order-o7 n9 n10
1
11 0
2
0 0 2 6
0 10 0 1
0
end_operator
begin_operator
ship-order-o8 n9 n10
1
16 1
2
0 0 2 6
0 3 0 1
0
end_operator
begin_operator
ship-order-o9 n9 n10
1
20 1
2
0 0 2 6
0 2 2 1
0
end_operator
begin_operator
ship-order-o10 n9 n10
1
15 1
2
0 0 2 6
0 7 0 2
0
end_operator
begin_operator
start-order o1 n10 n9
0
2
0 0 6 2
0 1 0 2
0
end_operator
begin_operator
start-order o2 n10 n9
0
2
0 0 6 2
0 5 1 2
0
end_operator
begin_operator
start-order o3 n10 n9
0
2
0 0 6 2
0 4 0 1
0
end_operator
begin_operator
start-order o4 n10 n9
0
2
0 0 6 2
0 8 2 1
0
end_operator
begin_operator
start-order o5 n10 n9
0
2
0 0 6 2
0 9 2 1
0
end_operator
begin_operator
start-order o6 n10 n9
0
2
0 0 6 2
0 6 0 1
0
end_operator
begin_operator
start-order o7 n10 n9
0
2
0 0 6 2
0 10 2 0
0
end_operator
begin_operator
start-order o8 n10 n9
0
2
0 0 6 2
0 3 2 0
0
end_operator
begin_operator
start-order o9 n10 n9
0
2
0 0 6 2
0 2 0 2
0
end_operator
begin_operator
start-order o10 n10 n9
0
2
0 0 6 2
0 7 1 0
0
end_operator
0
