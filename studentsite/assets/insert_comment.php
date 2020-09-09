<?php 
include_once 'database.php';

class insert_comment extends database {

public $post_id;
public $user_id;
public $comment_text;






public function upload_comment($post_id,$user_id,$comment_text){


$this->post_id=$_POST['post_id'];
$this->user_id=$_POST['user_id'];
$mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");

$sql="SELECT * from users where user_id='$this->user_id'";
$result = $mysqli->query($sql);
while($row = $result->fetch_assoc()) { 

    $this->author=$row['full_name'];
}


//$this->comment_text=$_POST['comment'];

$mysqli =  new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");



$this->comment_text=$mysqli-> real_escape_string($_POST['comment']);



$sql="INSERT into comment (post_id,user_id,comment_text,comment_author)
values ('$this->post_id','$this->user_id','$this->comment_text','$this->author')";
$result = $mysqli->query($sql);

/*$m='NULL';
$sql2="INSERT into rating(comment_id,rated_user)
values('$last_id','$this->user_id');
";
$result2 = $mysqli->query($sql2);*/



//header("Refresh:0");


}

}

















?>