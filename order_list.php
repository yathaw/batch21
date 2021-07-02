<?php 
	require 'backendheader.php';
	require 'connection.php';

	$sql = 'SELECT * FROM orders ORDER BY created_at DESC';
	$statement = $pdo->prepare($sql);
	$statement->execute();

	$orders = $statement->fetchAll();
?>
	
	<div class="app-title">
        <div>
            <h1> <i class="icofont-list"></i> Order List </h1>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="sampleTable">
                            <thead>
                                <tr>
                                  <th>#</th>
                                  <th> Orderdate </th>
                                  <th> Voucher No </th>
                                  <th> Order Status </th>
                                  <th>Action</th>
                                </tr>
                            </thead>
							<tbody>
								<?php
									$i =1; 
									foreach($orders as $order){
									$id = $order['id'];
									$orderdate = $order['orderdate'];
									$voucherno = $order['voucherno'];
									$orderstatus = $order['status'];

									if ($orderstatus == 0) {
										$status = "<span class='badge bg-warning text-dark'> Pending </span>";
									}

									if ($orderstatus == 1) {
										$status = "<span class='badge bg-info'> Confirm </span>";
									}

									if ($orderstatus == 2) {
										$status = "<span class='badge bg-dark'> Deliver </span>";
									}

									if ($orderstatus == 3) {
										$status = "<span class='badge bg-success'> Success </span>";
									}

									if ($orderstatus == 4) {
										$status = "<span class='badge bg-danger'> Cancel </span>";
									}
								?>

								<tr>
									<td> <?= $i++; ?> </td>
									<td> <?= $orderdate; ?> </td>
									<td> <?= $voucherno; ?> </td>
									<td> <?= $status; ?> </td>
									<td>
										<a href="order_detail.php?id=<?= $id ?>" class="btn btn-info">
                                            <i class="icofont-info"></i>
                                        </a>

                                        <form class="d-inline-block" onsubmit="return confirm('Are you sure want to CANCEL?')" action="order_status.php" method="POST">

							                <input type="hidden" name="id" value="<?= $id ?>">
							                <input type="hidden" name="status" value="4">
							                <button class="btn btn-outline-danger" <?php if($orderstatus >= 4) echo "disabled" ?>> <i class="icofont-close"></i> </button>                                            
							            </form>
									</td>
								</tr>













								<?php } ?>
							</tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php 
	require 'backendfooter.php';
?>