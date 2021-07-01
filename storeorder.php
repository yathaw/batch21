<?php 

	require 'connection.php';
	session_start();
	
	$carts = $_POST['cart'];
	$note = $_POST['note'];
	$total = $_POST['total'];

	date_default_timezone_set("Asia/Rangoon");

	$orderdate = date('Y-m-d');
	$voucherno = strtotime(date("Y-m-d h:i:s"));
	$userid = $_SESSION['login_user']['id'];
	$status = '0';

	$sql = 'INSERT INTO orders (orderdate, voucherno, total, note, status, user_id) VALUES (:v1, :v2, :v3, :v4, :v5, :v6)';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':v1', $orderdate);
	$statement->bindParam(':v2', $voucherno);
	$statement->bindParam(':v3', $total);
	$statement->bindParam(':v4', $note);
	$statement->bindParam(':v5', $status);
	$statement->bindParam(':v6', $userid);
	$statement->execute();

	$orderid = $pdo->lastInsertId();

	foreach($carts as $cart){
		$qty = $cart['qty'];
		$itemid = $cart['id'];

		$sql = 'INSERT INTO item_order (qty, item_id, order_id) VALUES (:v1, :v2, :v3)';
		$statement = $pdo->prepare($sql);
		$statement->bindParam(':v1', $qty);
		$statement->bindParam(':v2', $itemid);
		$statement->bindParam(':v3', $orderid);
		$statement->execute();

	}

	var_dump($voucherno);


?>