

(* is_older : for tuple pair each representing dd-mm-yyyy, return true if first tuple is older *)
fun is_older (dt1 : (int * int * int), dt2 : (int * int * int)) =
    if (#3 dt1 <  #3 dt2) then true
    else if (#3 dt1 = #3 dt2) andalso (#2 dt1 <  #2 dt2) then true
    else if (#3 dt1 = #3 dt2) andalso (#2 dt1 =  #2 dt2) andalso (#1 dt1 <  #1 dt2) then true
    else false

(* num_in_month : return number of dates in list in given month *)
fun num_in_month (dts : (int*int*int) list, mth : int) =
    if null dts
    then 0
    else
	let val x = (if #2 (hd(dts)) = mth then 1 else 0)
	in		     
	    x + num_in_month(tl dts, mth)
	end

(* num_in_month_2 : return number of dates in list in given month *)
fun num_in_month_2 (dts : (int*int*int) list, mth : int) =
    if null dts
    then 0
    else
	if #2 (hd(dts)) = mth
	then 1 + num_in_month_2(tl dts, mth)
	else num_in_month_2(tl dts, mth)

(* num_in_months : return number of dates in date list that are in any of list of months *)
fun num_in_months (dts : (int*int*int) list, mths : (int) list) =
    let fun num_in_month (dts : (int*int*int) list, mth : int) = 
	     if null dts
	     then 0
	     else
		 if #2 (hd(dts)) = mth
		 then 1 + num_in_month (tl dts, mth)
		 else num_in_month (tl dts, mth)
    in
	if null mths
	then hd(mths)
	else num_in_months(dts, tl mths)
    end









(*							   
(* num_in_months : return number of dates in date list that are in any of list of months *)
fun num_in_months (dts : (int*int*int) list, mths : (int) list) =
    if null dts
    then 0
    else
	let fun mth(mths : (int) list) =
		if null (tl mths) then hd (mths)
		else  mth(tl mths)
	in
	    let val x = (if #2 (hd(dts)) = mth(mths) then 1 else 0)
	    in		     
		x + num_in_months(tl dts, mths)
	    end
	end

(* num_in_months_2 : return number of dates in date list that are in any of list of months *)
fun num_in_months_2 (dts : (int*int*int) list, mths : (int) list) =
    let fun num_in_month(dts : (int*int*int) list, mth : (int) list) =
	    if null dts
	    then 0
	    else
		if #2 (hd(dts)) = hd(mth)
		then 1 + num_in_months_2(tl dts, hd(mth))
		else num_in_months_2(tl dts, hd(mth))
    in
	if null mths
	then 0
	else
	    num_in_month(tl mths)
    end
					
*)
