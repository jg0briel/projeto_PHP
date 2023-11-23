<?php
$sql = "SELECT * FROM herois";
$result = $coon->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID: ". $row["id"] ."- Nome:". $row["nome"] ."- Identidade secreta:" . $row["identidade secreta"]. "- Poder:". $row["poder"] ."- Fraqueza:". $row["fraqueza"] ."<br>";
    } 
} else{
    echo"Sem resultado";
}

?>