<?php

 // session management
	session_start();
	
 // session attributes for login date and time
 // current date
 // $session_date = $_SESSION['login_date']
 // $session_date = date['M d Y'];
	
 // current time
//	$session_time = $_SESSION['login_time'] 
//	$session_time = date("H:i:s");
	
	
 if ($_SERVER['REQUEST_METHOD']=='POST') {
	 
	 /*
	 // shop owner session attributes to save into session database
     $session_id = $_SESSION["shopID"],
	 $session_name = $_SESSION["name"],
	 $session_lastname = $_SESSION["lastname"],
	 $session_phone = $_SESSION["phone"],
	 $session_email = $_SESSION["email"],
	 $session_shopname = $_SESSION["shopName"],
	 $session_address = $_SESSION["address"],
	 $session_username = $_SESSION["username"],
	 $session_password = $_SESSION["password"],
	 $session_id_num = $_SESSION["id_num"])
	 
    // query the shopowner database and save values into the session
	if (isset($_POST['email']) && isset($_POST['password'])) {
		
            //Connect to the database
			require_once('dbConnect.php');
			
			// Check database connection
			if($con === false){
				die("ERROR: Could not connect. " . mysqli_connect_error());
			}

           $sql = "select * from tblshopowner where email='".$_POST['email']."' and password='".$_POST['password']."'";
			$result = mysqli_query($con, $sql);
			
			while ($row = mysqli_fetch_array($result)) {
				$session_id = $row["shopID"],
				$session_name = $row["name"],
				$session_lastname = $row["lastname"],
				$session_phone = $row["phone"],
				$session_email = $row["email"],
				$session_shopname = $row["shopName"],
				$session_address = $row["address"],
				$session_username = $row["username"],
				$session_password = $row["password"],
				$session_id_num = $row["id_num"])
			} 
			
			//save values into owner session management database
			
			 $sqlSession = "insert into tblowner_session (name,lastname,phone,email,username,password,id_num,login_date,login_time,logout_time) VALUES('$session_name','$session_lastname','$session_phone','$session_email','$session_username','$session_password','$session_date', '$session_time','00:00')";
             
			 if(mysqli_query($con, $sqlSession)){
				//echo "Records added successfully.";
			} else{
			//	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
			}
			//Close database connection
			mysqli_close($con);	  			
	}
	*/		
		// Verify if the correct username and password have been supplied
		if (isset ($_POST['email']) && isset($_POST['password']))
		{
			//Connect to the database
			require_once('dbConnect.php');
			
			// Check database connection
			if($con === false){
				die("ERROR: Could not connect. " . mysqli_connect_error());
			}
			
			// Query the login table
			$sql = "select * from tblshopowner where email='".$_POST['email']."' and password='".$_POST['password']."'";
			$result = mysqli_query($con, $sql);
			
	        // user record
		    $record = array();		
			while ($row = mysqli_fetch_array($result)) {
					array_push($record, array(
						"id"=>$row["shopID"],
						"name"=>$row["name"],
						"surname"=>$row["lastname"],
						"phone"=>$row["phone"],
						"email"=>$row["email"],
						"shop"=>$row["shopName"],
						"address"=>$row["address"],
						"username"=>$row["username"],
						"password"=>$row["password"])
					 );
				} 
				//Close database connection
				 mysqli_close($con);
				 if ($record) {
					// display the user record in json format
					echo json_encode(array("owner_info"=>$record));
				} else {
					 // displaying failed login message
					 echo 'Login failed'; 
				 }
		}
    }
?>