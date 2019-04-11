<?php

	session_start();
	
	if ($_SERVER['REQUEST_METHOD']=='POST') {
		
		// Verify if the correct username and password have been supplied
		if (isset ($_POST['email']) && isset($_POST['password']))
		{
			//Connect to the database
			require_once('dbConnect.php');
			
			//Query the login table
			$sql = "select * from tblcustomer where email='".$_POST['email']."' and password='".$_POST['password']."'";
			$result = mysqli_query($con, $sql);
			
	        //user record
		    $record = array();		
			while ($row = mysqli_fetch_array($result)) {
					array_push($record, array(
						"id"=>$row["custID"],
						"name"=>$row["name"],
						"surname"=>$row["lastname"],
						"phone"=>$row["phone"],
						"email"=>$row["email"],
						"username"=>$row["username"],
						"password"=>$row["password"])
					 );
				} 
				//Close database connection
				 mysqli_close($con);
				 if ($record) {
					//display the user record in json format
					echo json_encode(array("user"=>$record));
				} else {
					 //displaying failed login message
					 echo 'Login failed'; 
				 }
		}
    }
?>