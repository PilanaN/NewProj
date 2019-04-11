<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
		$name = $_POST['name'];
		$lastname = $_POST['surname'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		$username = $_POST['username'];
		$password = $_POST['password'];
	    $idNum = $_POST['idno'];
		
		require_once('db_connection.php');
		
		//$pass_ecrypted = md5($password);
		
		$sql = "select * from tblcustomer where email='$email'";
		
		$check = mysqli_fetch_array(mysqli_query($con,$sql));
			
		if(isset($check))
		{
			echo 'Email address already exist,Please provide another email address';
		}
		else
		{				
		//	$sql = "insert into tblcustomer (name,lastname,phone,email,username,password,id_num) VALUES('$name','$lastname','$phone','$email','$username','$pass_ecrypted', '$idNum')";
			$sql = "insert into tblcustomer (name,lastname,phone,email,username,password,id_num) VALUES('$name','$lastname','$phone','$email','$username','$password', '$idNum')";
			
			
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
  echo 'Error occured when registering customer...!';
}
?>