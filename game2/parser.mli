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

val start :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Syntax.t
