open Syntax

let rec pow (x, y) =
  if y = 0 then 1 else x * pow (x, y - 1)

(* 実際の計算をする関数 *)
(* Eval.f : Syntax.t -> int *)
let rec f expr = match expr with
		Num (n) -> n
	| Op2 (op, arg1, arg2) ->
			let v1 = f arg1 in
			let v2 = f arg2 in
			(match op with
			Minus -> v1 - v2
		| Plus -> v1 + v2
		| Times -> v1 * v2
		| Divide -> v1 / v2
		| Power -> pow(v1,v2)
		| Mod -> v1 mod v2)
	| Op1 (op, arg) ->
			let v = f arg in
			(match op with
			UMinus -> - v
		| UPlus -> + v)
