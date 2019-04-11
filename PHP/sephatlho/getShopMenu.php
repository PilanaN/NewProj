<?php

	if($_SERVER['REQUEST_METHOD']=='GET')
	{
	 // $_REQUEST variable contains the contents of both $_GET, $_POST, and $_COOKIE
	//	$shopID = $_REQUEST['fk_owner_id'];
		$shop = $_GET['fk_email'];
	
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
	