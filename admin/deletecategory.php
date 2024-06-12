<?php
include('includes/dbconnection.php');
error_reporting(0);
session_start();
$cid=$_GET['editid'];

$query=mysqli_query($con,"DELETE FROM tblcategory WHERE ID = '".$_GET['editid']."'");
header("location:manage-foodcategory.php");  

   
   
?>