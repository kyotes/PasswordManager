#!/bin/bash

#入力したパスフレーズを用いて、パスワードを一時ファイルに複合化
gpg --passphrase $passphrase --batch --yes --quiet -d pass.txt.gpg > pass.txt

echo -n 'サービス名を入力してください：'
read name
echo

if grep -x -q 'サービス名：'$name pass.txt; then
    grep -x -A 2 'サービス名：'$name pass.txt
else
    echo 'そのサービスは登録されていません。'
fi

#一時ファイルの削除
rm pass.txt

echo