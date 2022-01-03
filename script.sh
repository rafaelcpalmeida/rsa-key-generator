#!/bin/bash
set -euo pipefail

mkdir -p ".keys-pairs/rsa-key" && cd "$_"

PRIVATE_PEM="private.pem"
PUBLIC_PEM="public.pem"

ssh-keygen -t rsa -b "$1" -m PEM -f "$PRIVATE_PEM" -q -N ""
openssl rsa -in "$PRIVATE_PEM" -pubout -outform PEM -out "$PUBLIC_PEM" &>/dev/null

printf "<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;****************<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*  Public PEM  *<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;****************<br /><br />%s<br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*****************<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*  Private PEM  *<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*****************<br /><br />%s<br /><br /><br />" "$(cat "$PUBLIC_PEM")" "$(cat "$PRIVATE_PEM")"

cd - &>/dev/null

rm -rf ".keys-pairs/rsa-key"
