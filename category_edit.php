<?php 
    require 'backendheader.php';
    require 'connection.php';

    $id = $_GET['id'];

    $sql = "SELECT * FROM categories WHERE id=:value1";
    $statement = $pdo->prepare($sql);
    $statement->bindParam(':value1', $id);
    $statement->execute();

    $category = $statement->fetch(PDO::FETCH_ASSOC);
?>

    <div class="app-title">
        <div>
            <h1> <i class="icofont-list"></i> Category Edit Form </h1>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
            <a href="category_list.php" class="btn btn-outline-primary">
                <i class="icofont-double-left"></i>
            </a>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <form action="category_update.php" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="id" value="<?=$category['id']?>">
                        <input type="hidden" name="oldlogo" value="<?=$category['logo']?>">
                        <div class="form-group row">
                            <label for="name_id" class="col-sm-2 col-form-label"> Name </label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="name_id" name="name" value="<?=$category['name']?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="photo_id" class="col-sm-2 col-form-label"> Photo </label>
                            <div class="col-sm-10">
                              <input type="file" id="photo_id" name="photo">

                              <img src="<?=$category['logo']?>" alt="logo" class="w-25">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">
                                    <i class="icofont-save"></i>
                                    Update
                                </button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

<?php 
    require 'backendfooter.php';
?>