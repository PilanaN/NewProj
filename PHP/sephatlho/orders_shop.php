<?php
	if($_SERVER['REQUEST_METHOD']=='GET') {
		
		//Check if the customer id was provided
		if (isset($_GET['fk_owner_id'])) {
			
		   //Connect to the database
		    require_once('dbConnect.php');
				
			$sql = "select tblcustomer.cust_id,tblshop.shop_name,date_time,sum(price) as total,status,tblcustomer.name,tblcustomer.lastname,tblcustomer.phone,tblcustomer.email "
				  ."from tblorder,tblcustomer,tblshopowner,tblshop,menu "
				  ."where menu.item_id=tblorder.fk_item_id "
				  ."and tblcustomer.cust_id=tblorder.fk_cust_Id "
				  ."and tblshopowner.owner_id=tblorder.fk_owner_id "
				  ."and tblshopowner.email=tblshop.fk_email "
				  ."and tblorder.fk_owner_id=".$_GET['fk_owner_id']." "
				  ."group by date_time "
				  ."order by date_time DESC";
				  			
		if($result = mysqli_query($con, $sql)){
          if(mysqli_num_rows($result) > 0){
            // User record
		    $order = array();		
			while ($row = mysqli_fetch_array($result)) {
				array_push($order, array(
					"customer_Id"=>$row["cust_id"],
					"shop"=>$row["shop_name"],
					"order_date_time"=>$row["date_time"],
					"total"=>$row["total"],
					"order_status"=>$row["status"],
					"name"=>$row["name"],
					"lastname"=>$row["lastname"],
					"phone"=>$row["phone"],
					"email"=>$row["email"])
				);
		    } 
		// Close result set
        mysqli_free_result($result);
		// Display the result
		echo json_encode(array("order"=>$order));
	   } else {
		    echo "No records found";
	   }
	} else {
		
     echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
	// echo "ERROR: Could not query";
	}
   }
 }  
?>
	