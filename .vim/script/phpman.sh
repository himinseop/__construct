#!/bin/sh 
FUNCTION=`echo $1 | sed -e 's/_/-/g'`
w3m -o confirm_qq=false http://kr.php.net/manual/en/function.${FUNCTION}.php
