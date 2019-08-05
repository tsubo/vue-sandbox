# Vue CLI3 の Docker 実行環境

## 前提条件

Docker の実行環境がインストールしてあること

- Docker Desktop for Window
- Docker Desktop for Mac

## インストール

PC 上で...

```
$ git clone https://github.com/tsubotak/vue-sandbox.git
$ cd vue-sandbox
```

## イメージの作成とコンテナの起動

```
$ docker-compose up -d

$ docker-compose ps
      Name                    Command              State           Ports
---------------------------------------------------------------------------------
vue-sandbox_app_1   docker-entrypoint.sh /bin/sh   Up      0.0.0.0:8080->8080/tcp
```

## コンテナへのログインと Vue CLI3 プロジェクトの作成

```
$ docker-compose exec app /bin/sh
# pwd
/app

# vue --version
3.9.3

# vue create vue-tutorial
...
```

### Vue の動作確認

```
# cd vue-tutorial
# yarn serve
...
```

- ホスト PC の ウェブブラウザから localhost:8080 にアクセス
- Vue の画面が表示されれば OK

### Vue プロジェクト上でのプログラミング

ホスト PC 上の `vue-sandbox/app/vue-tutorial` ディレクトリ内のファイルをエディタで編集すると、リアルタイムで変更内容がウェブブラウザに反映されます。

### コンテナの終了

コンテナ上で...

```
Ctrl + C で yarn serve を終了させる

コンテナからログアウトしてホスト PC に戻る
# exit
```

ホスト PC 上で...

```
$ docker-compose down

$ docker-compose ps
Name   Command   State   Ports
------------------------------
```
