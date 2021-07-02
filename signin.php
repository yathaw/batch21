<?php 
	
	require 'connection.php';
	session_start();

	$login_email = $_POST['email'];
	$login_password = $_POST['password'];

	$active = 0;

	$sql = 'SELECT users.*, roles.name as rname FROM users 
			INNER JOIN model_has_roles ON users.id = model_has_roles.user_id
			INNER JOIN roles ON model_has_roles.role_id = roles.id
			WHERE email=:value1 AND password=:value2 AND status=:value3';
	$statement = $pdo->prepare($sql);
	$statement->bindParam(':value1', $login_email);
	$statement->bindParam(':value2', $login_password);
	$statement->bindParam(':value3', $active);

	$statement->execute();

	$authuser = $statement->fetch(PDO::FETCH_ASSOC);

	if ($authuser) {

		$_SESSION['login_user'] = $authuser;

		if($authuser['rname'] == 'Admin'){
			header('location:dashboard.php');
		}else{

			if ($_SESSION['cartstatus']) {
				header('location:cart.php');
			}else{
				header('location:index.php');
			}

		}
	}
	else{

		if(!isset($_COOKIE['logincount'])){
			$loginCount = 1;
		}else{
			$loginCount = $_COOKIE['logincount'];
			$loginCount++;
		}
		
		setcookie("logincount",$loginCount,time()+10);

		if ($loginCount >= 3) {
			echo "<img src='frontend/image/008_final.gif' style='width:100%; height:100vh; object-fit:cover;' >";

			setcookie("logincount", "" , time()-10);

			echo "<script type='text/javascript'> 
					(function(){
						setTimeout(function(){
							location.href='login.php';
						},10000);
					})();
				</script>";

		}else{
			$_SESSION['login_fail'] = 'Your current email and password is invalid.';

			header('location:login.php');
		}

		
	}
	

?>