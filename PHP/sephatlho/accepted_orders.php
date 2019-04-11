<?php
	if($_SERVER['REQUEST_METHOD']=='GET') {
		//Check if the shop id was provided
			
		   //Connect to the database
		    require_once('dbConnect.php');
				
			$sql = "select oder_ID,menuDesc,price,num_item,tblcustomer.name,tblcustomer.lastname,tblcustomer.phone,tblcustomer.email,tblcustomer.id_num,tblshopowner.shopName,tblshopowner.email,tblshopowner.address,date_Time,status "
				  ."from tblorder,tblcustomer,tblshopowner,tblmenu "
				  ."where tblmenu.menuID=tblorder.fk_item_id "
				  ."and tblcustomer.custID=tblorder.fk_cust_ID "
				  ."and tblshopowner.shopID=tblorder.fk_owner_ID "
				  ."and status='Accepted' "
				  ."and tblorder.fk_owner_ID=".$_GET['fk_owner_ID'];
				  			
		if($result = mysqli_query($con, $sql)){
          if(mysqli_num_rows($result) > 0){
            //user record
		    $order = array();		
			while ($row = mysqli_fetch_array($result)) {
				
					array_push($order, array(
						"order_no"=>$row["oder_ID"],
						"item"=>$row["menuDesc"],
						"price"=>$row["price"],
						"quantity"=>$row["num_item"],
						"cname"=>$row["name"],
						"csurname"=>$row["lastname"],
						"cphone"=>$row["phone"],
						"cemail"=>$row["email"],
						"id_number"=>$row["id_num"],
						"shop"=>$row["shopName"],
						"owner_email"=>$row["email"],
						"shop_address"=>$row["address"],
						"order_date_time"=>$row["date_Time"],
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
?>
	