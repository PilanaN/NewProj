<?php
	if($_SERVER['REQUEST_METHOD']=='POST') {
		// Check if the customer id was provided
		if (isset($_POST['order_shop_id']) && isset($_POST['order_date_time'])) {
			
		   // Connect to the database
		    require_once('dbConnect.php');
				
			$sql = "select tblshop.shop_name,description,price,tblcustomer.name,tblcustomer.lastname,tblcustomer.phone,tblcustomer.email "
				."from tblorder,tblcustomer,tblshopowner,tblshop,menu "
				."where menu.item_id=tblorder.fk_item_id "
				."and tblcustomer.cust_id=tblorder.fk_cust_Id "
				."and tblshopowner.owner_id=tblorder.fk_owner_id "
				."and tblshopowner.email=tblshop.fk_email "
		        ."and tblorder.fk_owner_id=".$_POST['order_shop_id']." "
                ."and tblorder.date_time='".$_POST['order_date_time']."'";
				  			
		if($result = mysqli_query($con, $sql)){
          if(mysqli_num_rows($result) > 0){
            // user record
		    $order = array();		
			while ($row = mysqli_fetch_array($result)) {
				
					array_push($order, array(
						"shop"=>$row["shop_name"],
						"item"=>$row["description"],
						"price"=>$row["price"],
						"cname"=>$row["name"],
						"csurname"=>$row["lastname"],
						"cphone"=>$row["phone"],
						"cemail"=>$row["email"])
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
	//echo "ERROR: Could not query";
	}
   }
 }  
?>
	