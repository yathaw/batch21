<?php 
  
  require 'connection.php';

  $name = $_POST['name'];
  $photo = $_FILES['photo'];
  $id = $_POST['id'];
  $oldlogo = $_POST['oldlogo'];

  $source_dir = 'image/category/';

  // image/category/cat.jpg
  // image/category/12345.jpg
  // image/category/22222.jpg
  if (isset($photo) && $photo['size']>0) {
    $filename = mt_rand(100000,999999);
    $file_array = explode('.', $photo['name']);
    $file_exe = $file_array[1];

    $filepath = $source_dir.$filename.'.'.$file_exe;
    move_uploaded_file($photo['tmp_name'], $filepath);

    unlink($oldlogo);
    // var_dump($photo);
  }else{
    $filepath = $oldlogo;
  }
  
  $sql = "UPDATE categories SET name=:value1,logo=:value2 WHERE id=:value3";
  $statement = $pdo->prepare($sql);
  $statement->bindParam(':value1', $name);
  $statement->bindParam(':value2', $filepath);
  $statement->bindParam(':value3', $id);

  $statement->execute();

  header('location:category_list.php');

?>