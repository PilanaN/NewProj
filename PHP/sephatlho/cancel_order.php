<?php
	if($_SERVER['REQUEST_METHOD']=='GET'){
	  //check if the order id was provided
      if (isset($_GET['oder_ID'])) {
		   
		//connect to the database
		require_once('dbConnect.php');	
	 
		// Check connection
		if($con === false){
			die("ERROR: Could not connect. " . mysqli_connect_error());
		}

		//a query to delete an order
		$sql = "delete from tblorder where oder_ID=".$_GET['oder_ID'];
		 
		if(mysqli_query($con, $sql)){
			echo "deleted";
		} else{
			echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
		}
		 
		// Close connection
		mysqli_close($con);
	  }
	}
?>
	