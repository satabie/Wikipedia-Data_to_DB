# Store wikipedia_featured_articles data in DB using postgresql

前提：postgresqlの環境構築の環境構築を終わらせておくこと．

# requirements
requirements.txtを見よ。必要に応じて`pip install -r requirements.txt`しよう


# Usage
```bash
$ git clone https://github.com/satabie/wikipedia-Data_to_DB.git &&
cd wikipedia-Data_to_DB
```

[wikipedia:featured articles](https://en.wikipedia.org/wiki/Wikipedia:Featured_articles)へアクセスし，ソースの内容をwiki_feature_articles.txtへコピペする


簡単な前処理をするスクリプト。必要に応じてbashに書き換えるなどしてください。
```
./remove_quot.fish
```


extractFA.pyを実行し，TopicList.txtおよびTopicフォルダとそのコンテンツを作成．
```bash
$ python extractFA.py
```
データベースにデータを追加する。
```bash
$ python add_data_to_DB.py
```

# DBの様子
成功すると以下の画像のようになる（画像はpgadmine4).

DBのカラムであるen_docvec, ja_docvecが空になっているが，これに対しては別途プログラムを作成する．
![スクリーンショット (2)](https://user-images.githubusercontent.com/74339912/173758660-088ceef7-e3c2-4fd0-937f-d6aa8f384c1c.png)
