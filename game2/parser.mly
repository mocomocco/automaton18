%{
(* 補助的な変数、関数、型などの定義 *)
open Syntax
%}

/* 以降、どういうわけかコメントが C 式になることに注意 */
/* トークンの定義 */
%token <string> HOUKOU ITEM TADOUSHI TANDOKUDOUSHI IRO MEISHISETSUZOKU
/* これらには string 型の値が伴うことを示している */
%token IE HEYA HE NI KARA SUSUMU HAIRU DERU WO MIRU SAWARU
%token EOL
/* EOL = End Of Line 入力の終わり */

/* 非終端記号の型をここで宣言する */
%type <Syntax.t> start

/* 開始記号の定義 */
%start start

/* 入力の文法：

文         = 方向 方向助詞 "進む"
	   | "家" 方向助詞 "入る"
	   | "家" "から" "出る"
	   | "部屋" "から" "出る"
     |目的語 "に" "触る"
           | 目的語 他動詞
           | 単独動詞
方向       = "東" | "西" | "南" | "北"
方向助詞   = "へ" | "に"
格助詞     ="に"
目的語     = アイテム "を"
アイテム   = "鍵" | "ドア" | "サボテン" | "宝" |色のアイテム
他動詞     = "取る" | "置く" | "ノックする" | "開く" | "閉じる"
単独動詞   = "終了する" |"ステータス"

出力：Syntax.t 型の値

*/

/* 以下の %% は省略不可。それ以降に文法規則を書く */
%%

start:
| bun EOL
        { $1 }
| bun anys EOL
        { raise (Error ("「" ^ $2 ^ "」？")) }

bun:
| HOUKOU houkoujoshi SUSUMU
        { Idousuru ($1) }
| HOUKOU houkoujoshi
        { raise (Error ("「" ^ $1 ^ "に」どうする？")) }
| HOUKOU
        { raise (Error ("「" ^ $1 ^ "」にどうする？")) }
| IE houkoujoshi HAIRU
        { Idousuru ("入") }
| IE houkoujoshi
        { raise (Error ("「家に」どうする？")) }
| IE KARA DERU
        { Idousuru ("出") }
| IE KARA
        { raise (Error ("「家から」どうする？")) }
| IE
        { raise (Error ("「家」にどうする？")) }
| HEYA KARA DERU
        { Idousuru ("出") }
| HEYA KARA
        { raise (Error ("「部屋から」どうする？")) }
| HEYA
        { raise (Error ("「部屋」にどうする？")) }
| mokutekigo SAWARU
        { Sawaru ($1) }
| mokutekigo TADOUSHI
        { Tadoushi ($1, $2) }
| mokutekigo
        { raise (Error ("「" ^ $1 ^ "を」どうする？")) }
| TANDOKUDOUSHI
        { Tandokudoushi ($1) }
|
        { raise (Error ("え？")) }

houkoujoshi:
| HE
        { () (* 何も返す必要がない *) }
| NI
        { () (* 何も返す必要がない *) }

mokutekigo:
| ITEM NI
        { $1 }
| ITEM WO
        { $1 }
| IRO MEISHISETSUZOKU ITEM NI
        { $1^$2^$3 }
| IRO MEISHISETSUZOKU ITEM WO
        { $1^$2^$3 }
| ITEM
        { raise (Error ("「" ^ $1 ^ "」をどうする？")) }

anys:
| any           { $1 }
| any anys      { $1 ^ $2 }

any:
| HOUKOU        { $1 (* 返す文字列は、エラーメッセージ用 *) }
| IE            { "家" }
| HEYA          { "部屋" }
| HE            { "へ" }
| NI            { "に" }
| MEISHISETSUZOKU { $1 }
| KARA          { "から" }
| SUSUMU        { "進む" }
| HAIRU         { "入る" }
| DERU          { "出る" }
| SAWARU        { "触る" }
| WO            { "を" }
| ITEM          { $1 }
| IRO           { $1 }
| TADOUSHI      { $1 }
| TANDOKUDOUSHI { $1 }
