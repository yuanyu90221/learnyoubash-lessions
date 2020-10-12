#!/usr/bin/env bash
outputs=(I am ${@:2:2} and ${@:4:1})
echo ${outputs[*]}
