<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
		$name = $_POST['cname'];
		$lastname = $_POST['csurname'];
		$phone = $_POST['cphone'];
		$email = $_POST['cusername'];
		$password = $_POST['cpassword'];
		
	//	if (isset($name) && isset($lastname) isset($phone) && isset($email) && isset($username) && isset($password)) {
			
		require_once('dbConnect.php');
		
		//$pass_ecrypted = md5($password);
		
		$sql = "select * from tblcustomer where email='$email'";
		
		$check = mysqli_fetch_array(mysqli_query($con,$sql));
			
		if(isset($check))
		{
			echo 'Email address already exists. Please provide another email address';
		}
		else
		{				
			$sql = "insert into tblcustomer (name,lastname,phone,email) VALUES('$name','$lastname','$phone','$email')";
			$sqlr = "insert into tblrole (fk_email,role) VALUES('$email','Customer')";
			$sqll = "insert into login (fk_email,password) VALUES('$email','$password')";
			
			if(mysqli_query($con,$sql) && mysqli_query($con,$sqlr) && mysqli_query($con,$sqll))
			{
				
				echo 'Successfully registered.';
				
			}
			else
			{
				echo 'Registration Failed. Please try again!';
			}
		}
		mysqli_close($con);
		
//	} else {
		
	//	echo "All values not provided.";
//	}
		
}
else
{
  echo 'POST Error';
}
?>