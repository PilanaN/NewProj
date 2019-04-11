<?php
	if($_SERVER['REQUEST_METHOD']=='POST')
	{

		$menu_item_id = $_POST['item_id'];
		$desc = $_POST['desc'];
		$price = $_POST['price'];
		
	 if (isset($menu_item_id) && isset($desc) && isset($price)) {
			require_once('dbConnect.php');
			
		 // Check connection
			if($con === false){
			   die("ERROR: Could not connect. " . mysqli_connect_error());
			}
			
			$sql = "update menu set description='$desc', price=$price where menu.item_id=$menu_item_id";
				  
			if (mysqli_query($con, $sql)){
				echo "Menu updated";
			} else {
				echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
			}
     // Close connection
        mysqli_close($con);	  
		 
	 } else {
 		echo "Please provide all the values.";  
	 }
  }   
  else
  {
		echo "POST Request Error.";
  }
?>
	