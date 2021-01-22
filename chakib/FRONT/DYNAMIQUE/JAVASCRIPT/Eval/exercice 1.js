// Exercice 1 -
// Calcul du nombre de jeunes, de moyens et de vieux
// Il s'agit de dénombrer les personnes d'âge strictement inférieur à 20 ans, les personnes 
// d'âge strictement supérieur à 40 ans et celles dont l'âge est compris entre 20 ans et 40 ans (20 ans et 40 ans y compris).

// Le programme doit demander les âges successifs.

// Le comptage est arrêté dès la saisie d'un centenaire. Le centenaire est compté.

// Donnez le programme Javascript correspondant qui affiche les résultats.



var count = 1;
var jeune = 0
var moyen = 0
var vieux = 0

do 
{age = window.prompt("veuillez saisir votre age" + count)

    if (age != null && age !="")
{
    count++
}
// 1er cas pour les jeunes

if (age <20 && age>0)
{
    jeune++
}

// 2ème cas pour les vieux

else if (age>40 && age<=100)
{
    vieux++
}

// 3ème cas pour les moyens

else if (age >= 20 && age <=40)
{
    moyen++
}

//4ème cas pour ceux qui ont 100 ans et plus

else (age > 100)
{
    "erreur"
} 
}while (age != null && age!="");

alert ("il y a " + jeune + " jeune." + "\nil y a " + moyen + " moyen." + "\nil y a " + vieux + " vieux.")
