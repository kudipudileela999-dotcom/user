#!/usr/bin/env bash

call_hello2() {
	local name=$1
	./hello_basic.sh "$name"
}
for student in "$@"; do
	call_hello2 "$student"
done
