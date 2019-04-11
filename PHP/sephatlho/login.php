<?php

  if ($_SERVER['REQUEST_METHOD']=='POST') {
	 
       $email = $_POST['email'];
       $password = $_POST['password'];
	   
//	   $email = "lesedi@gmail.com";
//	   $password = "Shop Owner";
	   
	// Verify if the correct username and password have been supplied
	if (isset ($email) && isset($password))
	{
		// Connect to the database
		require_once('dbConnect.php');
			
		// Check database connection
		if($con === false){
		   die("ERROR: Could not connect. " . mysqli_connect_error());
		}
		
		// Query the login table
		$sql =	"select role from tblrole where tblrole.fk_email='".$email."'";
		
		$role = '';
		if($r = mysqli_query($con, $sql)){
		   if(mysqli_num_rows($r) > 0){
			$result = array();
			while ($row = mysqli_fetch_array($r)) {
               $role = $row["role"];
			}			 
		   } else {
				echo "No records matching your query were found.";
		   }
		   
		} else {
			
		//   echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
	      echo "ERROR: Could not be able to execute query";
		}	
        			
       if ($role == 'Customer') {	
	   
			// Query the login
			$sql =	"select cust_id,name,lastname,phone,email,role "
				."from tblcustomer, login, tblrole "
				."where tblcustomer.email=login.fk_email "
				."and login.fk_email = tblrole.fk_email "
				."and login.fk_email='".$email."' "
				."and login.password='".$password."'";
				
		 if($r = mysqli_query($con, $sql)){
		   if (mysqli_num_rows($r) > 0){
			$result = array();
			while ($row = mysqli_fetch_array($r)) {

				array_push($result, array(
				   "id"=>$row["cust_id"],
				   "name"=>$row["name"],
				   "surname"=>$row["lastname"],
				   "phone"=>$row["phone"],
				   "email"=>$row["email"],
				   "role"=>$row["role"])
				);
			}
			// Close result set
			mysqli_free_result($r);
			// display the result
			   echo json_encode(array("login"=>$result));
		   } else {
				echo "No records matching your query were found.";
		   }
		   
		} else {
			
		 //  echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
		  echo "ERROR: Could not be able to execute query";
		}
		
	 } else if ($role == 'Shop Owner') {
		 
		//Query the login
			$sql =	"select owner_id,name,lastname,phone,email,shop_name,address,role "
				."from tblshopowner, tblshop, login, tblrole "
				."where tblshopowner.email=login.fk_email "
				."and tblshopowner.email=tblshop.fk_email "
				."and login.fk_email=tblrole.fk_email "
				."and login.fk_email='".$email."' "
				."and login.password='".$password."'";
				
		 if($r = mysqli_query($con, $sql)){
		   if(mysqli_num_rows($r) > 0){
			$result = array();
			while ($row = mysqli_fetch_array($r)) {
				array_push($result, array(
				"id"=>$row["owner_id"],
				"name"=>$row["name"],
				"surname"=>$row["lastname"],
				"phone"=>$row["phone"],
				"email"=>$row["email"],
				"shop"=>$row["shop_name"],
				"address"=>$row["address"],
				"role"=>$row["role"])
				);
			}
			// Close result set
			mysqli_free_result($r);
			// display the result
			   echo json_encode(array("login"=>$result));
		   } else {
				echo "No records matching your query were found.";
		   }
		} else {
			
		   echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
		//  echo "ERROR: Could not be able to execute query";
		}
		
	 }//role
	 else {
	   echo 'Incorrect Login Details. Please try again';
	 }
	 
	// Close connection
	mysqli_close($con);	
	
	} else {
		
		echo "Please provide all the required login credentials";
		
	}
  }
?>