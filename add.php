<?php
	require_once 'core/config.php';
	require_once 'core/function.php';

	$title = $_POST['title'];
	$descrMin = $_POST['descr-min'];
	$description = $_POST['description']; 
	$con = connect();
	$sql = "INSERT INTO info (title, descr_min, description)
	VALUES ('".$title."', '".$descrMin."', '".$description."')";

	if(mysqli_query($con, $sql)) {
		echo "Данные успешно загружены";
	} else {
		echo "Ошибка: " . $sql . "<br>" . mysqli_error($con);
	}

	close($con);
?>