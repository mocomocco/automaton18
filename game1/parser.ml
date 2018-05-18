(* 入力の文法：
                                        対応するプログラム
文         = 方向 方向助詞 "進む"       susumu
           | "家" 方向助詞 "入る"       ie
           | "家" "から" "出る"         ie
           | "部屋" "から" "出る"       heya
           | 目的語 他動詞              tadoushi
           | 単独動詞                   f
方向       = "東" | "西" | "南" | "北"
方向助詞   = "へ" | "に"
目的語     = アイテム "を"
アイテム   = "鍵" | "ドア" | "サボテン" | "宝"
他動詞     = "取る" | "置く" | "ノックする" | "開く" | "閉じる"
単独動詞   = "終了する"

出力：(動詞, 目的語) の組（いずれも文字列）

動詞            目的語

移動する        東|西|南|北|入|出
取る            鍵|宝|サボテン
置く            鍵|宝
開く            扉
閉じる          扉
ノックする      扉
終了する

*)

(* 構文解析中のエラー *)
exception Error of string

(* 目的：tokens にこれ以上、トークンが含まれないことを確認する *)
(* check_no_more_input : string list -> unit *)
let check_no_more_input tokens = match tokens with
    [] -> ()
  | first :: rest -> raise (Error ("「" ^ first ^ "」？"))

(* 目的：tokens の最初が token であることを確認し、残りのトークンを返す *)
(* 指定された token でなかったら、message とともに例外を起こす *)
(* check : string -> string list -> string -> string list *)
let check token tokens message = match tokens with
    [] -> raise (Error (message))
  | first :: rest ->
      if token = first then rest
      else raise (Error (message))

(* 目的：移動コマンドを処理する *)
(* susumu : string -> string list -> string * string *)
let susumu houkou tokens = match tokens with
    [] -> raise (Error ("「" ^ houkou ^ "」にどうする？"))
  | first :: rest ->
      (match first with
          "へ" | "に" ->
            let rest2 = check "進む" rest
                              ("「" ^ houkou ^ first ^  "」どうする？") in
            check_no_more_input rest2;
            ("移動する", houkou)
        | _ -> raise (Error ("「" ^ houkou ^ "」にどうする？")))

(* 目的：「家」を処理する *)
(* ie : string list -> string * string *)
let ie tokens = match tokens with
    [] -> raise (Error ("「家」にどうする？"))
  | first :: rest ->
      (match first with
          "へ" | "に" ->
            let rest2 = check "入る" rest
                              ("「家" ^ first ^  "」どうする？") in
            check_no_more_input rest2;
            ("移動する", "入")
        | "から" ->
            let rest2 = check "出る" rest
                              ("「家" ^ first ^  "」どうする？") in
            check_no_more_input rest2;
            ("移動する", "出")
        | _ -> raise (Error ("「家」にどうする？")))

(* 目的：「部屋」を処理する *)
(* heya : string list -> string * string *)
let heya tokens = match tokens with
    [] -> raise (Error ("「部屋」にどうする？"))
  | first :: rest ->
      (match first with
          "から" ->
            let rest2 = check "出る" rest
                              ("「部屋" ^ first ^  "」どうする？") in
            check_no_more_input rest2;
            ("移動する", "出")
        | _ -> raise (Error ("「部屋」にどうする？")))

(* 目的：他動詞を処理する *)
(* tadoushi : string -> string list -> string * string *)
let tadoushi mokutekigo tokens = match tokens with
    [] -> raise (Error ("「" ^ mokutekigo ^ "」をどうする？"))
  | first :: rest ->
      (match first with
          "取る" | "置く" | "ノックする" | "開く" | "閉じる" ->
            check_no_more_input rest;
            (first, mokutekigo)
        | _ -> raise (Error ("「" ^ mokutekigo ^ "」をどうする？")))

(* 目的：トークンのリストを構文解析して、(動詞, 目的語) を取り出す *)
(* f : string list -> string * string *)
let f tokens = match tokens with
    [] -> raise (Error "え？")
  | first :: rest ->
      (match first with
          "東" | "西" | "南" | "北" -> susumu first rest
        | "家" -> ie rest
        | "部屋" -> heya rest
        | "終了する" -> check_no_more_input rest;
                        ("終了する", "")
        | _ ->
            let rest2 = check "を" rest ("「" ^ first ^  "」をどうする？") in
            tadoushi first rest2)
