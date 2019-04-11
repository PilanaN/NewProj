<?php
	if($_SERVER['REQUEST_METHOD']=='POST')
	{

		$username = $_POST['username'];
		$oldPass = $_POST['old_password'];
		$newPass = $_POST['new_password'];
		$newPassConfirm = $_POST['confirm_new_password'];
				
	 if (isset($username) && isset($oldPass) && isset($newPass) && isset($newPassConfirm)) {
		 
			require_once('dbConnect.php');
			
			// Check connection
			if($con === false){
				die("ERROR: Could not connect. " . mysqli_connect_error());
			}
			
			// query the database for an old password
			$query = "select password from login where login.username=$username";
			
			$oldPassword = "";
			if($r = mysqli_query($con, $query)){
               if(mysqli_num_rows($r) > 0){ //    $row_count = mysql_affected_rows();
		          while ($reslt = mysqli_fetch_array($r)) {
				    $oldPassword = $reslt['password'];
				  }
			   }
			}   
			
			$sql = "update login "
			      ."set password='$newPass' "
				  ."where login.username=$username "
				  ."and login.password='$oldPass'";
				  
		// check if the old password user provided matches the one in the database
		 if($oldPassword == $oldPass){
		   if ($newPass == $newPassConfirm) {
			if (mysqli_query($con, $sql)){
			  echo "Password changed.";
			} else {
				echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
			}
			// Close connection
            mysqli_close($con);	
		  }	else {
		    echo 'Passwords do not match.';
		  }
        } else {
		  echo 'Incorrect old password.';
		}		  
	 } else {
 		echo "Please provide all the values.";  
	 }
  }   
  else
  {
		echo "POST Request Error.";
  }
?>