#!/bin/bash

echo -n 'サービス名を入力してください：'
read name
echo

if grep -x -q 'サービス名：'$name pass.txt; then
    grep -x -A 2 'サービス名：'$name pass.txt
else
    echo 'そのサービスは登録されていません。'
fi

echo