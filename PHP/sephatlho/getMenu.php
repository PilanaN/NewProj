<?php

	if($_SERVER['REQUEST_METHOD']=='POST')
	{
		$shop = $_POST['fk_email_shop'];
	
		require_once('dbConnect.php');
		
		$sql = "select * from menu where menu.fk_email_shop='$shop'";
		
        $r = mysqli_query($con, $sql);
		$result = array();
		while ($res = mysqli_fetch_array($r)) {

			array_push($result, array(
			 "id"=>$res['item_id'],
			 "description"=>$res['description'],
			 "price"=>$res['price']
			 )
			);
				
		}
	    mysqli_close($con);
	    echo json_encode(array("menu"=>$result));
	}
?>
	