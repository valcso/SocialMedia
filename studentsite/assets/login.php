<?php 
session_start();
//ob_start();

class login extends database {

private $email_address;
private $password;


public function login_user($email_address,$password){




$pass=$password;
$domain="@vts.su.ac.rs";
$domain2=$email_address;
$domain2.=$domain;

$sql="SELECT * from users where index_number='$domain2' and password='$pass' and status='1' ";
//$result=$this->connect()->query($sql);
//$row_count = $result->num_rows;

$mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
$result = $mysqli->query($sql);

//$conn=$this->connect();
//$query=mysqli_query($conn,"SELECT * from users where index_number='$domain2' and password='$pass' and status='1'");

$_SESSION['user_id']=" ";
$_SESSION['username']=" ";
$_SESSION['logged_in']=" ";
$_SESSION['role']=" ";
$banned=" ";

if($result->num_rows>0){   
while($res = $result->fetch_assoc()){

    $banned=$res['banned'];
    if($banned == 0){
        echo "1";
        $_SESSION['logged_in']=$email_address;
        $_SESSION['user_id']=$res['user_id'];
        $_SESSION['username']=$res['full_name'];
        $_SESSION['role']=$res['role'];
    }
     else if($banned == 1){
      echo "2";

 unset($_SESSION['logged_in']);
        unset($_SESSION['user_id']);
        unset($_SESSION['username']);
        unset($_SESSION['role']);
     }else{

        echo "0";
        unset($_SESSION['logged_in']);
        unset($_SESSION['user_id']);
        unset($_SESSION['username']);
        unset($_SESSION['role']);
         //exit();
     }
    

   
    

    

}
    
}else{
    echo "0";
        unset($_SESSION['logged_in']);
        unset($_SESSION['user_id']);
        unset($_SESSION['username']);
        unset($_SESSION['role']);
}

/*if($row_count > 0 ){

echo "1";

$_SESSION['logged_in']=$email_address;

exit();


}*else{

echo "0";

exit();

}*/



}
}




?>