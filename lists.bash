#!/usr/bin/env bash
$1 || echo 'The first parameter is false.'
$2 && $PWD
$3 && ls $PWD || echo 'Third parameter is false.'

