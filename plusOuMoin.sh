#! /bin/sh

reponce=0

#nombre aléatoire fait avec 3 variables pour ne pas faire de ligne compliquée à relire si un jour je veux relire le programme
nbAlea=$((((`< /dev/urandom tr -dc [:digit:]| head -c1`*10))+((`< /dev/urandom tr -dc [:digit:]| head -c1`+1))))
echo "Veuillez saisir un nombre entre 1 et 100"
echo "pour trouver le nombre mystère, avec moins d'essais possibles"
#boucle du programme qui se répète temps que le nombre mystère n'a pas été trouvé
while [ $nbAleaFinal -ne $reponce ];do
	read reponce
	#boucle qui teste la validité du format de réponse
	if [ -z $(echo "$reponce"|grep -e "^[0-9]\{1,3\}$") ] || [ $reponce -gt 100 ];then
		echo "S’il vous plaît, veuillez saisir un nombre inférieur ou égal à 100"
		reponce=0
	else
	#vérifie si c'est plus grand ou plus petit par rapport au nombre mystère

		if [ $nbAleaFinal -gt $reponce ]; then
			echo "Le nombre que vous avez saisi est trop petit"
		fi

		if [ $nbAleaFinal -lt $reponce ]; then
			echo "Le nombre que vous avez saisi est trop grand"
		fi

	fi
done
 
echo "Super ! vous avez gagné"
unset reponce
unset nbAleaFinal
#fin du programmme
