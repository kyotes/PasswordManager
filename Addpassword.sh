#!/bin/bash

echo -n 'サービス名を入力してください：'
read subname
echo 'サービス名：'$subname >> pass.txt
echo -n 'ユーザー名を入力してください：'
read username
echo 'ユーザー名：'$username >> pass.txt
echo -n 'パスワードを入力してください：'
read pass
echo 'パスワード：'$pass >> pass.txt

echo
echo 'パスワードの追加は成功しました。'