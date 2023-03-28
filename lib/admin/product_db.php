<?php 
include('../condb.php');
// echo "<pre>";
// print_r($_POST);
// print_r($_FILES);
// echo "</pre>";

// exit();



if (isset($_POST['product']) && $_POST['product']=="add") {
echo "ADD";
$pd_id = mysqli_real_escape_string($condb,$_POST["pd_id"]);
$pd_name = mysqli_real_escape_string($condb,$_POST["pd_name"]);
$pd_detail = mysqli_real_escape_string($condb,$_POST["pd_detail"]);
$pd_price = mysqli_real_escape_string($condb,$_POST["pd_price"]);


$date1 = date("Ymd_His");
$numrand = (mt_rand());
$pd_img = (isset($_POST['pd_img']) ? $_POST['pd_img'] : '');
$upload=$_FILES['pd_img']['name'];
if($upload !='') { 

  $path="../images/";
  $type = strrchr($_FILES['pd_img']['name'],".");
  $newname =$numrand.$date1.$type;
  $path_copy=$path.$newname;
  // $path_link="../pd_img/".$newname;
  move_uploaded_file($_FILES['pd_img']['tmp_name'],$path_copy);  
}else{
  $newname='';
}

$check = "
SELECT pd_id 
FROM tb_pd  
WHERE pd_id = '$pd_id'
";
  $result1 = mysqli_query($condb, $check) or die(mysqli_error());
  $num=mysqli_num_rows($result1);

  if($num > 0)
  {
    echo "<script>";
    
    echo "window.location = 'product.php?product_error=product_error'; ";
    echo "</script>";
  }else{

  
$sql = "INSERT INTO tb_pd
(
pd_id,
pd_name,
pd_detail,
pd_price,
pd_img
)
VALUES
(
'$pd_id',
'$pd_name',
'$pd_detail',
'$pd_price',
'$newname'
)";

$result = mysqli_query($condb, $sql) or die ("Error in query: $sql " . mysqli_error($condb). "<br>$sql");

}
//exit();
//mysqli_close($condb);

if($result){
echo "<script type='text/javascript'>";
//echo "alert('เพิ่มข้อมูลเรียบร้อย');";
echo "window.location = 'product.php?product_add=product_add'; ";
echo "</script>";
}else{
echo "<script type='text/javascript'>";
echo "window.location = 'product.php?product_add_error=product_add_error'; ";
echo "</script>";
}






} elseif (isset($_POST['product']) && $_POST['product']=="edit") {

    $pd_id = mysqli_real_escape_string($condb,$_POST["pd_id"]);
	// $pd_id = mysqli_real_escape_string($condb,$_POST["pd_id"]);
	$pd_name = mysqli_real_escape_string($condb,$_POST["pd_name"]);
	
	$pd_detail = mysqli_real_escape_string($condb,$_POST["pd_detail"]);
	$pd_price = mysqli_real_escape_string($condb,$_POST["pd_price"]);
	$pd_img2 = mysqli_real_escape_string($condb,$_POST['pd_img2']);


	$date1 = date("Ymd_His");
	$numrand = (mt_rand());
	$pd_img = (isset($_POST['pd_img']) ? $_POST['pd_img'] : '');
	$upload=$_FILES['pd_img']['name'];
	if($upload !='') { 

		$path="../images/";
		$type = strrchr($_FILES['pd_img']['name'],".");
		$newname =$numrand.$date1.$type;
		$path_copy=$path.$newname;
		// $path_link="pd_img/".$newname;
		move_uploaded_file($_FILES['pd_img']['tmp_name'],$path_copy);  
	}else{
		$newname=$pd_img2;
	}
	$sql = "UPDATE tb_pd SET 
	pd_id='$pd_id',	
	pd_name='$pd_name',
	pd_detail='$pd_detail',
	pd_price='$pd_price',
	pd_img='$newname'
	WHERE pd_id=$pd_id" ;

	$result = mysqli_query($condb, $sql) or die ("Error in query: $sql " . mysqli_error($condb). "<br>$sql");
	mysqli_close($condb);
	
	if($result){
	echo "<script type='text/javascript'>";
	//echo "alert('แก้ไขข้อมูลเรียบร้อย');";
	echo "window.location = 'product.php?pd_id=$pd_id&&product_edit=product_edit'; ";
	echo "</script>";
	}else{
	echo "<script type='text/javascript'>";
	echo "window.location = 'product.php?pd_id=$pd_id&&product_edit_error=product_edit_error'; ";
	echo "</script>";
	}


}else if (isset($_GET['product']) && $_GET['product']=="del"){
	// print_r($_GET);	
	// exit();
	$pd_id  = mysqli_real_escape_string($condb,$_GET["pd_id"]);
	$sql = "DELETE FROM tb_pd WHERE pd_id = $pd_id";
	$result = mysqli_query($condb, $sql) or die ("Error in query: $sql " . mysqli_error($condb). "<br>$sql");
	mysqli_close($condb);

	if($result){
		echo "<script type='text/javascript'>";
		//echo "alert('แก้ไขข้อมูลเรียบร้อย');";
		echo "window.location = 'product.php?pd_id=$pd_id&&product_del=product_del'; ";
		echo "</script>";
		}else{
		echo "<script type='text/javascript'>";
		echo "window.location = 'product.php?pd_id=$pd_id&&product_del_error=product_del_error'; ";
		echo "</script>";
		}

}else{




}

?>