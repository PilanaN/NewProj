<?php
	if($_SERVER['REQUEST_METHOD']=='POST')
	{
		
		$cust_Id = $_POST['order_cust_id'];
		$date_time = $_POST['order_date_time'];
		$status = $_POST['order_status'];
		
	  if(isset($cust_Id) && isset($date_time) && isset($status)) {
		  
		require_once('dbConnect.php');
		
		// Check connection
		if( $con === false) {
			die("ERROR: Could not connect. " . mysqli_connect_error());
		}
		
		$sql = "update tblorder "
		      ."set status ='$status' "
			  ."where date_time='$date_time' "
			  ."and fk_cust_Id ='$cust_Id'";
		 
		if (mysqli_query($con, $sql)){
			
			echo "Order updated successfully";
			
		} else {
			
			echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
			
		}
	} else {
		
		echo "Please provide all the values.";
	}	
  }
  else
  {
	echo "Error on PHP";
  }

?>
	