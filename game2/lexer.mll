{
(* vim: set syntax=ocaml: *)
(* 補助的な変数、関数、型などの定義 *)
open Parser
}

(* 正規表現の略記 *)
let space = [' ' '\t']
let digit = ['0'-'9']
let lower = ['a'-'z']
let upper = ['A'-'Z']
let alpha = lower | upper
(* let zenkaku1 = ['\161'-'\254'] *)
              (* 0xA1 - 0xFE, EUC の１文字目 *)
let zenkaku1 = ['\224'-'\239']
              (* 0xE0 - 0xEF, UTF-8 の３バイト文字の１文字目 *)
let zenkaku = zenkaku1 _ _

rule token = parse
| "東" | "ひがし" | "ヒガシ"
	{ HOUKOU ("東") }
| "西" | "にし" | "ニシ"
	{ HOUKOU ("西") }
| "南" | "みなみ" | "ミナミ"
	{ HOUKOU ("南") }
| "北" | "きた" | "キタ"
	{ HOUKOU ("北") }
| "家" | "いえ" | "イエ"
	{ IE }
| "部屋" | "へや" | "ヘヤ"
	{ HEYA }
| "へ" | "ヘ"
	{ HE }
| "に" | "ニ"
	{ NI }
| "から"
	{ KARA }
| "進む" | "すすむ" | "ススム" | "行く" | "いく" | "イク" | "向かう" | "ムカウ" | "むかう"
	{ SUSUMU }
| "入る" | "はいる" | "ハイル"
	{ HAIRU }
| "触る" | "触れる" | "調べる" | "さわる" | "ふれる" | "しらべる"
	{ SAWARU }
| "出る" | "でる" | "デル"
	{ DERU }
| "を" | "ヲ"
	{ WO }
| "鍵" | "かぎ" | "カギ"
	{ ITEM ("鍵") }
| "ドア" | "扉" | "とびら"
	{ ITEM ("扉") }
| "サボテン"
	{ ITEM ("サボテン") }
| "宝" | "たから" | "タカラ"
	{ ITEM ("宝") }
| "小人の像" | "石像" | "小人" | "こびとのぞう"
	{ ITEM ("小人の像") }
| "取る" | "とる"
	{ TADOUSHI ("取る") }
| "置く" | "おく"
	{ TADOUSHI ("置く") }
| "開く" | "ひらく" | "開ける" | "あける"
	{ TADOUSHI ("開く") }
| "閉じる" | "とじる" | "閉める" | "しめる"
	{ TADOUSHI ("閉じる") }
| "ノックする"
	{ TADOUSHI ("ノックする") }
| "終了する" | "しゅうりょうする"
	{ TANDOKUDOUSHI ("終了する") }
| "アイテム一覧" | "アイテム一覧を見る" | "アイテムをみる"
	{ TANDOKUDOUSHI ("ステータス") }
| eof
	{ EOL }
| _
	{ (* 字句解析できなかった部分をエラーとして例外を起こす *)
	  let input = lexbuf.Lexing.lex_buffer in (* 入力文全体 *)
	  let pos = Lexing.lexeme_start lexbuf in (* マッチした先頭の位置 *)
	  let str = String.sub input pos (String.length input - pos) in
	  raise (Syntax.Error ("「" ^ str ^ "」？")) }
