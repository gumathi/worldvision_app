<?php
include "db.php";

if($_REQUEST['deletesituationreport']) {
$query = "DELETE FROM situation_report WHERE situation_id='".$_REQUEST['deletesituationreport']."'";
$deletesituation = mysqli_query($connection, $query) or die("database error:". mysqli_error($connection));
if($deletesituation) {
echo "Situation Report Record successfully deleted";
}else{
	echo "Funding Record Kept!";
}
}


?>