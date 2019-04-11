<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
	
		$custId = $_POST['order_cust_id'];
		$itemId = $_POST['order_menu_item_id'];
		$fk_shop_id = $_POST['order_shop_id'];
		$date_time = $_POST['order_date_time'];
		$item_qty = $_POST['order_item_qty'];
		$status = $_POST['order_status'];
		
	// Verify if the correct username and password have been supplied
//	if (isset($custId) && isset($itemId) && isset($fk_shop_id) 
//		&& isset($date_time) && isset($item_qty) && isset($status)) {
			
		//connect to the database
		require_once('dbConnect.php');
		
		// Check connection
		if($con === false){
			die("ERROR: Could not connect. " . mysqli_connect_error());
		}
		
		//save a customer order into the database
		$sql = "INSERT INTO tblorder (fk_cust_Id,fk_item_id,fk_owner_id,date_time,qty,status) VALUES('$custId','$itemId','$fk_shop_id','$date_time','$item_qty','$status')";
		if(mysqli_query($con,$sql))
		{	
	       // give a customer feedback about an order that had just been successfully placed
		   // separated by a delimiter @
			echo 'Order has been placed@You will be notified when your order is ready.';
		}
		else
		{
			// give a customer feedback about an order not successfully placed
			echo 'Please try again.';
		}
	//} else {
		
	//	echo 'All the required details were not supplied to successfully place an order.';
	//}
	mysqli_close($con);	
}
else
{
  echo 'Error. Request unsuccessful.';
}
?>