type token =
  | HOUKOU of (string)
  | ITEM of (string)
  | TADOUSHI of (string)
  | TANDOKUDOUSHI of (string)
  | IRO of (string)
  | MEISHISETSUZOKU of (string)
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
  | SAWARU
  | EOL

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
(* 補助的な変数、関数、型などの定義 *)
open Syntax
# 27 "parser.ml"
let yytransl_const = [|
  263 (* IE *);
  264 (* HEYA *);
  265 (* HE *);
  266 (* NI *);
  267 (* KARA *);
  268 (* SUSUMU *);
  269 (* HAIRU *);
  270 (* DERU *);
  271 (* WO *);
  272 (* MIRU *);
  273 (* SAWARU *);
  274 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* HOUKOU *);
  258 (* ITEM *);
  259 (* TADOUSHI *);
  260 (* TANDOKUDOUSHI *);
  261 (* IRO *);
  262 (* MEISHISETSUZOKU *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\004\000\004\000\005\000\005\000\005\000\005\000\
\005\000\003\000\003\000\006\000\006\000\006\000\006\000\006\000\
\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\006\000\006\000\006\000\000\000"

let yylen = "\002\000\
\002\000\003\000\003\000\002\000\001\000\003\000\002\000\003\000\
\002\000\001\000\003\000\002\000\001\000\002\000\002\000\001\000\
\001\000\000\000\001\000\001\000\002\000\002\000\004\000\004\000\
\001\000\001\000\002\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\017\000\000\000\000\000\000\000\
\044\000\000\000\000\000\019\000\020\000\000\000\021\000\022\000\
\000\000\000\000\000\000\000\000\028\000\040\000\042\000\043\000\
\041\000\033\000\029\000\030\000\031\000\032\000\034\000\035\000\
\036\000\037\000\039\000\038\000\001\000\000\000\000\000\015\000\
\014\000\003\000\000\000\008\000\006\000\011\000\002\000\027\000\
\023\000\024\000"

let yydgoto = "\002\000\
\009\000\010\000\038\000\014\000\011\000\039\000"

let yysindex = "\014\000\
\210\255\000\000\150\255\131\255\000\000\022\255\211\255\040\255\
\000\000\255\254\030\255\000\000\000\000\055\255\000\000\000\000\
\067\255\070\255\074\255\091\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\085\255\179\255\000\000\
\000\000\000\000\162\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yyrindex = "\000\000\
\192\255\000\000\107\255\125\255\000\000\000\000\161\255\017\255\
\000\000\000\000\143\255\000\000\000\000\035\255\000\000\000\000\
\000\000\053\255\071\255\089\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\098\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\078\000\116\000\000\000\000\000"

let yytablesize = 222
let yytable = "\021\000\
\022\000\023\000\024\000\025\000\026\000\027\000\028\000\029\000\
\030\000\031\000\032\000\033\000\034\000\035\000\001\000\036\000\
\037\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
\013\000\013\000\013\000\017\000\013\000\013\000\013\000\013\000\
\040\000\013\000\013\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\041\000\004\000\
\004\000\004\000\020\000\004\000\004\000\009\000\009\000\009\000\
\009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
\009\000\009\000\042\000\009\000\043\000\009\000\009\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\044\000\007\000\007\000\045\000\007\000\
\007\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\047\000\012\000\
\046\000\012\000\012\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\026\000\048\000\005\000\005\000\005\000\
\005\000\005\000\019\000\005\000\005\000\025\000\025\000\025\000\
\025\000\025\000\025\000\025\000\025\000\025\000\000\000\025\000\
\025\000\025\000\025\000\000\000\015\000\025\000\025\000\016\000\
\016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
\016\000\016\000\016\000\016\000\016\000\016\000\012\000\013\000\
\016\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
\010\000\000\000\000\000\049\000\010\000\010\000\010\000\010\000\
\050\000\010\000\010\000\021\000\022\000\023\000\024\000\025\000\
\026\000\027\000\028\000\029\000\030\000\031\000\032\000\033\000\
\034\000\035\000\018\000\036\000\000\000\018\000\000\000\000\000\
\018\000\018\000\018\000\018\000\018\000\018\000\018\000\000\000\
\018\000\018\000\003\000\004\000\000\000\005\000\006\000\000\000\
\007\000\008\000\000\000\012\000\013\000\018\000"

let yycheck = "\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\001\000\017\001\
\018\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\006\001\012\001\013\001\014\001\015\001\
\003\001\017\001\018\001\001\001\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\009\001\010\001\011\001\017\001\013\001\
\014\001\015\001\011\001\017\001\018\001\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\012\001\015\001\002\001\017\001\018\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\014\001\014\001\015\001\013\001\017\001\
\018\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\018\001\015\001\
\014\001\017\001\018\001\001\001\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\018\001\039\000\011\001\012\001\013\001\
\014\001\015\001\007\000\017\001\018\001\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\008\001\009\001\255\255\011\001\
\012\001\013\001\014\001\255\255\010\001\017\001\018\001\001\001\
\002\001\015\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\009\001\010\001\
\018\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\255\255\255\255\010\001\012\001\013\001\014\001\015\001\
\015\001\017\001\018\001\001\001\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\014\001\015\001\003\001\017\001\255\255\006\001\255\255\255\255\
\009\001\010\001\011\001\012\001\013\001\014\001\015\001\255\255\
\017\001\018\001\001\001\002\001\255\255\004\001\005\001\255\255\
\007\001\008\001\255\255\009\001\010\001\011\001"

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
  SAWARU\000\
  EOL\000\
  "

let yynames_block = "\
  HOUKOU\000\
  ITEM\000\
  TADOUSHI\000\
  TANDOKUDOUSHI\000\
  IRO\000\
  MEISHISETSUZOKU\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'bun) in
    Obj.repr(
# 46 "parser.mly"
        ( _1 )
# 193 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bun) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'anys) in
    Obj.repr(
# 48 "parser.mly"
        ( raise (Error ("「" ^ _2 ^ "」？")) )
# 201 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 52 "parser.mly"
        ( Idousuru (_1) )
# 209 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 54 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "に」どうする？")) )
# 217 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "」にどうする？")) )
# 224 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 58 "parser.mly"
        ( Idousuru ("入") )
# 231 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 60 "parser.mly"
        ( raise (Error ("「家に」どうする？")) )
# 238 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
        ( Idousuru ("出") )
# 244 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
        ( raise (Error ("「家から」どうする？")) )
# 250 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
        ( raise (Error ("「家」にどうする？")) )
# 256 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
        ( Idousuru ("出") )
# 262 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "parser.mly"
        ( raise (Error ("「部屋から」どうする？")) )
# 268 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "parser.mly"
        ( raise (Error ("「部屋」にどうする？")) )
# 274 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'mokutekigo) in
    Obj.repr(
# 74 "parser.mly"
        ( Sawaru (_1) )
# 281 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'mokutekigo) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "parser.mly"
        ( Tadoushi (_1, _2) )
# 289 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'mokutekigo) in
    Obj.repr(
# 78 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "を」どうする？")) )
# 296 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 80 "parser.mly"
        ( Tandokudoushi (_1) )
# 303 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "parser.mly"
        ( raise (Error ("え？")) )
# 309 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "parser.mly"
        ( () (* 何も返す必要がない *) )
# 315 "parser.ml"
               : 'houkoujoshi))
; (fun __caml_parser_env ->
    Obj.repr(
# 88 "parser.mly"
        ( () (* 何も返す必要がない *) )
# 321 "parser.ml"
               : 'houkoujoshi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 92 "parser.mly"
        ( _1 )
# 328 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 94 "parser.mly"
        ( _1 )
# 335 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 96 "parser.mly"
        ( _1^_2^_3 )
# 344 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 98 "parser.mly"
        ( _1^_2^_3 )
# 353 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 100 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "」をどうする？")) )
# 360 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'any) in
    Obj.repr(
# 103 "parser.mly"
                ( _1 )
# 367 "parser.ml"
               : 'anys))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'any) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'anys) in
    Obj.repr(
# 104 "parser.mly"
                ( _1 ^ _2 )
# 375 "parser.ml"
               : 'anys))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 107 "parser.mly"
                ( _1 (* 返す文字列は、エラーメッセージ用 *) )
# 382 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 108 "parser.mly"
                ( "家" )
# 388 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 109 "parser.mly"
                ( "部屋" )
# 394 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 110 "parser.mly"
                ( "へ" )
# 400 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 111 "parser.mly"
                ( "に" )
# 406 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 112 "parser.mly"
                  ( _1 )
# 413 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 113 "parser.mly"
                ( "から" )
# 419 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 114 "parser.mly"
                ( "進む" )
# 425 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 115 "parser.mly"
                ( "入る" )
# 431 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 116 "parser.mly"
                ( "出る" )
# 437 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 117 "parser.mly"
                ( "触る" )
# 443 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 118 "parser.mly"
                ( "を" )
# 449 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 119 "parser.mly"
                ( _1 )
# 456 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 120 "parser.mly"
                ( _1 )
# 463 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 121 "parser.mly"
                ( _1 )
# 470 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 122 "parser.mly"
                ( _1 )
# 477 "parser.ml"
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
