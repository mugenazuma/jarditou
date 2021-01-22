// Exercice 5 : vérification d'un formulaire
// Effectuez le contrôle de saisie de votre formulaire Jarditou en Javascript.

// Lorsqu'une erreur est détectée, l'utilisateur doit en être informé grâce à l'affichage d'un message sous le champ concerné.

// Le formulaire ne peut être envoyé que lorsque tout est bon.



// declaration de varibale pour les id des input


// variables pour les coordonnÃ©es
// 
//Pour le nom
var nom = document.getElementById('nom');
var missNom = document.getElementById('missNom');
var regexNom = /^[A-Za-z\sÃ¨Ã©Ãª]+$/;
//Pour le prÃ©nom
var prenom = document.getElementById('prenom');
var missPrenom = document.getElementById('missPrenom');
var regexPrenom = /^[A-Za-z\sÃ¨Ã©Ãª]+$/;
// Pour la date de naissance
var date = document.getElementById('date');
var missDate = document.getElementById('missDate');
// var regexDate = /^[0-9][0-9]?\/[0-9][0-9]\/[0-9][0-9]([0-9][0-9])?$/;

//Pour le code postal
var zip = document.getElementById('zip');
var missZip = document.getElementById('missZip');
var regexZip = /^{0-9}{5}/;
//Pour l'adresse
var adresse = document.getElementById('adresse');
var missAdresse = document.getElementById('missAdresse');
var regexAdresse = /^[0-9A-Za-z\sÃ¨Ã©Ãª]+$/;
//Pour la ville
var ville = document.getElementById('ville');
var missVille = document.getElementById('missVille');
var regexVille = /^[A-Za-z\sÃ¨Ã©Ãª]+$/;
//Pour le mail
var email = document.getElementById('email');
var missEmail = document.getElementById('missEmail');
var regexEmail = /[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,4}/;
//Pour le commentaire
var commentaire = document.getElementById('commentaire');
var missCommentaire = document.getElementById('missCommentaire');
var regexCommentaire = /^[A-Za-z]+$/;

var formValid = document.getElementById('envoi');


//Fonction qui permet le controle de saisie
function validation(event) {

//Si le champ est vide
if (nom.value == "") {
event.preventDefault();
        missNom.textContent = ('Nom manquant');
        missNom.style.color = 'yellow';
//Sinon si le test du regexNom est FAUX
} else if (regexNom.test(nom.value) == false) {
event.preventDefault();
        missNom.textContent = "Saisie du Nom incorrecte";
        missNom.style.color = 'orange';
//Sinon
} else {
missNom.textContent = ('');
}
}