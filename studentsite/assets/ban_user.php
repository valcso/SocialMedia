<?php 
/*if(!isset($_POST['ban_user_id'])){
    header("location:../index.php");
}
*/
class ban_user{

public $user_id;

public function user_ban($id){

$this->user_id=$id;

$mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
$sql="SELECT * from users where user_id='$this->user_id' and banned='1'";
$result = $mysqli->query($sql);


if ($result->num_rows > 0) {   
    echo "Already banned !";

}else{


    $sql="UPDATE users SET banned='1' where user_id='$this->user_id'";
$result = $mysqli->query($sql);

echo "Banned";
}



}


}











?>