#!/bin/bash

echo 'パスワードマネージャーへようこそ！'
echo '次の選択肢から入力してください(Add Password/Get Password/Exit):'

read key

if [ "$key" = "Add Password" ]; then
    echo pass
else
    echo error
fi