<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$conn = mysqli_connect("localhost", "root", "", "krupalphp");
if(!$conn){
    die('Failed to Connect');
}

$enroll = $_POST['enroll'];
$year = $_POST['year'];


$sql = "insert into user value('".$_POST['name']."',$enroll,$year)";

if(mysqli_query($conn, $sql)){
    header("Location: index.php");
}
