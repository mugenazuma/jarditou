// Exercice 2 : Table de multiplication
// Ecrivez une fonction qui affiche une table de multiplication.

// Votre fonction doit prendre un paramètre qui permet d'indiquer quelle table afficher.

// Par exemple, TableMultiplication(7) doit afficher :

// 1 x 7 = 7

// 2 x 7 = 14

// 3 x 7 = 21 ...


var n = window.prompt ("entrer la table choisie")


console.log("Table de multiplication par " + n);


for (i=0; i<=10; i++)
{
    resultat = n * i;
    console.log (n + " x " + i + " = " + resultat)
}


