<?php
	if($_SERVER['REQUEST_METHOD']=='GET') {
		//Check if the shop id was provided
		if (isset($_GET['fk_email_shop'])) {
			
		   //Connect to the database
		    require_once('dbConnect.php');
			
			// Check connection
			if($con === false){
				die("ERROR: Could not connect. " . mysqli_connect_error());
			}
				
		$sql = "select * from menu where fk_email_shop ='".$_GET['fk_email_shop']."'";
				  			
		if($result = mysqli_query($con, $sql)){
          if(mysqli_num_rows($result) > 0){
            //user record
		    $order = array();		
			while ($row = mysqli_fetch_array($result)) {
				
					array_push($order, array(
						"item_id"=>$row["item_id"],
						"fk_email"=>$row["fk_email_shop"],
						"description"=>$row["description"],
						"price"=>$row["price"])
					 );
				} 
		// Close result set
        mysqli_free_result($result);
		// display the result
		echo json_encode(array("menu"=>$order));
	   } else {
		    echo "No_records";
	   }
	} else {
		
  // echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
	    echo "ERROR: Could not be able to execute query";
	}
   }
 }  
?>
	