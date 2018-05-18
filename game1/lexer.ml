(* 認識するトークン（以下の文字列のいずれか）：
   東、西、南、北、家、部屋、へ、に、から、進む、入る、出る、を、鍵、
   ドア、サボテン、宝、取る、置く、開く、閉じる、ノックする、終了する *)

(* 字句解析用のテーブル *)
(* (状態番号, (ここまでで読み込めたトークン, [(次の文字, 次の状態)])) *)
let lexer_table = [
  (1, (None, [("東", 2); ("西", 3); ("南", 4); ("北", 5); ("家", 6);
              ("を", 7); ("鍵", 8); ("宝", 9); ("ひ", 10); ("に", 12);
              ("み", 13); ("き", 15); ("い", 16); ("か", 17); ("た", 19);
              ("部", 21); ("へ", 23); ("進", 24); ("す", 26); ("入", 62);
              ("出", 29); ("扉", 31); ("ド", 32); ("サ", 33); ("取", 37);
              ("と", 46); ("置", 39); ("お", 39); ("開", 41); ("閉", 43);
              ("と", 46); ("ノ", 47); ("終", 52); ("し", 56); ("行", 61);
             ]));
  (* 東 *) (2, (Some "東", []));
  (* 西 *) (3, (Some "西", []));
  (* 南 *) (4, (Some "南", []));
  (* 北 *) (5, (Some "北", []));
  (* 家 *) (6, (Some "家", []));
  (* を *) (7, (Some "を", []));
  (* 鍵 *) (8, (Some "鍵", []));
  (* 宝 *) (9, (Some "宝", []));
  (* ひ *) (10, (None, [("が", 11); ("ら", 41)]));
           (11, (None, [("し", 2)]));
  (* に *) (12, (Some "に", [("し", 3)]));
  (* み *) (13, (None, [("な", 14)]));
           (14, (None, [("み", 4)]));
  (* き *) (15, (None, [("た", 5)]));
  (* い *) (16, (None, [("え", 6); ("く", 25)]));
  (* か *) (17, (None, [("ぎ", 8); ("ら", 18)]));
           (18, (Some "から", []));
  (* た *) (19, (None, [("か", 20)]));
           (20, (None, [("ら", 9)]));
  (* 部 *) (21, (None, [("屋", 22)]));
           (22, (Some "部屋", []));
  (* へ *) (23, (Some "へ", [("や", 22)]));
  (* 進 *) (24, (None, [("む", 25)]));
           (25, (Some "進む", []));
  (* す *) (26, (None, [("す", 27)]));
           (27, (None, [("む", 25)]));
  (* 入 *) (62, (None, [("る", 28)]));
           (28, (Some "入る", []));
  (* 出 *) (29, (None, [("る", 30)]));
           (30, (Some "出る", []));
  (* 扉 *) (31, (Some "扉", []));
  (* ド *) (32, (None, [("ア", 31)]));
  (* サ *) (33, (None, [("ボ", 34)]));
           (34, (None, [("テ", 35)]));
           (35, (None, [("ン", 36)]));
           (36, (Some "サボテン", []));
  (* 取 *) (37, (None, [("る", 38)]));
           (38, (Some "取る", []));
  (* 置 *) (39, (None, [("く", 40)]));
           (40, (Some "置く", []));
  (* 開 *) (41, (None, [("く", 42)]));
           (42, (Some "開く", []));
  (* 閉 *) (43, (None, [("じ", 44)]));
           (44, (None, [("る", 45)]));
           (45, (Some "閉じる", []));
  (* と *) (46, (None, [("じ", 44); ("る", 38)]));
  (* ノ *) (47, (None, [("ッ", 48)]));
           (48, (None, [("ク", 49)]));
           (49, (None, [("す", 50)]));
           (50, (None, [("る", 51)]));
           (51, (Some "ノックする", []));
  (* 終 *) (52, (None, [("了", 53)]));
           (53, (None, [("す", 54)]));
           (54, (None, [("る", 55)]));
           (55, (Some "終了する", []));
  (* し *) (56, (None, [("ゅ", 57)]));
           (57, (None, [("う", 58)]));
           (58, (None, [("り", 59)]));
           (59, (None, [("ょ", 60)]));
           (60, (None, [("う", 53)]));
  (* 行 *) (61, (None, [("く", 25)]));
]

(* 字句解析中のエラー *)
exception Error of string

(* 入力終了を表す例外 *)
exception End_of_input

(* 全角文字のバイト数（EUC : 2, UTF8 : 3） *)
let zenkaku_length = 3

(* 目的：str を最初の全角文字と残りに分解する *)
(* 全角文字をこれ以上、読み込めなかったら例外 End_of_input を起こす *)
(* next_zenkaku_char : string -> string * string *)
let next_zenkaku_char str =
  if String.length str < zenkaku_length then raise End_of_input
  else (String.sub str 0 zenkaku_length,
          (* str の 0 文字目から zenkaku_length 文字分の文字列 *)
        String.sub str zenkaku_length (String.length str - zenkaku_length))
          (* zenkaku_length 文字目以降の文字列 *)

(* 目的：state から始めて str を読み込み、最初のトークンと残りの文字列を返す *)
(* トークンを何も読み込めなかったら例外 Not_found を起こす *)
(* loop : int -> string -> string * string *)
let rec loop state str =
  let (v, lst) = List.assoc state lexer_table in
  match v with
      None -> (* 現在の状態は最終状態ではない *)
        let (next, rest) = next_zenkaku_char str in
        let new_state = List.assoc next lst in (* 次の状態へ移る *)
            (* 次の状態がなかったら List.assoc が Not_found を起こす *)
        loop new_state rest
    | Some (s) -> (* 現在の状態は最終状態である *)
        (try (* さらに長いトークンがあるかを調べにいく *)
           let (next, rest) = next_zenkaku_char str in
           let new_state = List.assoc next lst in (* 次の状態へ移る *)
            (* 次の状態がなかったら List.assoc が Not_found を起こす *)
           loop new_state rest
         with Not_found | End_of_input ->
                (* これ以上、長いトークンの一部ではなかったら *)
                (s, str)) (* 現在のトークンを返す *)

(* true にすると読み込めたトークンを表示するようになる *)

let debug = ref false

(* 目的：字句解析して、トークンのリストを返す *)
(* f : string -> string list *)
let rec f str = try
    let (token, rest) = loop 1 str in
    if !debug then print_endline ("lexer:" ^ token);
    token :: f rest
  with End_of_input -> (* 最後まで読み込めた。f の再帰はここで停止する *)
         []
     | Not_found -> (* 字句解析できなかった部分をエラーとして返す *)
         raise (Error ("「" ^ str ^ "」？"))
