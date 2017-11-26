#! /bin/sh
echo "`< /dev/urandom tr -dc [:digit:][:alpha:]| head -c8`"
