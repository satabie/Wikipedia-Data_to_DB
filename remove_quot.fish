#!/usr/bin/env fish

set q "'"
set qq '"'
# ファイル名をコマンドライン引数として受け取る
set file "wikipedia_featured_articles.txt"

# ファイルから文字列を読み込む
sed -i "s/$q//g" $file
sed -i "s/$qq//g" $file





