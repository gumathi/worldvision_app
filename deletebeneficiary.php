<?php
include "db.php";
if($_REQUEST['deleteben']) {
$query = "DELETE FROM beneficiaries WHERE ben_id='".$_REQUEST['deleteben']."'";
$deleteset = mysqli_query($connection, $query) or die("database error:". mysqli_error($connection));
if($deleteset) {
echo "Beneficiary Record successfully deleted";
}
}


?>