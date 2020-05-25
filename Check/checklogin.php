<?php
    session_start();
    include("../ConnectDB/connectDB.php");
    
    $email = $_POST['email'];
    $pass = $_POST['pass'];
     //$pass = md5($_POST['pass']);


    $sql1 = "select * from customers where email='$email' and pass='$pass';";
    $resultck = mysqli_query($link, $sql1);
   //$num1 = MYSQLI_NUM_ROWS($sql1);
         if($email == "")
         {
                 echo"<script>";
                 echo"window.location.href='../Login/frmlogin.php?email=not';";
                 echo"</script>";
         }
             else if($pass == "")
             {
                echo"<script>";
                echo"window.location.href='../Login/frmlogin.php?pass=not';";
                echo"</script>";
             }
             else if(!mysqli_num_rows($resultck))
             {
                echo"<script>";
                echo"window.location.href='../Login/frmlogin.php?found=true';";
                echo"</script>";
             }
             else 
             {
                 $sql = "select * from customers where email = '$email' and pass = '$pass';";
                 $resultget = mysqli_query($link, $sql);
                 
                 if(mysqli_num_rows($resultget) <= 0){
                     echo"<meta http-equiv-'refress' content='1;URL=../Login/frmlogin.php'>";
                 }
                 else{
                     while($user = mysqli_fetch_array($resultget))
                     {                       
                        $_SESSION['ses_id'] = session_id();
                        $_SESSION['cus_id'] = $user['cus_id'];
                        $_SESSION['email'] = $user['email'];
                        $_SESSION['cus_name'] = $user['cus_name'];
                        $_SESSION['cus_surname'] = $user['cus_surname'];
                        $_SESSION['gender'] = $user['gender'];
                        $_SESSION['tel'] = $user['tel'];
                        $_SESSION['tel_app'] = $user['tel_app'];
                        $_SESSION['address'] = $user['address'];
                        echo"<meta http-equiv='refresh' content='1;URL=../index.php?login=true'>";
                         
                    }
                } 
            }   
?>
