type token =
  | LPAREN
  | RPAREN
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | POWER
  | MOD
  | NUMBER of (int)
  | EOF

val expr :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Syntax.t
