<?php 
	require 'backendheader.php';
	require 'connection.php';

	date_default_timezone_set('Asia/Rangoon');
	$todaydate = date('Y-m-d');
	$active = 0;
	$roleid = 2;

	// Today Order Count
	$sql = 'SELECT count(orders.id) as ordertotal
				FROM orders 
				INNER JOIN users ON orders.user_id = users.id
				WHERE users.status = :v1 
				AND orders.orderdate = :v2';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':v1',$active);
	$statement->bindParam(':v2',$todaydate);
	$statement->execute();
	$orderCount = $statement->fetch(PDO::FETCH_ASSOC);

	// Customer Count
    $sql = "SELECT count(users.id) as usertotal
    		FROM users 
            INNER JOIN model_has_roles 
            ON users.id = model_has_roles.user_id
            INNER JOIN roles
            ON model_has_roles.role_id = roles.id
            WHERE model_has_roles.role_id = :v1 
            AND users.status = :v2";

    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':v1', $roleid);
    $stmt->bindParam(':v2', $active);
    $stmt->execute();
    $userCount = $stmt->fetch(PDO::FETCH_ASSOC);
?>
	<div class="app-title">
        <div>
          	<h1><i class="fa fa-dashboard"></i> Dashboard</h1>
          	<p>A free and open source Bootstrap 4 admin template</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          	<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          	<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-3">
          	<div class="widget-small primary coloured-icon">
          		<i class="icon icofont-prestashop"></i>
            	<div class="info">
              		<h4>Today Order</h4>
              		<p><b> <?= $orderCount['ordertotal'] ?> </b></p>
            	</div>
          	</div>
        </div>
        <div class="col-md-6 col-lg-3">
          	<div class="widget-small info coloured-icon">
          		<i class="icon icofont-ui-user-group"></i>
            	<div class="info">
              		<h4>Customers</h4>
              		<p><b> <?= $userCount['usertotal'] ?> </b></p>
            	</div>
          	</div>
        </div>
        <div class="col-md-6 col-lg-3">
          	<div class="widget-small warning coloured-icon">
          		<i class="icon icofont-badge"></i>
            	<div class="info">
              		<h4>Brands</h4>
              		<p><b>10</b></p>
            	</div>
          	</div>
        </div>
        <div class="col-md-6 col-lg-3">
          	<div class="widget-small danger coloured-icon">
          		<i class="icon icofont-box"></i>
            	<div class="info">
              		<h4>Items</h4>
              		<p><b>500</b></p>
            	</div>
          	</div>
        </div>
    </div>

    <div class="row">
    	<div class="col-md-12">
          	<div class="tile">
            	<h3 class="tile-title">Monthly Sales</h3>
            		<div class="embed-responsive embed-responsive-16by9">
              			<canvas class="embed-responsive-item" id="lineChartDemo"></canvas>
            		</div>
          	</div>
        </div>
    </div>

<?php 
	require 'backendfooter.php';
?>