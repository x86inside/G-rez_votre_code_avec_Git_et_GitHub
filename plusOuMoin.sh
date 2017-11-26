#! /bin/sh
reponce=0
nbAleaDizaine=$((`< /dev/urandom tr -dc [:digit:]| head -c1`*10))
nbAleaUnite=$((`< /dev/urandom tr -dc [:digit:]| head -c1`+1))
nbAleaFinal=$(($nbAleaDizaine+$nbAleaUnite))

echo "Veuillez saisir un nombre entre 1 et 100"
read reponce
if [ -z $(echo "$reponce"|grep -e "^[0-9]\{1,3\}$") ] || [ $reponce -gt 100 ]|| [ $reponce -le 0 ];then
	echo "Ce n'est pas  un nombre compris entre 1 et 100"
	echo "Veuillez saisir un nombre entre 1 et 100"
	reponce=0
fi
