
#!/usr/bin/env bash

q="'"
qq='"'
# ファイル名をコマンドライン引数として受け取る
file="wikipedia_featured_articles.txt"

# ファイルから文字列を読み込む
sed -i "s/$q//g" $file
sed -i "s/$qq//g" $file





