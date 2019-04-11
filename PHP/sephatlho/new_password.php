<?php
	if($_SERVER['REQUEST_METHOD']=='POST')
	{

		$user_email = $_POST['user_email'];
		$newPass = $_POST['new_password'];
		$newPassConfirm = $_POST['new_password_confirm'];
				
	 if (isset($user_email) && isset($newPass) && isset($newPassConfirm)) {
		 
			require_once('dbConnect.php');
			
			// Check connection
			if($con === false){
				die("ERROR: Could not connect. " . mysqli_connect_error());
			}
			
			$sql = "update login "
			      ."set password='$newPass' "
				  ."where login.fk_email='$user_email'";
				  
			if (mysqli_query($con, $sql)){
			  echo "Password changed";
			} else {
			  echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
			}
		 // Close connection
            mysqli_close($con);	 
	 } else {
 		echo "Please provide all the values.";  
	 }
  }   
  else
  {
		echo "POST Request Error.";
  }
?>