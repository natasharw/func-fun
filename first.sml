(* sequence of variable bindings *)
(* 1. syntax 2. check rules 3. evaluation rules *)
(* val x = e *)
(* type-check -> extend static enviroment *)
(* evaluate expression -> extend dynamic environment *)


val a = 10;
(* static environment: a : int *)
(* dynamic environment: a --> 10 *)

val b = 14;
(* static environment: a : int , b : int *)
(* dynamic environment: a --> 10, b --> 14 *)

val c = (a + b) + (b + 2);
(* static environment: a : int, b : int , c : int *)
(* dynamic environment: a --> 10, b --> 14, c --> 40 *)

val d = c + 1
(* static environment: a : int, b : int, c : int, d : int *)
(* dynamic environment: a --> 10, b --> 14, c --> 40, d --> 41 *)

val abs_of_d = if d < 0 then 0 - d else d; (* bool *) (* int *)
(* static environment: ... abs_of_d : int *)
(* dynamic environment: ... abs_of_d --> 41 *)

val abs_of_z_simpler = abs d;

val m = ~ d (* negative *)

