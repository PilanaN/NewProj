<?php

if($_SERVER['REQUEST_METHOD']=='POST') {
	
	$fk_email_shop = $_POST['fk_shop_email'];
	$item = $_POST['description'];
	$price = $_POST['price'];
	
    if (isset($fk_email_shop) && isset($price) && isset($item)) {
		
		if($item == '' || $price == '') {
		   echo 'Please enter values';
		}
		else
		{
			require_once('dbConnect.php');
			
			// Check connection
			if($con === false){
				die("ERROR: Could not connect. " . mysqli_connect_error());
			}
			
			$sql = "SELECT * FROM menu where description='$item' and price='$price'";
			
			$check = mysqli_fetch_array(mysqli_query($con,$sql));
			
			// check if menu already exists
			if(isset($check))
			{
				echo 'Menu item already added';
			}
			else
			{				
				$sql = "INSERT INTO menu(fk_email_shop, price, description) VALUES('$fk_email_shop','$price','$item')";
				
				// save menu into the  database
				if(mysqli_query($con,$sql))
				{
					echo "$fk_email_shop - $price - $item added";
				}
				else
				{
                  echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
				}
			}
			mysqli_close($con);
		}
		
    } else {
		
	    echo "ERROR: Values not provided.";

	}		
}
?>