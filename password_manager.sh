#!/bin/bash
echo 'パスワードマネージャーへようこそ！'

while True
do

    echo -n '次の選択肢から入力してください(Add Password/Get Password/Exit):'
    read key
    echo

    if [ "$key" = "Add Password" ]; then
        source Addpassword.sh
    elif [ "$key" = "Get Password" ]; then
        source Getpassword.sh
    elif [ "$key" = "Exit" ]; then
        echo 'Thank you!'
        break
    else
        echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
        echo
    fi

done