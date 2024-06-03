#!/bin/bash

echo 'パスワードマネージャーへようこそ！'

echo 'サービス名を入力してください：'
read subname
echo 'サービス名：'$subname >> pass.txt
echo 'ユーザー名を入力してください：'
read username
echo 'ユーザー名：'$username >> pass.txt
echo 'パスワードを入力してください：'
read pass
echo 'パスワード：'$pass >> pass.txt

echo 'Thank you!'