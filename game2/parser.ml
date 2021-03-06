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
  | HOKORA
  | KUROIHEYA
  | SHIROIHEYA
  | EOL

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
(* 補助的な変数、関数、型などの定義 *)
open Syntax
# 30 "parser.ml"
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
  274 (* HOKORA *);
  275 (* KUROIHEYA *);
  276 (* SHIROIHEYA *);
  277 (* EOL *);
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
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\004\000\004\000\005\000\005\000\005\000\005\000\005\000\
\003\000\003\000\006\000\006\000\006\000\006\000\006\000\006\000\
\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\006\000\006\000\000\000"

let yylen = "\002\000\
\002\000\003\000\003\000\002\000\001\000\003\000\002\000\003\000\
\002\000\001\000\003\000\002\000\003\000\002\000\001\000\003\000\
\002\000\003\000\002\000\001\000\003\000\002\000\003\000\002\000\
\001\000\003\000\002\000\001\000\002\000\002\000\001\000\001\000\
\000\000\001\000\001\000\002\000\002\000\004\000\004\000\001\000\
\001\000\002\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\032\000\000\000\000\000\000\000\
\000\000\000\000\000\000\059\000\000\000\000\000\034\000\035\000\
\000\000\036\000\037\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\043\000\055\000\057\000\
\058\000\056\000\048\000\044\000\045\000\046\000\047\000\049\000\
\050\000\051\000\052\000\054\000\053\000\001\000\000\000\000\000\
\030\000\029\000\003\000\000\000\008\000\006\000\026\000\023\000\
\021\000\013\000\011\000\018\000\016\000\002\000\042\000\038\000\
\039\000"

let yydgoto = "\002\000\
\012\000\013\000\047\000\017\000\014\000\048\000"

let yysindex = "\014\000\
\136\000\000\000\009\255\066\255\000\000\047\255\050\255\046\255\
\113\255\134\255\155\255\000\000\255\254\014\255\000\000\000\000\
\068\255\000\000\000\000\076\255\085\255\069\255\088\255\089\255\
\105\255\106\255\126\255\127\255\149\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\138\255\175\000\
\000\000\000\000\000\000\086\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yyrindex = "\000\000\
\154\000\000\000\251\255\016\000\000\000\000\000\055\000\020\255\
\076\000\097\000\118\000\000\000\000\000\034\000\000\000\000\000\
\041\255\000\000\000\000\000\000\062\255\083\255\104\255\125\255\
\146\255\167\255\188\255\209\255\230\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\160\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\135\000\029\000\000\000\000\000"

let yytablesize = 448
let yytable = "\030\000\
\031\000\032\000\033\000\034\000\035\000\036\000\037\000\038\000\
\039\000\040\000\041\000\042\000\043\000\044\000\001\000\045\000\
\049\000\015\000\016\000\046\000\028\000\028\000\028\000\028\000\
\028\000\028\000\028\000\028\000\028\000\028\000\050\000\028\000\
\028\000\028\000\028\000\022\000\028\000\025\000\027\000\029\000\
\028\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\004\000\020\000\004\000\004\000\004\000\
\023\000\004\000\015\000\016\000\021\000\004\000\009\000\009\000\
\009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
\009\000\009\000\009\000\018\000\009\000\052\000\009\000\051\000\
\019\000\054\000\009\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\064\000\
\007\000\007\000\053\000\007\000\065\000\055\000\056\000\007\000\
\027\000\027\000\027\000\027\000\027\000\027\000\027\000\027\000\
\027\000\027\000\027\000\027\000\027\000\057\000\027\000\058\000\
\027\000\015\000\016\000\024\000\027\000\024\000\024\000\024\000\
\024\000\024\000\024\000\024\000\024\000\024\000\024\000\024\000\
\024\000\024\000\059\000\024\000\060\000\024\000\015\000\016\000\
\026\000\024\000\022\000\022\000\022\000\022\000\022\000\022\000\
\022\000\022\000\022\000\022\000\022\000\022\000\062\000\022\000\
\022\000\061\000\022\000\015\000\016\000\028\000\022\000\014\000\
\014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
\014\000\014\000\014\000\014\000\041\000\014\000\063\000\014\000\
\000\000\000\000\000\000\014\000\012\000\012\000\012\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\000\000\012\000\012\000\000\000\012\000\000\000\000\000\000\000\
\012\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
\019\000\019\000\019\000\019\000\019\000\019\000\000\000\019\000\
\000\000\019\000\000\000\000\000\000\000\019\000\017\000\017\000\
\017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
\017\000\017\000\000\000\017\000\017\000\000\000\017\000\000\000\
\000\000\000\000\017\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\000\000\000\000\005\000\005\000\005\000\
\005\000\005\000\000\000\005\000\000\000\000\000\000\000\005\000\
\040\000\040\000\040\000\040\000\040\000\040\000\040\000\040\000\
\040\000\000\000\040\000\040\000\040\000\040\000\000\000\000\000\
\040\000\000\000\031\000\031\000\040\000\031\000\031\000\031\000\
\031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
\031\000\000\000\000\000\000\000\000\000\000\000\031\000\010\000\
\010\000\010\000\010\000\010\000\010\000\010\000\010\000\000\000\
\000\000\000\000\010\000\010\000\010\000\010\000\000\000\010\000\
\000\000\000\000\000\000\010\000\025\000\025\000\025\000\025\000\
\025\000\025\000\025\000\025\000\000\000\000\000\000\000\025\000\
\025\000\025\000\025\000\000\000\025\000\000\000\000\000\000\000\
\025\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
\015\000\000\000\000\000\000\000\015\000\015\000\015\000\015\000\
\000\000\015\000\000\000\000\000\000\000\015\000\020\000\020\000\
\020\000\020\000\020\000\020\000\020\000\020\000\000\000\000\000\
\000\000\020\000\020\000\020\000\020\000\000\000\020\000\000\000\
\003\000\004\000\020\000\005\000\006\000\000\000\007\000\008\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\009\000\010\000\011\000\033\000\000\000\000\000\033\000\
\000\000\000\000\033\000\033\000\033\000\033\000\033\000\033\000\
\033\000\000\000\033\000\000\000\000\000\000\000\033\000\030\000\
\031\000\032\000\033\000\034\000\035\000\036\000\037\000\038\000\
\039\000\040\000\041\000\042\000\043\000\044\000\000\000\045\000"

let yycheck = "\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\001\000\017\001\
\003\001\009\001\010\001\021\001\001\001\002\001\003\001\004\001\
\005\001\006\001\007\001\008\001\009\001\010\001\017\001\012\001\
\013\001\014\001\015\001\007\000\017\001\009\000\010\000\011\000\
\021\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\006\001\013\001\014\001\015\001\
\011\001\017\001\009\001\010\001\011\001\021\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\010\001\015\001\002\001\017\001\012\001\
\015\001\013\001\021\001\001\001\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\010\001\
\014\001\015\001\014\001\017\001\015\001\014\001\014\001\021\001\
\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\013\001\015\001\014\001\
\017\001\009\001\010\001\011\001\021\001\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\013\001\015\001\014\001\017\001\009\001\010\001\
\011\001\021\001\001\001\002\001\003\001\004\001\005\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\021\001\014\001\
\015\001\013\001\017\001\009\001\010\001\011\001\021\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\021\001\015\001\048\000\017\001\
\255\255\255\255\255\255\021\001\001\001\002\001\003\001\004\001\
\005\001\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\255\255\014\001\015\001\255\255\017\001\255\255\255\255\255\255\
\021\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\255\255\015\001\
\255\255\017\001\255\255\255\255\255\255\021\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\255\255\014\001\015\001\255\255\017\001\255\255\
\255\255\255\255\021\001\001\001\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\255\255\255\255\011\001\012\001\013\001\
\014\001\015\001\255\255\017\001\255\255\255\255\255\255\021\001\
\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\
\009\001\255\255\011\001\012\001\013\001\014\001\255\255\255\255\
\017\001\255\255\001\001\002\001\021\001\004\001\005\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\255\255\255\255\255\255\255\255\255\255\021\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\255\255\
\255\255\255\255\012\001\013\001\014\001\015\001\255\255\017\001\
\255\255\255\255\255\255\021\001\001\001\002\001\003\001\004\001\
\005\001\006\001\007\001\008\001\255\255\255\255\255\255\012\001\
\013\001\014\001\015\001\255\255\017\001\255\255\255\255\255\255\
\021\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\255\255\255\255\255\255\012\001\013\001\014\001\015\001\
\255\255\017\001\255\255\255\255\255\255\021\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\255\255\255\255\
\255\255\012\001\013\001\014\001\015\001\255\255\017\001\255\255\
\001\001\002\001\021\001\004\001\005\001\255\255\007\001\008\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\018\001\019\001\020\001\003\001\255\255\255\255\006\001\
\255\255\255\255\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\255\255\017\001\255\255\255\255\255\255\021\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\255\255\017\001"

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
  HOKORA\000\
  KUROIHEYA\000\
  SHIROIHEYA\000\
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
# 268 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bun) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'anys) in
    Obj.repr(
# 48 "parser.mly"
        ( raise (Error ("「" ^ _2 ^ "」？")) )
# 276 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 52 "parser.mly"
        ( Idousuru (_1) )
# 284 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 54 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "に」どうする？")) )
# 292 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "」にどうする？")) )
# 299 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 58 "parser.mly"
        ( Idousuru ("入") )
# 306 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 60 "parser.mly"
        ( raise (Error ("「家に」どうする？")) )
# 313 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
        ( Idousuru ("出") )
# 319 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
        ( raise (Error ("「家から」どうする？")) )
# 325 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
        ( raise (Error ("「家」にどうする？")) )
# 331 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 68 "parser.mly"
        ( Idousuru ("入") )
# 338 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 70 "parser.mly"
        ( raise (Error ("「黒い部屋に」どうする？")) )
# 345 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "parser.mly"
        ( raise (Error ("黒い部屋から出ることはできない")) )
# 351 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 74 "parser.mly"
        ( raise (Error ("「黒い部屋から」どうする？")) )
# 357 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "parser.mly"
        ( raise (Error ("「黒い部屋」にどうする？")) )
# 363 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 78 "parser.mly"
        ( raise (Error ("白い部屋に入ることはできない")) )
# 370 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 80 "parser.mly"
        ( raise (Error ("「黒い部屋に」どうする？")) )
# 377 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "parser.mly"
        ( Idousuru ("出") )
# 383 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 84 "parser.mly"
        ( raise (Error ("「白い部屋から」どうする？")) )
# 389 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "parser.mly"
        ( raise (Error ("「白い部屋」にどうする？")) )
# 395 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'houkoujoshi) in
    Obj.repr(
# 88 "parser.mly"
        ( Idousuru ("入") )
# 402 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'houkoujoshi) in
    Obj.repr(
# 90 "parser.mly"
        ( raise (Error ("「祠に」どうする？")) )
# 409 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 92 "parser.mly"
        ( Idousuru ("出") )
# 415 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 94 "parser.mly"
        ( raise (Error ("「祠から」どうする？")) )
# 421 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 96 "parser.mly"
        ( raise (Error ("「祠」にどうする？")) )
# 427 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 98 "parser.mly"
        ( Idousuru ("出") )
# 433 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 100 "parser.mly"
        ( raise (Error ("「部屋から」どうする？")) )
# 439 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "parser.mly"
        ( raise (Error ("「部屋」にどうする？")) )
# 445 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'mokutekigo) in
    Obj.repr(
# 104 "parser.mly"
        ( Sawaru (_1) )
# 452 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'mokutekigo) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 106 "parser.mly"
        ( Tadoushi (_1, _2) )
# 460 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'mokutekigo) in
    Obj.repr(
# 108 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "を」どうする？")) )
# 467 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 110 "parser.mly"
        ( Tandokudoushi (_1) )
# 474 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 112 "parser.mly"
        ( raise (Error ("え？")) )
# 480 "parser.ml"
               : 'bun))
; (fun __caml_parser_env ->
    Obj.repr(
# 116 "parser.mly"
        ( () (* 何も返す必要がない *) )
# 486 "parser.ml"
               : 'houkoujoshi))
; (fun __caml_parser_env ->
    Obj.repr(
# 118 "parser.mly"
        ( () (* 何も返す必要がない *) )
# 492 "parser.ml"
               : 'houkoujoshi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 122 "parser.mly"
        ( _1 )
# 499 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 124 "parser.mly"
        ( _1 )
# 506 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 126 "parser.mly"
        ( _1^_2^_3 )
# 515 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 128 "parser.mly"
        ( _1^_2^_3 )
# 524 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 130 "parser.mly"
        ( raise (Error ("「" ^ _1 ^ "」をどうする？")) )
# 531 "parser.ml"
               : 'mokutekigo))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'any) in
    Obj.repr(
# 133 "parser.mly"
                ( _1 )
# 538 "parser.ml"
               : 'anys))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'any) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'anys) in
    Obj.repr(
# 134 "parser.mly"
                ( _1 ^ _2 )
# 546 "parser.ml"
               : 'anys))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 137 "parser.mly"
                ( _1 (* 返す文字列は、エラーメッセージ用 *) )
# 553 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 138 "parser.mly"
                ( "家" )
# 559 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 139 "parser.mly"
                ( "部屋" )
# 565 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 140 "parser.mly"
                ( "へ" )
# 571 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 141 "parser.mly"
                ( "に" )
# 577 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 142 "parser.mly"
                  ( _1 )
# 584 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 143 "parser.mly"
                ( "から" )
# 590 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 144 "parser.mly"
                ( "進む" )
# 596 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 145 "parser.mly"
                ( "入る" )
# 602 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 146 "parser.mly"
                ( "出る" )
# 608 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 147 "parser.mly"
                ( "触る" )
# 614 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    Obj.repr(
# 148 "parser.mly"
                ( "を" )
# 620 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 149 "parser.mly"
                ( _1 )
# 627 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 150 "parser.mly"
                ( _1 )
# 634 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 151 "parser.mly"
                ( _1 )
# 641 "parser.ml"
               : 'any))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 152 "parser.mly"
                ( _1 )
# 648 "parser.ml"
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
