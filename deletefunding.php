<?php
include "db.php";

if($_REQUEST['deletefund']) {
$query = "DELETE FROM funding WHERE funding_id='".$_REQUEST['deletefund']."'";
$deleteset = mysqli_query($connection, $query) or die("database error:". mysqli_error($connection));
if($deleteset) {
echo "Beneficiary Record successfully deleted";
}else{
	echo "Funding Record Kept!";
}
}


?>