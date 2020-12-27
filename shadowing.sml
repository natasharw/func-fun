(* shadowing *)

val x = 23;
(* dynamic environment: x -> 23 *)

val y = x + 10;
(* dynamic environment:  x -> 23, y -> 33 *)

val x = 1;
(* dynamic environment: x -> 1, y -> 33 *)

val z = y;
(* dynamic environment  x -> 1, y -> 33, z -> 33 *)

val w = z;
(* dynamic environment  x -> 1, y -> 33, z -> 33, w -> 1 *)

val x = x * 2
(* dynamic environment x -> 2, y -> 33, z -> 33, w -> 1 *)



