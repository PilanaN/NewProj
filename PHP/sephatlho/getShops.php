<?php
  if ($_SERVER["REQUEST_METHOD"]=='POST') {
	require_once('dbConnect.php');
		
	$sql = "select * from tblshop order by tblshop.id LIMIT 0, 50";
		
	if($r = mysqli_query($con, $sql)){
       if(mysqli_num_rows($r) > 0){
		$result = array();
		while ($res = mysqli_fetch_array($r)) {

			array_push($result, array(
			 "id"=>$res['id'],
			 "name"=>$res['shop_name'],
			 "address"=>$res['address'],
			 "email"=>$res['fk_email'],
			 "image_url"=>$res['url_image']
			 )
			);
		}
		// Close result set
        mysqli_free_result($r);
		// display the result
		   echo json_encode(array("shop"=>$result));
	   } else {
		    echo "No records matching your query were found.";
	   }
	} else {
		
	//  echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
	    echo "ERROR: Could not be able to execute query";
	}
	// Close connection
	mysqli_close($con);
   }
	
?>