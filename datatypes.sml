(* data types *)

(* pair of values is a value *)
(* type expression is ta * tb *)

fun swap (pr : int*bool) =
    (# pr, #1 pr)

fun sum_two_pairs (pr1 : int * int, pr2 : int * int) =
    (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)

fun div_mod (x : int, y : int) =
    (x div y, x mod y)

fun sort_pair(pr : int 
