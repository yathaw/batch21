<?php 
	
	require 'connection.php';

	$name = $_POST['name'];
	$photo = $_FILES['photo'];

	$source_dir = 'image/category/';

	// image/category/cat.jpg
	// image/category/12345.jpg
	// image/category/22222.jpg

	$filename = mt_rand(100000,999999);
	$file_array = explode('.', $photo['name']);
	$file_exe = $file_array[1];

	$filepath = $source_dir.$filename.'.'.$file_exe;
	move_uploaded_file($photo['tmp_name'], $filepath);

	var_dump($photo);

	$sql = "INSERT INTO categories (name, logo) VALUES (:value1, :value2)";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $name);
	$statement->bindParam(':value2', $filepath);
	$statement->execute();

	header('location:category_list.php');


?>