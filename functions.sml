(* functional function fun.. how's that for recursive *)
(* bindings *)
(* syntax: fun x0 (x1 : t1, ... , xn : tn) = e *)
(* evaluation: fun is a val *)
(* type-checking: adds binding x0 : (t1 * .. * tn) -> t *)
(* type: (t1 * .. * tn) -> t *)
(* function calls *)
(* syntax: e0 (e1,..,en) )

(* fun pow(x : int, y : int) =
    <expression> *)

fun pow(x : int, y : int) =
    if y=0
    then 1
    else x * pow(x, y-1);

fun cube(x : int) =
    pow(x,3);


val eight = cube(2)
val fortyfive = pow(2,2+2) + pow(4,2) + cube(2) + 5 


