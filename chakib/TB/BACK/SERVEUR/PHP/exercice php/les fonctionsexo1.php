<!DOCTYPE html>
<html lang="fr">

<form method="post" action="les fonctionsexo1.php">
Sélectionnez un nombre: <input type="text" name="nbr1" /><br />
Sélectionnez le signe (+, -, /, *) : <input type="text" name="signe" /><br />
Sélectionnez le deuxième nombre: <input type="text" name="nbr2" /><br />
<br />
<input type="submit" value="Faire le calcul" />
<input type="text" resultat="résultat" />
</form>
<?php
$first_num = $_POST['first_num'];
$second_num = $_POST['second_num'];
$operator = $_POST['operator'];
$result = $_POST['first_num'+'operator'+'second_num'];
if (is_numeric($first_num) && is_numeric($second_num)) {
    switch ($operator) {
        case "Add":
           $result = $first_num + $second_num;
            break;
            echo "resultat";
        case "Subtract":
           $result = $first_num - $second_num;
            echo "resultat";
            break;
        case "Multiply":
            $result = $first_num * $second_num;
            echo "resultat";
            break;
        case "Divide":
            $result = $first_num / $second_num;
            echo "resultat";
 
    }
}

?>

	</body>
</html>