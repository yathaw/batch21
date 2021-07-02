<?php 
	
	require 'connection.php';

	$id = $_GET['id'];

	$status = 1;

	// Soft Delete
	$sql = 'UPDATE users SET status=:v1 WHERE id=:v2';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':v1', $status);
	$statement->bindParam(':v2',$id);
	$statement->execute();

	// Hard Delete
	// 1. model_has_role ( userid )
	// 2. orders ( userid )
	// 3. item_order ( orderid )
	// 4. users

	header('location:customer_list.php');

?>