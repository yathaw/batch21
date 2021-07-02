<?php
    require 'connection.php';
    include('backendheader.php');

    $roleid = 2;
    $active = 0;

    $sql = "SELECT users.*, roles.name as rname FROM users 
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

    $users = $stmt->fetchAll();
?>


    <div class="app-title">
        <div>
            <h1> <i class="icofont-list"></i> User </h1>
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
                                    <th> # </th>
                                    <th> Name </th>
                                    <th> Contact </th>
                                    <th> Action </th>
                                </tr>
                            </thead>
<tbody>
    <?php 
        $i = 1;
        foreach($users as $user):

        $id = $user['id'];
        $name = $user['name'];
        $profile = $user['profile'];
        $email = $user['email'];
        $phone = $user['phone']; 
        $address = $user['address']; 

    ?>
    <tr>
        <td> <?php echo $i++; ?>. </td>
        <td>
            <div class="d-flex no-block align-items-center">
                <div class="mr-3">
                    <img src="<?= $profile; ?>"
                        alt="user" class="rounded-circle" width="50"
                        height="45" />
                </div>
                <div class="">
                    <h5 class="text-dark mb-0 font-16 font-weight-medium"> <?= $name; ?></h5>
                    <span class="text-muted font-14">
                        <?= $email; ?>   
                    </span>
                </div>
            </div> 
        </td>
        <td> 
            <h5 class="text-dark mb-0 font-16 font-weight-medium"> <?= $phone; ?></h5>
            <span class="text-muted font-14">
                <?= substr($address, 0, 30) . '...'; ?>      
            </span>
        </td>
        <td>

            <a href="customer_delete.php?id=<?= $id ?> " class="btn btn-outline-danger">
                <i class="icofont-close"></i>
            </a>
        </td>

    </tr>
    <?php endforeach; ?>
</tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


<?php
   require('backendfooter.php');
?>