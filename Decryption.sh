#!/bin/bash

while true
do

    echo '設定したパスフレーズを入力してください'
    #パスフレーズの読み込み
    read passphrase
    #入力したパスフレーズを用いて、パスワードを一時ファイルに復号化する。
    #エラーを一時ファイルに保管する。
    gpg --passphrase $passphrase --batch --quiet --yes -d pass.txt.gpg > pass.txt 2> error.txt
    error=$(cat error.txt)
    #パスワードが一致しないとき
    if [ "$error" = "gpg: decryption failed: Bad session key" ]; then
        echo '誤ったパスフレーズです'
    elif [ "`echo $error | grep "No such file or directory"`" ]; then
        echo 'パスワードが保存されていません。パスワードを追加してください。'
        break
    else
        break
    fi

done

rm error.txt