(* ２項演算子の型 *)
type op2_t = Plus |Minus | Times |Divide | Power | Mod

(* 単項演算子の型 *)
type op1_t = UMinus | UPlus

(* Syntax.t: parser が出力する抽象構文木の型 *)
type t  = Num of int
	| Op2 of op2_t * t * t
	| Op1 of op1_t * t

(* Syntax.print: 抽象構文木をプリントする関数 *)

(* string_of_expr : Syntax.t -> string *)
let rec string_of_expr expr = match expr with
    Num (n) -> string_of_int n
  | Op2 (op, arg1, arg2) ->
	"(" ^ string_of_expr arg1
	    ^ (match op with
		  Minus -> "-"
		| Times -> "*"
		| Plus -> "+"
		| Divide -> "/"
		| Power -> "^"
		| Mod -> "mod")
	    ^ string_of_expr arg2 ^ ")"
  | Op1 (op, arg) ->
	(match op with
	    UMinus -> "(-"
		| UPlus -> "(+")
	^ string_of_expr arg ^ ")"

(* print : Syntax.t -> unit *)
let print expr =
  let str = string_of_expr expr
  in print_string str
