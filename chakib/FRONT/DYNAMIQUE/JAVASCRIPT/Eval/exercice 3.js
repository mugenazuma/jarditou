// Exercice 3 :
// recherche d'un prénom
// Un prénom est saisi au clavier. On le recherche dans le tableau tab donné ci-après.

// Si le prénom est trouvé, on l'élimine du tableau en décalant les cases qui le suivent, et en mettant à blanc la dernière case. Si le prénom n'est pas trouvé un message d'erreur apparait et aucun prénom ne se supprime.

// var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
// ( exemple : ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", " "]; )



// Réponse:

//liste des prenoms d'où on effectue la recherche
var tab = ["audrey", "aurelien", "flavien", "jeremy", "laurent", "melik", "nouara", "salem", "samuel", "stephane"]; 


// saisir un prenom
var saisie = window.prompt(`Veuillez choisir un prénom parmi ${[...tab]}.`)

// verification du prenom dans la liste
if(tab.includes(saisie)){
	tab.splice(tab.indexOf(saisie),1);
	tab.push(" ");
	alert(tab)
}
// si le prenom ne fait pas partie de la liste
else{alert("erreur")}

