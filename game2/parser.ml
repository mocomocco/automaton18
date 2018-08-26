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
  | SAWARU
  | EOL

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
(* 補助的な変数、関数、型などの定義 *)
open Syntax
# 25 "parser.ml"
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
  271 (* SAWARU *);
  272 (* EOL *);
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
\002\000\002\000\004\000\004\000\005\000\005\000\005\000\003\000\
\003\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\006\000\006\000\006\000\006\000\006\000\006\000\006\000\000\000"

let yylen = "\002\000\
\002\000\003\000\003\000\002\000\001\000\003\000\002\000\003\000\
\002\000\001\000\003\000\002\000\001\000\002\000\002\000\001\000\
\001\000\000\000\001\000\001\000\002\000\002\000\001\000\001\000\
\002\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\017\000\000\000\000\000\040\000\
\000\000\000\000\019\000\020\000\000\000\021\000\022\000\000\000\
\000\000\000\000\026\000\037\000\038\000\039\000\027\000\028\000\
\029\000\030\000\031\000\032\000\033\000\034\000\036\000\035\000\
\001\000\000\000\000\000\015\000\014\000\003\000\008\000\006\000\
\011\000\002\000\025\000"

let yydgoto = "\002\000\
\008\000\009\000\034\000\013\000\010\000\035\000"

let yysindex = "\012\000\
\186\255\000\000\134\255\117\255\000\000\187\255\036\255\000\000\
\255\254\026\255\000\000\000\000\014\255\000\000\000\000\049\255\
\048\255\062\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\061\255\159\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\170\255\000\000\095\255\111\255\000\000\143\255\015\255\000\000\
\000\000\127\255\000\000\000\000\031\255\000\000\000\000\047\255\
\063\255\079\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\075\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\058\000\096\000\000\000\000\000"

let yytablesize = 196
let yytable = "\019\000\
\020\000\021\000\022\000\023\000\024\000\025\000\026\000\027\000\
\028\000\029\000\030\000\031\000\001\000\032\000\033\000\013\000\
\013\000\013\000\013\000\013\000\013\000\013\000\013\000\038\000\
\013\000\013\000\013\000\013\000\036\000\013\000\013\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\037\000\004\000\004\000\004\000\018\000\004\000\004\000\009\000\
\009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
\009\000\009\000\040\000\009\000\039\000\009\000\009\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\041\000\007\000\007\000\042\000\007\000\007\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\012\000\012\000\024\000\012\000\043\000\012\000\012\000\005\000\
\005\000\005\000\005\000\005\000\005\000\017\000\000\000\005\000\
\005\000\005\000\005\000\005\000\000\000\005\000\005\000\023\000\
\023\000\023\000\023\000\023\000\023\000\023\000\000\000\023\000\
\023\000\023\000\023\000\000\000\014\000\023\000\023\000\016\000\
\016\000\015\000\016\000\016\000\016\000\016\000\016\000\016\000\
\016\000\016\000\016\000\016\000\011\000\012\000\016\000\010\000\
\010\000\010\000\010\000\010\000\010\000\000\000\000\000\000\000\
\010\000\010\000\010\000\010\000\000\000\010\000\010\000\019\000\
\020\000\021\000\022\000\023\000\024\000\025\000\026\000\027\000\
\028\000\029\000\030\000\031\000\018\000\032\000\000\000\000\000\
\018\000\018\000\018\000\018\000\018\000\018\000\018\000\000\000\
\018\000\018\000\003\000\004\000\000\000\005\000\006\000\007\000\
\000\000\011\000\012\000\016\000"

let yycheck = "\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\001\000\015\001\016\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\010\001\
\010\001\011\001\012\001\013\001\003\001\015\001\016\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\015\001\011\001\012\001\013\001\009\001\015\001\016\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\011\001\013\001\012\001\015\001\016\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\012\001\012\001\013\001\016\001\015\001\016\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\016\001\013\001\035\000\015\001\016\001\001\001\
\002\001\003\001\004\001\005\001\006\001\006\000\255\255\009\001\
\010\001\011\001\012\001\013\001\255\255\015\001\016\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\255\255\009\001\
\010\001\011\001\012\001\255\255\008\001\015\001\016\001\001\001\
\002\001\013\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\007\001\008\001\016\001\001\001\
\002\001\003\001\004\001\005\001\006\001\255\255\255\255\255\255\
\010\001\011\001\012\001\013\001\255\255\015\001\016\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\003\001\015\001\255\255\255\255\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\255\255\
\015\001\016\001\001\001\002\001\255\255\004\001\005\001\006\001\
\255\255\007\001\008\001\009\001"

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
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'bun) in
    Obj.repr(
# 46 "parser.mly"
        ( _1 )
# 176 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bun) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'anys) in
    Obj.repr(
# 48 "parser.mly"
        ( raise (Error ("「" ^ _2 ^ "」？")) )
# 184 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 52 "parser.mly"
        ( Idousuru (_1) )
# 192 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 54 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "に」どうする？")) )
# 200 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "」にどうする？")) )
# 207 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 58 "parser.mly"
        ( Idousuru ("入") )
# 214 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 60 "parser.mly"
        ( raise (Error ("「家に」どうする？")) )
# 221 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
        ( Idousuru ("出") )
# 227 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
        ( raise (Error ("「家から」どうする？")) )
# 233 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
        ( raise (Error ("「家」にどうする？")) )
# 239 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
        ( Idousuru ("出") )
# 245 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "parser.mly"
        ( raise (Error ("「部屋から」どうする？")) )
# 251 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "parser.mly"
        ( raise (Error ("「部屋」にどうする？")) )
# 257 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'mokutekigo) in
    Obj.repr(
# 74 "parser.mly"
        ( Sawaru (_1) )
# 264 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'mokutekigo) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "parser.mly"
        ( Tadoushi (_1, _2) )
# 272 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'mokutekigo) in
    Obj.repr(
# 78 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "を」どうする？")) )
# 279 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 80 "parser.mly"
        ( Tandokudoushi (_1) )
# 286 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "parser.mly"
        ( raise (Error ("え？")) )
# 292 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "parser.mly"
        ( () (* 何も返す必要がない *) )
# 298 "parser.ml"
               : 'houkoujoshi))
; (fun __caml_parser_env ->
    Obj.repr(
# 88 "parser.mly"
        ( () (* 何も返す必要がない *) )
# 304 "parser.ml"
               : 'houkoujoshi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 92 "parser.mly"
        ( _1 )
# 311 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 94 "parser.mly"
        ( _1 )
# 318 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 96 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "」をどうする？")) )
# 325 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'any) in
    Obj.repr(
# 99 "parser.mly"
                ( _1 )
# 332 "parser.ml"
               : 'anys))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'any) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'anys) in
    Obj.repr(
# 100 "parser.mly"
                ( _1 ^ _2 )
# 340 "parser.ml"
               : 'anys))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 103 "parser.mly"
                ( _1 (* 返す文字列は、エラーメッセージ用 *) )
# 347 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 104 "parser.mly"
                ( "家" )
# 353 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 105 "parser.mly"
                ( "部屋" )
# 359 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "parser.mly"
                ( "へ" )
# 365 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 107 "parser.mly"
                ( "に" )
# 371 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 108 "parser.mly"
                ( "から" )
# 377 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 109 "parser.mly"
                ( "進む" )
# 383 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 110 "parser.mly"
                ( "入る" )
# 389 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 111 "parser.mly"
                ( "出る" )
# 395 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 112 "parser.mly"
                ( "触る" )
# 401 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 113 "parser.mly"
                ( "を" )
# 407 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 114 "parser.mly"
                ( _1 )
# 414 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 115 "parser.mly"
                ( _1 )
# 421 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 116 "parser.mly"
                ( _1 )
# 428 "parser.ml"
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
