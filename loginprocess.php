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

// Report simple running errors
error_reporting(E_ERROR | E_PARSE);

$name = $_POST['name'];
$pass = $_POST['enroll'];

$sql = "select * from user where name = '".$name."' and enroll = $pass";

$result = mysqli_query($conn, $sql);

if(mysqli_num_rows($result)==1){
    session_start();
    $_SESSION['uname']=$name;
    $_SESSION['enroll']=$pass;
    header("Location: welcome.php");
} else {
    echo 'register please, Redirecting...';
    ?>
      <script>
            setTimeout("location.href = 'http://localhost/KrupalProject/register.html';",1500);
      </script>
    <?php
}
