<?php 
	require 'connection.php';

	$name = $_POST['name'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$address = $_POST['address'];

	$status = 0;
	$profile = 'image/user.png';
	$roleid = 2;

	$sql = 'INSERT INTO users (name, profile, email, password, phone, address, status) VALUES (:v1, :v2, :v3, :v4, :v5, :v6, :v7)';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':v1', $name);
	$statement->bindParam(':v2', $profile);
	$statement->bindParam(':v3', $email);
	$statement->bindParam(':v4', $password);
	$statement->bindParam(':v5', $phone);
	$statement->bindParam(':v6', $address);
	$statement->bindParam(':v7', $status);
	$statement->execute();

	$sql = 'SELECT * FROM users ORDER BY id DESC';
	$statement = $pdo->prepare($sql);
	$statement->execute();
	$user = $statement->fetch(PDO::FETCH_ASSOC);

	$userid = $user['id'];

	$sql = 'INSERT INTO model_has_roles (user_id, role_id) VALUES (:v1, :v2)';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':v1', $userid);
	$statement->bindParam(':v2', $roleid);
	$statement->execute();

	header('location:login.php');

?>