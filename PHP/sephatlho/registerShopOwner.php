<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
		$name = $_POST['oname'];
		$lastname = $_POST['osurname'];
		$phone = $_POST['ophone'];
		$shopName = $_POST['oshop'];
		$address = $_POST['oaddress'];
		$email = $_POST['ousername'];
		$password = $_POST['opassword'];
		

		require_once('dbConnect.php');
		
		$sql = "SELECT * FROM tblshopowner WHERE  email='$email' and shopName = '$shopName'";
		
		$check = mysqli_fetch_array(mysqli_query($con,$sql));
			
		if(isset($check))
		{
			echo 'Email address or shop name already exist,Please provide another email address';
		}
		else
		{	
			$sql = "insert into tblshopowner(name,lastname,phone,email) VALUES('$name','$lastname','$phone','$email')";
			$sqlr = "insert into tblrole(fk_email,role) VALUES('$email', 'Shop Owner')";
			$sqll = "insert into login(fk_email,password) VALUES('$email','$password')";
			$sqls = "insert into tblshop(fk_email,shop_name,address,url_image) VALUES('$email','$shopName','$address', 'my.jpg')";
			
			if(mysqli_query($con,$sql) && mysqli_query($con,$sqlr) && mysqli_query($con,$sqll) && mysqli_query($con,$sqls))
			{
				
				echo 'Successfully registered';
				
			}
			else
			{
				echo 'Registration Failed! Please try again!';
			}
		}
		mysqli_close($con);
		
}
else
{
  echo 'error when registering shop owner...!!';
}
?>