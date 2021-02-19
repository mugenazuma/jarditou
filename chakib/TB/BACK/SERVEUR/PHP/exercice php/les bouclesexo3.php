<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exercice 3 boucle</title>
</head>

<body>
    
    <br>
    <?php 
    echo "<table style='border : 6px solid black'>";
    echo "<thead>";
    echo "<th style='border : 1px solid black'></th>";
    for ($i_head = 0; $i_head <= 12; $i_head++) {
        echo "<th style='border : 1px solid blue'>$i_head</th>";
    }
    echo "</thead>";
    for ($i_12 = 0; $i_12 <= 12; $i_12++) {
        echo "<tr>";
        echo "<th style='border : 1px solid red'>$i_12</th>";
        for ($td = 0; $td <= 12; $td++) {
            $resultat = $td * $i_12;
            echo "<td style='border : 2px solid green'>$resultat</td>";
        }
        echo "</tr>";
    }
    echo "</table>";
    ?>
  
</body>

</html> 
