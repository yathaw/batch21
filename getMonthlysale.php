<?php 
	require 'connection.php';

	$active = 0;

	// January
	$janfirst = strtotime('first day of January');
	$janlast = strtotime('last day of January');

	$janStart = date('Y-m-d', $janfirst);
	$janEnd = date('Y-m-d', $janlast);

	$sql = 'SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $janStart);
	$statement->bindParam(':value3', $janEnd);
	$statement->execute();
	$janResult = $statement->fetch(PDO::FETCH_ASSOC);


	// February
	$febfirst = strtotime('first day of February');
	$feblast = strtotime('last day of February');

	$febStart = date('Y-m-d', $febfirst);
	$febEnd = date('Y-m-d', $feblast);

	$sql = 'SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $febStart);
	$statement->bindParam(':value3', $febEnd);
	$statement->execute();
	$febResult = $statement->fetch(PDO::FETCH_ASSOC);

	// March 
	$marFirst = strtotime('first day of March');
	$marLast = strtotime('last day of March');

	$marStart = date('Y-m-d', $marFirst);
	$marEnd = date('Y-m-d', $marLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $marStart);
	$statement->bindParam(':value3', $marEnd);
	$statement->execute();
	$marResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------

	// April

	$aprFirst = strtotime('first day of April');
	$aprLast = strtotime('last day of April');

	$aprStart = date('Y-m-d', $aprFirst);
	$aprEnd = date('Y-m-d', $aprLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $aprStart);
	$statement->bindParam(':value3', $aprEnd);
	$statement->execute();
	$aprResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------

	// May
	$mayFirst = strtotime('first day of May');
	$mayLast = strtotime('last day of May');

	$mayStart = date('Y-m-d', $mayFirst);
	$mayEnd = date('Y-m-d', $mayLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $mayStart);
	$statement->bindParam(':value3', $mayEnd);
	$statement->execute();
	$mayResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------

	// June
	$junFirst = strtotime('first day of June');
	$junLast = strtotime('last day of June');

	$junStart = date('Y-m-d', $junFirst);
	$junEnd = date('Y-m-d', $junLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $junStart);
	$statement->bindParam(':value3', $junEnd);
	$statement->execute();
	$junResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------

	// July
	$julFirst = strtotime('first day of July');
	$julLast = strtotime('last day of July');

	$julStart = date('Y-m-d', $julFirst);
	$julEnd = date('Y-m-d', $julLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $julStart);
	$statement->bindParam(':value3', $julEnd);
	$statement->execute();
	$julResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------

	// August
	$augFirst = strtotime('first day of August');
	$augLast = strtotime('last day of August');

	$augStart = date('Y-m-d', $augFirst);
	$augEnd = date('Y-m-d', $augLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $augStart);
	$statement->bindParam(':value3', $augEnd);
	$statement->execute();
	$augResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------

	// September
	$sepFirst = strtotime('first day of September');
	$sepLast = strtotime('last day of September');

	$sepStart = date('Y-m-d', $sepFirst);
	$sepEnd = date('Y-m-d', $sepLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $sepStart);
	$statement->bindParam(':value3', $sepEnd);
	$statement->execute();
	$sepResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------

	// October
	$octFirst = strtotime('first day of October');
	$octLast = strtotime('last day of October');

	$octStart = date('Y-m-d', $octFirst);
	$octEnd = date('Y-m-d', $octLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $octStart);
	$statement->bindParam(':value3', $octEnd);
	$statement->execute();
	$octResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------

	// November
	$novFirst = strtotime('first day of November');
	$novLast = strtotime('last day of November');

	$novStart = date('Y-m-d', $novFirst);
	$novEnd = date('Y-m-d', $novLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $novStart);
	$statement->bindParam(':value3', $novEnd);
	$statement->execute();
	$novResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------

	// December 
	$decFirst = strtotime('first day of December');
	$decLast = strtotime('last day of December');

	$decStart = date('Y-m-d', $decFirst);
	$decEnd = date('Y-m-d', $decLast);

	$sql = "SELECT COALESCE(SUM(orders.total),0) AS total
			FROM orders
			INNER JOIN users ON orders.user_id = users.id
			WHERE users.status = :value1
			AND orders.orderdate BETWEEN :value2 and :value3";
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $active);
	$statement->bindParam(':value2', $decStart);
	$statement->bindParam(':value3', $decEnd);
	$statement->execute();
	$decResult = $statement->fetch(PDO::FETCH_ASSOC);

	// -------------------------------------------------------



	$total = array(
	  	$janResult['total'], $febResult['total'], $marResult['total'], $aprResult['total'],
	  	$mayResult['total'], $junResult['total'], $julResult['total'], $augResult['total'],
	  	$sepResult['total'], $octResult['total'], $novResult['total'], $decResult['total']
	);
	
	echo json_encode($total);














?>