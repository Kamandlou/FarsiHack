#!/bin/bash

JSON_FILE="./aliases.json"

if ! command -v jq &>/dev/null; then
    echo "[!] کامند jq نصب نیست. لطفا نصبش کنید."
    echo "Ubuntu/Debian: sudo apt install jq"
    echo "macOS: brew install jq"
    exit 1
fi

while IFS="=" read -r key value; do
    alias "$key"="$value"
done < <(jq -r 'to_entries|map("\(.key)=\(.value)")|.[]' "$JSON_FILE")

echo "[*] توجه: alias ها اضافه شدند. برای اعمال دائمی، این اسکریپت را در bashrc یا zshrc اضافه کنید."
