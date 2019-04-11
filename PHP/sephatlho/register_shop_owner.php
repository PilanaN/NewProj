<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
		$name = $_POST['name'];
		$lastname = $_POST['surname'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		$shopName = $_POST['shopname'];
		$address = $_POST['address'];
		$username = $_POST['username'];
		$password = $_POST['password'];
		$idNum = $_POST['idno'];
		

		require_once('db_connection.php');
		$sql = "SELECT * FROM tblshopowner WHERE  email='$email' and shopName = '$shopName'";
		
		$check = mysqli_fetch_array(mysqli_query($con,$sql));
			
		if(isset($check))
		{
			echo 'Email address or shop name already exists,Please provide another email address';
		}
		else
		{	
			$sql = "insert into tblshopowner (name,lastname,phone,email,shopName,address,username,password,id_num) VALUES('$name','$lastname','$phone','$email','$shopName','$address','$username','$password','$idNum')";
			
			if(mysqli_query($con,$sql))
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