<?php 
	require 'connection.php';
	$id = $_POST['id'];
	$status = $_POST['status'];

	$sql = 'UPDATE orders SET status=:v1 WHERE id=:v2';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':v1', $status);
	$statement->bindParam(':v2', $id);
	$statement->execute();

	header('Location: ' . $_SERVER['HTTP_REFERER']);
?>