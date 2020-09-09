<?php 



class save_post{


public $user_id;
public $post_id;
public $post_title;


public function save($user_id,$post_id,$post_title){

$this->user_id=$_POST['uid'];
$this->post_id=$_POST['pid'];
$this->post_title=$_POST['post_title_saved'];
 $mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");


$sql="SELECT * from saved_post where user_id='$this->user_id' and post_id='$this->post_id'";
$result = $mysqli->query($sql);

if ($result->num_rows > 0) { 

echo "Already saved";

}else{

    $sql="INSERT into saved_post (user_id,post_id,post_title)
values ('$this->user_id','$this->post_id','$this->post_title')";


$result = $mysqli->query($sql);
echo "Saved";
}



}









}














?>