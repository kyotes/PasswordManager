#!/bin/bash

echo 'パスワードマネージャーへようこそ！'
source Decryption.sh

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

#入力したパスフレーズを用いて、パスワードを暗号化
gpg --passphrase $passphrase --batch --yes -c pass.txt
#一時ファイルの削除
rm pass.txt