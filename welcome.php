<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
</style>
    </head>
    
    <body>
            <ul>
              <li><a href="index.php">Home</a></li>
              <li><a href="login.html">login</a></li>
              <li><a href="register.html">Register</a></li>
              <li><a href="logout.php">logout</a></li>
            </ul>
        <?php
            $conn = mysqli_connect("localhost", "root", "", "krupalphp");
            if(!$conn){
                die('Failed to Connect');
            }
            session_start();
            $enroll = $_SESSION['enroll'];
            $name = $_SESSION['uname'];
            
            $sql = "select * from user where name = '".$name."' and enroll = $enroll ";
            $result = mysqli_query($conn, $sql);
            if(mysqli_num_rows($result)>0){
                $row = mysqli_fetch_assoc($result);
                $year = $row['year'];
            }
            
            if($year==2){
                $tbname = "year2";
            }else if($year==3){
                $tbname= "year3";
            }else if($year==4){
                $tbname= "year4";
            }
            
            $query = "select * from $tbname where enrol = $enroll";
            
            $result1 = mysqli_query($conn, $query);
            
            if(mysqli_num_rows($result)>0){
                $i = 0;
                echo '<table border="1">'
                . '<tr>';
                while ($i < mysqli_num_fields($result))
                {
                        $meta = mysqli_fetch_field_direct($result1, $i);
                        echo '<td>' . $meta->name . '</td>';
                        $i = $i + 1;
                }
                
                echo '</tr>';
                ?>
               <?php 
                    $i = 0;
                    while ($row = mysqli_fetch_row($result1)) 
                    {
                         echo '<tr>';
                         $count = count($row);
                         $y = 0;
                         while ($y < $count)
                         {
                                 $c_row = current($row);
                                 echo '<td>' . $c_row . '</td>';
                                 next($row);
                                 $y = $y + 1;
                         }
                         echo '</tr>';
                         $i = $i + 1;
                    }
                    echo '</table></body></html>';
                    mysqli_free_result($result);
                    
                         }
                ?>
    </body>
</html>
