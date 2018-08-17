<?php
include "db.php";

if($_REQUEST['delete_earlywarning']) {
$query = "DELETE FROM earlywarning WHERE earlywarningId='".$_REQUEST['delete_earlywarning']."'";
$deletewarning = mysqli_query($connection, $query) or die("database error:". mysqli_error($connection));
if($deletewarning) {
echo "Earlywarning Record successfully deleted";
}else{
	echo "Funding Record Kept!";
}
}


?>