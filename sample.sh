#!/bin/bash
echo 'パスワードマネージャーへようこそ！'

while True
do

    echo '次の選択肢から入力してください(1/2/finish):'
    read key

    if [ "$key" = "1" ]; then
        echo 11
    elif [ "$key" = "2" ]; then
        echo 22
    elif [ "$key" = "finish" ]; then
        break
    else
        echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"

    fi
done