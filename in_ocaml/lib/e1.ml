(*
 * If we list all the natural numbers below 10 that are multiples of 3 or 5, we
 * get 3, 5, 6 and 9. The sum of these multiples is 23.
 *
 * Find the sum of all the multiples of 3 or 5 below 1000.
 *)

let rec sum_list l =
    match l with
    | [] -> 0
    | head :: tail -> head + (sum_list tail)
;;

let rng = List.init 1000 (fun x -> x + 1);;
let mults = List.filter (fun x -> (x mod 3 = 0) || (x mod 5 = 0)) rng;;

let ans: string = string_of_int (sum_list mults)
