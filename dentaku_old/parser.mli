type token =
| LPAREN
| RPAREN
| MINUS
| PLUS
| TIMES
| POWER
| DIVIDE
| MOD
| NUMBER of (int)
| EOF

val expr :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Syntax.t
