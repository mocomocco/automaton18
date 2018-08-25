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

val start :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Syntax.t
