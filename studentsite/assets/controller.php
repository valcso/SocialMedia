<?php 
header('Content-Type: application/json; charset=utf-8');

include 'register.php';
include 'login.php';
include 'upload.php';
include 'insert_comment.php';
include 'save_post.php';
include 'insert_rating.php';
include 'delete_post.php';
include 'ban_user.php';
include 'comment_delete.php';
include 'unban.php';


if($_SERVER['REQUEST_METHOD'] !== 'POST'){
    
    header("location:http://studentvts.000webhostapp.com/student2/index.php");
}








if(isset($_POST['fullname']) && isset($_POST['email']) && isset($_POST['specialization'])
&& isset($_POST['password'])){

  $hash=md5(rand(0,1000));
  $register=new register();
  $pass=md5($_POST['password']);
    $register->insert_user($_POST['fullname'],$_POST['email'],$pass,$_POST['specialization'],$hash);



}

if(isset($_POST['email_login']) && isset($_POST['password_login'])){

$password=md5($_POST['password_login']);
$email=$_POST['email_login'];


$login=new login();
$login->login_user($email,$password);

}


/*if(isset($_POST['post_text'])  && isset($_POST['image']) && isset($_POST['extension']) ){
  

  $upload=new upload();
  $upload->upload_files($_POST['post_text'],$_POST['image'],$_POST['size'],$_POST['extension'],$_POST['category'],$_POST['tmp']);


}*/


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  if (isset($_FILES['file'])) {
    
    

          $file_name = $_FILES['file']['name'];
          $file_tmp = $_FILES['file']['tmp_name'];
          $file_type = $_FILES['file']['type'];
          $file_size = $_FILES['file']['size'];
          $post_text=$_POST['text'];
          $category=$_POST['category'];          
          $title=$_POST['title'];
          $upload=new upload();
          $upload->upload_files($file_name,$file_tmp,$file_type,$file_size,$post_text,$category,$title);

 echo $category;
        
  }


}


if(isset($_POST['user_id']) && isset($_POST['post_id']) && isset($_POST['comment'])){

 echo  $user_id= $_POST['user_id'];
echo $post_id= $_POST['post_id'];
 echo $comment= $_POST['comment'];




$obj=new insert_comment();
$obj->upload_comment($user_id,$post_id,$comment);


}

if(isset($_POST['uid']) && isset($_POST['pid']) && isset($_POST['post_title_saved'])){

$obj=new save_post();
$obj->save($_POST['uid'],$_POST['pid'],$_POST['post_title_saved']);



}

if(isset($_POST['rating']) && isset($_POST['to_comment_id']) && isset($_POST['from_id'])){

$obj=new rating();
$obj->set_rating($_POST['rating'],$_POST['to_comment_id'],$_POST['from_id'],$_POST['usr_id']);

}

if(isset($_POST['delete_post_id'])){
 $obj=new deletePost();
 $obj->delete_post($_POST['delete_post_id']);
}

if(isset($_POST['ban_user_id'])){
 
$obj=new ban_user();
$obj->user_ban($_POST['ban_user_id']);

}

if(isset($_POST['delete_comment_id'])){

$obj=new comment_delete();
$obj->delete_comment($_POST['delete_comment_id']);
}

if(isset($_POST['unban_user_id'])){
    $obj=new unban();
    $obj->user_unban($_POST['unban_user_id']);
}


?>