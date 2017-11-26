#! /bin/sh

nbAleaDizaine=$((`< /dev/urandom tr -dc [:digit:]| head -c1`*10))
nbAleaUnite=$((`< /dev/urandom tr -dc [:digit:]| head -c1`+1))
nbAleaFinal=$(($nbAleaDizaine+$nbAleaUnite))
echo "$nbAleaFinal"
