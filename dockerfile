FROM golang:latest

# appディレクトリの作成
RUN mkdir /go/src/app
# ワーキングディレクトリの設定
WORKDIR /go/src/app
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/app

COPY ./main.go /go/src/app

COPY go.mod /go/src/app

RUN go mod tidy

