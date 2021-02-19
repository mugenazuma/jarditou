

var nom = window.prompt("Veuillez saisir votre nom");

var prenom = window.prompt("Veuillez saisir votre prenom");

if (window.confirm("Etes vous un homme ?")== true)
{
  result = "Monsieur"; 
}
else
{
  result = "Madame";
}
window.alert ("Bonjour " + result + " " + nom  + " " + prenom + " " + "\n Bienvenue sur notre site web!")