#!/bin/bash
echo 'パスワードマネージャーへようこそ！'
echo '設定したパスフレーズを入力してください'
#パスフレーズの読み込み
read passphrase

while true
do

    echo -n '次の選択肢から入力してください(Add Password/Get Password/Exit):'
    read action
    echo

    if [ "$action" = "Add Password" ]; then
        source Addpassword.sh
    elif [ "$action" = "Get Password" ]; then
        source Getpassword.sh
    elif [ "$action" = "Exit" ]; then
        echo 'Thank you!'
        break
    else
        echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
        echo
    fi

done