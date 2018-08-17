<?php
include "db.php";

if($_REQUEST['deletepeople']) {
$query = "DELETE FROM people WHERE people_id='".$_REQUEST['deletepeople']."'";
$deletepeople = mysqli_query($connection, $query) or die("database error:". mysqli_error($connection));
if($deletepeople) {
echo "People in Need Record successfully deleted";
}else{
	echo "People Record Kept!";
}
}


?>