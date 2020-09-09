<?php 
session_start();
$post_id=" ";
if(!isset($_GET['id'])){

 header("location:index.php");

}else{

$post_id=$_GET['id'];
}
include 'assets/database.php';
include 'assets/header.html';
include 'assets/navigation.php';
include 'assets/popup/about_us.html';
include 'assets/popup/rules.html';
include 'assets/popup/login.html';

class single_post extends database {

public $post_id;
public $user_id;
public $uid;


public function  show_single_post(){

$this->post_id=$_GET['id'];
$this->uid=$_SESSION['user_id'];
$this->user_id=$_SESSION['user_id'];

$sql="SELECT * FROM users


LEFT JOIN posts
ON posts.user_id = users.user_id 
LEFT JOIN files
ON files.post_id = posts.post_id
where posts.post_id='$this->post_id '
"; 
    

    $result = $this->connect()->query($sql);


    while($row=$result->fetch_assoc()){


        $id=$row['post_id'];
        $post_comment=nl2br($row['post_comment']);
        $file_name=$row['file_name'];
        $full_name=$row['full_name'];
        $category=$row['post_category'];
        $title=$row['title'];
        $id=$row['post_id'];
        $rated_id=$row['user_id'];
        $time=$row['time'];
        $sql3="SELECT AVG(rating) as cmt from rating where rated_user='$rated_id'";
        $result3 = $this->connect()->query($sql3);
        $row3=$result3->fetch_assoc();
        
        $sql4="SELECT count(from_id) as frm from rating where rated_user='$rated_id'";
        $result4 = $this->connect()->query($sql4);
        $row4=$result4->fetch_assoc();
        $cmt=$row3['cmt'];

        $ciid=$row4['frm'];

    
    }

    
    if($_SESSION['role'] == "admin"){ 
   
    echo "<br>";
echo "<br>";

   echo "<div class='container-fluid'>";
   echo "  <div class='alert alert-success' id='save_post_check' role='alert'>
   
   </div><div class='alert alert-danger' id='save_post_check' role='alert'>  </div>";
   echo "<p id='pst_delete'></p"; 
   echo "<div class='row'>";
    
   
   echo "<div class='col-xl-10 col-md-10 col-sm-10' id='single_post_div'>";
   echo "<h5 class='post_title2'> [ $category ]: $title </h5>
   <p class='single_post_date'>$time</p> 
    <p class='post_content'>[ Problem ]: $post_comment</p>
    <div class='row'>
    <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='usr_info'><img src='images/avatar.png' id='avatar'><h6 class='post_user2'> $full_name </h6>
    File: <a class='download' href='assets/download.php?file=$file_name'> $file_name (download)</a></div>
    <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='act_btn'><button type='button' class='btn btn-secondary' id='ban' onclick=\"user_ban('" . $rated_id . "');\">Ban</button> <button type='button' class='btn btn-warning' id='save' onclick=\"save_post('" .$this->uid. "','" . $this->post_id . "','" . $title . "');\"><i class='fas fa-save'></i> Save</button><button type='button' class='btn btn-danger' id='remove_p' onclick=\"delete_comment('" . $this->post_id . "');\"><i class='fas fa-trash-alt'></i> Delete</button></div>
   
    </div>
    </div> 




    <div class='col-xl-10 col-md-10 col-sm-10' id='add_comment_div'>
    <label for='exampleFormControlTextarea1' id='lab'>New comment</label>
  <textarea class='form-control' id='exampleFormControlTextarea1' rows='3'></textarea>
<button type='button' class='btn btn-success' id='send_btn' onclick=\"insert_comment('" . $this->user_id . "','" . $this->post_id . "');\">Send</button></div>";
echo "</div>";
     
   } else if($_SESSION['user_id'] == $rated_id){

      echo "<br>";
      echo "<br>";
      
         echo "<div class='container-fluid'>";
         echo "  <div class='alert alert-success' id='save_post_check' role='alert'>
   
         </div><div class='alert alert-danger' id='save_post_check' role='alert'>  </div>";
         echo "<div class='row'>";
       
         echo "<div class='col-xl-10 col-md-10 col-sm-10' id='single_post_div'>";
         echo "<h5 class='post_title2'> [ $category ]: $title </h5>
         <p class='single_post_date'>$time</p> 
          <p class='post_content'>[ Problem ]: $post_comment</p>
          <div class='row'>
          
<div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='usr_info'><img src='images/avatar.png' id='avatar'><h6 class='post_user2'> $full_name </h6>
          File: <a class='download' href='assets/download.php?file=$file_name'> $file_name (download)</a></div>
          <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='act_btn'> <button type='button' class='btn btn-warning' id='save' onclick=\"save_post('" .$this->uid. "','" . $this->post_id . "','" . $title . "');\"><i class='fas fa-save'></i> Save</button><button type='button' class='btn btn-danger' id='remove_p' onclick=\"delete_comment('" . $this->post_id . "');\"><i class='fas fa-trash-alt'></i> Delete</button></div>
         

          </div>
          </div>
          <div class='col-xl-10 col-md-10 col-sm-10' id='add_comment_div'>
          <label for='exampleFormControlTextarea1' id='lab'>New comment</label>
        <textarea class='form-control' id='exampleFormControlTextarea1' rows='3'></textarea>
      <button type='button' class='btn btn-success' id='send_btn' onclick=\"insert_comment('" . $this->user_id . "','" . $this->post_id . "');\">Send</button></div>";
      echo "</div>";
    
     



   }
   else{

      echo "<br>";
      echo "<br>";
      
         echo "<div class='container-fluid'>";
         echo "  <div class='alert alert-success' id='save_post_check' role='alert'>
   
         </div><div class='alert alert-danger' id='save_post_check' role='alert'>  </div>"; 
         echo "<div class='row'>";
       
         echo "<div class='col-xl-10 col-md-10 col-sm-10' id='single_post_div'>";
         echo "<h5 class='post_title2'> [ $category ]: $title </h5>
         <p class='single_post_date'>$time</p> 
          <p class='post_content'>[ Problem ]: $post_comment</p>
          <div class='row'>
          <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='usr_info'><img src='images/avatar.png' id='avatar'><h6 class='post_user2'> $full_name </h6>
          File: <a class='download' href='assets/download.php?file=$file_name'> $file_name (download)</a></div>
          <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='act_btn'> <button type='button' class='btn btn-warning' id='save_user_role' onclick=\"save_post('" .$this->uid. "','" . $this->post_id . "','" . $title . "');\"><i class='fas fa-save'></i> Save</button></div>
         
          </div>
          </div>
          <div class='col-xl-10 col-md-10 col-sm-10' id='add_comment_div'>
          <label for='exampleFormControlTextarea1' id='lab'>New comment</label>
        <textarea class='form-control' id='exampleFormControlTextarea1' rows='3'></textarea>
      <button type='button' class='btn btn-success' id='send_btn' onclick=\"insert_comment('" . $this->user_id . "','" . $this->post_id . "');\">Send</button></div>";
      echo "</div>";
     
   
   
   
   }

}
   
   public function show_comments(){

    
   /* $sql="SELECT * FROM users
    LEFT JOIN posts
    ON posts.user_id = users.user_id
    LEFT JOIN comment
    ON comment.post_id = posts.post_id
      where comment.post_id='$this->post_id'";*/
      $sql="SELECT * from comment where post_id='$this->post_id'";

$result = $this->connect()->query($sql);
$from_id=$_SESSION['user_id'];
$comment=" ";

//$sql4="SELECT  AVG(rating) as rate from rating where rated_user=''"



echo "<div class='col-xl-10 col-md-10 col-sm-10' id='single_post_title'>";
echo"<h4 class='title'>Comments:</h4>";
echo "</div>";
$cmt=" ";
while($row=$result->fetch_assoc()){


       $comment=nl2br($row['comment_text']);
  $author=$row['comment_author'];  
  $time=$row['time'];
  $comment_id=$row['comment_id'];
  $usr_id=$row['user_id'];
  //$nm=$row['full_name'];
  $rated_id=$row['user_id'];
  $sql3="SELECT ROUND(AVG(rating),2) as cmt from rating where rated_user='$usr_id' and comment_id='$comment_id'";
  $result3 = $this->connect()->query($sql3);
  $row3=$result3->fetch_assoc();
  $cmt=$row3['cmt'];
  
$sql4="SELECT count(from_id) as frm from rating where rated_user='$rated_id' and comment_id='$comment_id'";
        $result4 = $this->connect()->query($sql4);
        $row4=$result4->fetch_assoc();
      


        $ciid=$row4['frm'];


      

        if($_SESSION['role'] == 'admin' && $_SESSION['user_id'] !== $row['user_id']){ 




        echo "<div class='col-xl-10 col-md-10 col-sm-10' id='single_post_comments'>
        <img src='images/avatar.png' id='avatar'><h6 class='post_user2'>$author <b class='alert_msg'>commented on your post</b></h6> 
        <p class='single_post_date'>$time</p>
        <p class='post_content'>$comment</p>
        <div class='row'>
        <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='usr_info'><p class='rating1'>  $cmt ($ciid) rating
        </p></div>
        <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='act_btn_comment'><button type='button' class='btn btn-secondary' id='ban' onclick=\"user_ban('" . $usr_id . "');\">Ban</button>  <button type='button' class='btn btn-danger' id='remove_p' onclick=\"comment_delete('" .$comment_id. "');\"><i class='fas fa-trash-alt'></i> Delete</button></div> 
        <div class='col-xl-12 col-lg-12 col-md-12 col-sm-12'>
   Rate: <select  id=".$row['comment_id']." name=".$from_id."   onchange=\"rating_button(this,'" .$usr_id . "');\" > 
				
   <option>-</option>
   <option value='1'>1</option>
   <option value='2'>2</option>

   <option value='3'>3</option>

   <option value='4'>4</option>

   <option value='5'>5</option>
 
 </select>
   </div>
        </div>";

echo "</div>";

        }else if($_SESSION['role'] == 'admin' && $_SESSION['user_id'] == $row['user_id']){

 
         echo "<div class='col-xl-10 col-md-10 col-sm-10' id='single_post_comments'>
         <img src='images/avatar.png' id='avatar'><h6 class='post_user2'>$author <b class='alert_msg'>commented on your post</b></h6> 
         <p class='single_post_date'>$time</p>
         <p class='post_content'>$comment</p>
         <div class='row'>
         <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='usr_info'><p class='rating1'> $cmt ($ciid) rating </p></div>
         <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='act_btn_comment'><button type='button' class='btn btn-secondary' id='ban' onclick=\"user_ban('" . $usr_id . "');\">Ban</button>  <button type='button' class='btn btn-danger' id='remove_p' onclick=\"comment_delete('" .$comment_id. "');\"><i class='fas fa-trash-alt'></i> Delete</button></div> 
   
         </div>";
 
 echo "</div>";


        }
  else if($_SESSION['user_id'] == $row['user_id']){


   echo "<div class='col-xl-10 col-md-10 col-sm-10' id='single_post_comments'>
   <img src='images/avatar.png' id='avatar'><h6 class='post_user2'>$author <b class='alert_msg'>commented on your post</b></h6> 
   <p class='single_post_date'>$time</p>
   <p class='post_content'>$comment</p>
   <div class='row'>
   <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='usr_info'><p class='rating1'>  $cmt ($ciid) rating </p></div>
   </div>
   ";
   echo "</div>";

  }else{


   echo "<div class='col-xl-10 col-md-10 col-sm-10' id='single_post_comments'>
   <img src='images/avatar.png' id='avatar'><h6 class='post_user2'>$author <b class='alert_msg'>commented on your post</b></h6> 
   <p class='single_post_date'>$time</p>
   <p class='post_content'>$comment</p>
   <div class='row'>
   <div class='col-xl-5 col-lg-6 col-md-12 col-sm-12' id='usr_info_3'><p class='rating1'>  $cmt ($ciid) rating</p></div>
   <div class='col-xl-12 col-lg-12 col-md-12 col-sm-12'>
   Rate: <select  id=".$row['comment_id']." name=".$from_id."   onchange=\"rating_button(this,'" .$usr_id . "');\" > 
				
     <option>-</option>
   <option value='1'>1</option>
   <option value='2'>2</option>

   <option value='3'>3</option>

   <option value='4'>4</option>

   <option value='5'>5</option>
 
 </select>
   </div>
   </div>
   </div>
   ";
  


  }

   }
  

}
 }
$obj=new single_post();
$obj->show_single_post();
$obj->show_comments();


?>

<html>

<script src="js/insert_comment.js"></script>

<script src="js/popup.js"></script>
<script src="js/popup.js"></script>
<script src="js/save_post.js"></script>
<script src="js/rating.js"></script>
<script src="js/delete_post.js"></script>
<script src="js/user_ban.js"></script>
<script src="js/delete_comment.js"></script>
</html>