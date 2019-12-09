<?php
	require_once 'core/config.php';
	require_once 'core/function.php';

	$title = $_POST['title'];
	$descrMin = $_POST['descr-min'];
	$description = $_POST['description']; 
	echo '<pre>';
	print_r($_FILES);
	echo '</pre>';
	move_uploaded_file($_FILES['image']['tmp_name'], 'images/'.$_FILES['image']['name']);
	$con = connect();
	$sql = "INSERT INTO info (title, descr_min, description, image)
	VALUES ('".$title."', '".$descrMin."', '".$description."', '".$_FILES['image']['name']."')";

	if(mysqli_query($con, $sql)) {
		echo "Данные успешно загружены";
	} else {
		echo "Ошибка: " . $sql . "<br>" . mysqli_error($con);
	}

	close($con);
?>