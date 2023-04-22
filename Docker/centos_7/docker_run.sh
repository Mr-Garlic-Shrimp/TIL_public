#コンテナ実行したいときのコマンド。コンテナ内の/workがコンテナ実行時の./workにマウントされるように設定している。
# --rmオプションをつけているので、コンテナ環境からexitするとこのコンテナは削除され、再起動はできない。
# コンテナに乗り込みたいときは下記コマンドを都度

docker run -v ./work:/work --name centos7_test  -it --rm centos7-sysstat:10.1.5 /bin/bash
