type token =
  | HOUKOU of (string)
  | ITEM of (string)
  | TADOUSHI of (string)
  | TANDOKUDOUSHI of (string)
  | IE
  | HEYA
  | HE
  | NI
  | KARA
  | SUSUMU
  | HAIRU
  | DERU
  | WO
  | MIRU
  | EOL

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
(* 補助的な変数、関数、型などの定義 *)
open Syntax
# 24 "parser.ml"
let yytransl_const = [|
  261 (* IE *);
  262 (* HEYA *);
  263 (* HE *);
  264 (* NI *);
  265 (* KARA *);
  266 (* SUSUMU *);
  267 (* HAIRU *);
  268 (* DERU *);
  269 (* WO *);
  270 (* MIRU *);
  271 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* HOUKOU *);
  258 (* ITEM *);
  259 (* TADOUSHI *);
  260 (* TANDOKUDOUSHI *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\004\000\004\000\005\000\005\000\003\000\003\000\006\000\
\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\006\000\006\000\006\000\006\000\000\000"

let yylen = "\002\000\
\002\000\003\000\003\000\002\000\001\000\003\000\002\000\003\000\
\002\000\001\000\003\000\002\000\001\000\002\000\001\000\001\000\
\000\000\001\000\001\000\002\000\001\000\001\000\002\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\016\000\000\000\000\000\037\000\
\000\000\000\000\018\000\019\000\000\000\020\000\000\000\000\000\
\000\000\024\000\034\000\035\000\036\000\025\000\026\000\027\000\
\028\000\029\000\030\000\031\000\032\000\033\000\001\000\000\000\
\000\000\014\000\003\000\008\000\006\000\011\000\002\000\023\000"

let yydgoto = "\002\000\
\008\000\009\000\032\000\013\000\010\000\033\000"

let yysindex = "\012\000\
\175\255\000\000\020\255\025\255\000\000\157\255\034\255\000\000\
\255\254\055\255\000\000\000\000\037\255\000\000\057\255\062\255\
\076\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\071\255\
\149\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\160\255\000\000\119\255\014\255\000\000\134\255\029\255\000\000\
\000\000\044\255\000\000\000\000\059\255\000\000\074\255\089\255\
\104\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\085\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\070\000\110\000\000\000\000\000"

let yytablesize = 181
let yytable = "\018\000\
\019\000\020\000\021\000\022\000\023\000\024\000\025\000\026\000\
\027\000\028\000\029\000\030\000\001\000\031\000\021\000\021\000\
\021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
\021\000\021\000\011\000\012\000\021\000\013\000\013\000\013\000\
\013\000\013\000\013\000\013\000\013\000\014\000\013\000\013\000\
\013\000\013\000\017\000\013\000\015\000\015\000\035\000\015\000\
\015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
\015\000\034\000\015\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\004\000\036\000\004\000\004\000\004\000\
\037\000\004\000\009\000\009\000\009\000\009\000\009\000\009\000\
\009\000\009\000\009\000\009\000\009\000\039\000\009\000\038\000\
\009\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\022\000\007\000\007\000\040\000\007\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\012\000\012\000\012\000\016\000\012\000\000\000\012\000\005\000\
\005\000\005\000\005\000\005\000\005\000\000\000\000\000\005\000\
\005\000\005\000\005\000\005\000\000\000\005\000\010\000\010\000\
\010\000\010\000\010\000\010\000\000\000\000\000\000\000\010\000\
\010\000\010\000\010\000\000\000\010\000\018\000\019\000\020\000\
\021\000\022\000\023\000\024\000\025\000\026\000\027\000\028\000\
\029\000\030\000\017\000\011\000\012\000\015\000\017\000\017\000\
\017\000\017\000\017\000\017\000\017\000\000\000\017\000\003\000\
\004\000\000\000\005\000\006\000\007\000"

let yycheck = "\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\001\000\015\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\007\001\008\001\015\001\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\008\001\013\001\010\001\011\001\
\012\001\013\001\009\001\015\001\001\001\002\001\010\001\004\001\
\005\001\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\013\001\003\001\015\001\001\001\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\009\001\012\001\011\001\012\001\013\001\
\011\001\015\001\001\001\002\001\003\001\004\001\005\001\006\001\
\007\001\008\001\009\001\010\001\011\001\015\001\013\001\012\001\
\015\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\015\001\012\001\013\001\033\000\015\001\
\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\
\009\001\010\001\011\001\006\000\013\001\255\255\015\001\001\001\
\002\001\003\001\004\001\005\001\006\001\255\255\255\255\009\001\
\010\001\011\001\012\001\013\001\255\255\015\001\001\001\002\001\
\003\001\004\001\005\001\006\001\255\255\255\255\255\255\010\001\
\011\001\012\001\013\001\255\255\015\001\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\003\001\007\001\008\001\009\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\255\255\015\001\001\001\
\002\001\255\255\004\001\005\001\006\001"

let yynames_const = "\
  IE\000\
  HEYA\000\
  HE\000\
  NI\000\
  KARA\000\
  SUSUMU\000\
  HAIRU\000\
  DERU\000\
  WO\000\
  MIRU\000\
  EOL\000\
  "

let yynames_block = "\
  HOUKOU\000\
  ITEM\000\
  TADOUSHI\000\
  TANDOKUDOUSHI\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'bun) in
    Obj.repr(
# 44 "parser.mly"
        ( _1 )
# 166 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bun) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'anys) in
    Obj.repr(
# 46 "parser.mly"
        ( raise (Error ("「" ^ _2 ^ "」？")) )
# 174 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 50 "parser.mly"
        ( Idousuru (_1) )
# 182 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 52 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "に」どうする？")) )
# 190 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 54 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "」にどうする？")) )
# 197 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 56 "parser.mly"
        ( Idousuru ("入") )
# 204 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 58 "parser.mly"
        ( raise (Error ("「家に」どうする？")) )
# 211 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser.mly"
        ( Idousuru ("出") )
# 217 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
        ( raise (Error ("「家から」どうする？")) )
# 223 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
        ( raise (Error ("「家」にどうする？")) )
# 229 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
        ( Idousuru ("出") )
# 235 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
        ( raise (Error ("「部屋から」どうする？")) )
# 241 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "parser.mly"
        ( raise (Error ("「部屋」にどうする？")) )
# 247 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'mokutekigo) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 72 "parser.mly"
        ( Tadoushi (_1, _2) )
# 255 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'mokutekigo) in
    Obj.repr(
# 74 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "を」どうする？")) )
# 262 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "parser.mly"
        ( Tandokudoushi (_1) )
# 269 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 78 "parser.mly"
        ( raise (Error ("え？")) )
# 275 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "parser.mly"
        ( () (* 何も返す必要がない *) )
# 281 "parser.ml"
               : 'houkoujoshi))
; (fun __caml_parser_env ->
    Obj.repr(
# 84 "parser.mly"
        ( () (* 何も返す必要がない *) )
# 287 "parser.ml"
               : 'houkoujoshi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 88 "parser.mly"
        ( _1 )
# 294 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 90 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "」をどうする？")) )
# 301 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'any) in
    Obj.repr(
# 93 "parser.mly"
                ( _1 )
# 308 "parser.ml"
               : 'anys))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'any) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'anys) in
    Obj.repr(
# 94 "parser.mly"
                ( _1 ^ _2 )
# 316 "parser.ml"
               : 'anys))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 97 "parser.mly"
                ( _1 (* 返す文字列は、エラーメッセージ用 *) )
# 323 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 98 "parser.mly"
                ( "家" )
# 329 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 99 "parser.mly"
                ( "部屋" )
# 335 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 100 "parser.mly"
                ( "へ" )
# 341 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 101 "parser.mly"
                ( "に" )
# 347 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "parser.mly"
                ( "から" )
# 353 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 103 "parser.mly"
                ( "進む" )
# 359 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 104 "parser.mly"
                ( "入る" )
# 365 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 105 "parser.mly"
                ( "出る" )
# 371 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "parser.mly"
                ( "を" )
# 377 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 107 "parser.mly"
                ( _1 )
# 384 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 108 "parser.mly"
                ( _1 )
# 391 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 109 "parser.mly"
                ( _1 )
# 398 "parser.ml"
               : 'any))
(* Entry start *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let start (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Syntax.t)
