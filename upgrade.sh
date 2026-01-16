
#!/usr/bin/env bash
# upgrade.sh

set -e          # 任一命令出错立即退出
DIR="$(pwd)"    # 当前目录

go get all
go mod tidy

cd $DIR/api
go get all
go mod tidy

cd $DIR/pagination
go get all
go mod tidy

cd $DIR/entgo
go get all
go mod tidy
