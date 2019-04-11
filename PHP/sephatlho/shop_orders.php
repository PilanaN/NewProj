<?php
	if($_SERVER['REQUEST_METHOD']=='GET') {
		//Check if the shop id was provided
		if (isset($_GET['fk_owner_id'])) {
			
		   //Connect to the database
		    require_once('dbConnect.php');
				
			$sql = "select order_id,menu.description,price,qty,tblcustomer.name,tblcustomer.lastname,tblcustomer.phone,tblcustomer.email,tblshop.shop_name,tblshopowner.email,tblshop.address,date_time,status "
				  ."from tblorder,tblcustomer,tblshopowner,tblshop,menu "
				  ."where menu.item_id=tblorder.fk_item_id "
				  ."and tblcustomer.cust_id=tblorder.fk_cust_id "
				  ."and tblshop.fk_email=tblshopowner.email "
				  ."and tblshopowner.owner_id=tblorder.fk_owner_id "
				  ."and tblorder.fk_owner_id=".$_GET['fk_owner_id']. ' LIMIT 0, 50';
				  			
		if($result = mysqli_query($con, $sql)){
          if(mysqli_num_rows($result) > 0){
            //user record
		    $order = array();		
			while ($row = mysqli_fetch_array($result)) {
				
					array_push($order, array(
						"order_no"=>$row["order_Id"],
						"item"=>$row["description"],
						"price"=>$row["price"],
						"quantity"=>$row["qty"],
						"cname"=>$row["name"],
						"csurname"=>$row["lastname"],
						"cphone"=>$row["phone"],
						"cemail"=>$row["email"],
						"shop"=>$row["shop_name"],
						"owner_email"=>$row["email"],
						"shop_address"=>$row["address"],
						"order_date_time"=>$row["date_time"],
						"order_status"=>$row["status"])
					 );
				} 
		// Close result set
        mysqli_free_result($result);
		// display the result
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
	