<?php
	if($_SERVER['REQUEST_METHOD']=='POST')
	{
        // User email address sent to the server
		$user_email = $_POST['user_email'];
			
	    if (isset($user_email)) {
		 
			require_once('dbConnect.php');
			
			// Check connection
			if($con === false){
				die("ERROR: Could not connect. " . mysqli_connect_error());
			}
			
			// query the database for an old password
			$query = "select fk_email from login where fk_email='$user_email'";
			
			$user_name = "";
			if($r = mysqli_query($con, $query)){
               if(mysqli_num_rows($r) > 0){
		          while ($reslt = mysqli_fetch_array($r)) {
				    $user_name = $reslt['fk_email'];
				  }
			   }
			}   
				  
	   // check if the user email address provided matches the one in the database
		  if($user_name == $user_email){			
			echo 'Next';
		  }	else {
		    echo "User does not exist";
		 }
      // Close connection to the database
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