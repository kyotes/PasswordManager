#!/bin/bash

#入力したパスフレーズを用いて、パスワードを一時ファイルに複合化
gpg --passphrase $passphrase --batch --yes --quiet -d pass.txt.gpg > pass.txt

echo -n 'サービス名を入力してください：'
read subname
echo 'サービス名：'$subname >> pass.txt
echo -n 'ユーザー名を入力してください：'
read username
echo 'ユーザー名：'$username >> pass.txt
echo -n 'パスワードを入力してください：'
read pass
echo 'パスワード：'$pass >> pass.txt

#入力したパスフレーズを用いて、パスワードを暗号化
gpg --passphrase $passphrase --batch --yes -c pass.txt
#一時ファイルの削除
rm pass.txt

echo
echo 'パスワードの追加は成功しました。'