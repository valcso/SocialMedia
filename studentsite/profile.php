<?php 
session_start();
if(!isset($_SESSION['username'])){
 header("location:index.php");
}


 $id= $_SESSION['user_id'];
    $mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
    $sql="SELECT * from users where user_id='$id' and banned='1'";
    $result = $mysqli->query($sql);
    if ($result->num_rows > 0) {
        unset($_SESSION['logged_in']);
        unset($_SESSION['user_id']);
        unset($_SESSION['username']);
        unset($_SESSION['role']);
  header("Location:https://studentvts.000webhostapp.com/student2/index.php");
  
}

include 'assets/database.php';
include 'assets/header.html';
include 'assets/navigation.php';
include 'assets/popup/about_us.html';
include 'assets/popup/rules.html';
include 'assets/popup/login.html';


class profile{

public $profile_id;
public $post_id;

    public function get_profile_post(){

        $this->profile_id=$_SESSION['user_id'];
        
        $mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
      

        $sql="SELECT * FROM saved_post where user_id='$this->profile_id'

"; 
$query="SELECT * from users where user_id='$this->profile_id'";
$run= $mysqli->query($query);
$show_info=$run->fetch_assoc();

$query_info="SELECT count(post_id) as pst from posts where user_id='$this->profile_id'";
$run_info=$mysqli->query($query_info);
$show_run=$run_info->fetch_assoc();

$sql3="SELECT   AVG(rating) as rate ,COUNT(rating) as sum from rating where rated_user='$this->profile_id'";
$result3 = $mysqli->query($sql3);
$row3 = $result3->fetch_assoc();

echo "<div class='col-xl-12 col-lg-12 col-md-12 col-sm-12'><div class='row'>

<div class='col-xl-8 col-lg-8 col-md-8 col-sm-8' style='margin:0 auto;box-shadow: 0 5px 12px rgba(206,205,205,0.8);margin-bottom:10px; margin-top:10px;'>
<div class='row'>
<div class='col-xl-2 col-lg-2 col-md-2 col-sm-2' style='text-align:center'>
<img src='images/avatar.png' id='avatar2'>
</div>
<div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' style='margin-top: 35px;
text-align: center;'>
<h6 id='username' style='font-size:25px;'>".$show_info['full_name']."</h6>
<p id='spec'>".$show_info['specialization']."</p>
<p class='dated'>".$show_info['register_date']."</p>
</div>
<div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' style='margin-top: 45px;
text-align: center;'>
<h6 id='post_number'>".$show_run['pst']." post</h6>
<h6 id='rate'><b class='rating1'>".$row3['rate']." </b>average rating</h6>
</div>
</div>


</div>
</div></div>";

/*
$result = $mysqli->query($sql);

echo "<div class='row' id='rov'>";
echo "<div class='col-xl-4 col-md-4 col-sm-4' id='user_post' style='max-height:500px; overflow:scroll; text-align:left;'> ";

if ($result->num_rows > 0) {
  $counter=0;
   echo"<h4 class='title'>Mentett bejegyzések </h4>";
  while($row = $result->fetch_assoc()) {
$counter++;
$id=$row['post_id'];
$query="SELECT * from posts where post_id='$id'";
$run=$mysqli->query($query);
$show=$run->fetch_assoc();
$this->post_id=$row['post_id'];
$date=$show['time'];
  echo  ' '.$counter.'.<a  class="saved_p" href="post.php?id='.$this->post_id.'"> '. $row['post_title'].' <b class="dated">'.$date.'</b></a> ' ;
  echo "<br>";
   
  }
} else {
  echo "<h4 class='title'>Még nem mentettél bejegyzést</h4>";
}

echo "</div>";
*/

$sql6="SELECT posts.*,saved_post.*,users.* FROM saved_post
  LEFT JOIN posts ON
  saved_post.post_id=posts.post_id 
  LEFT join users ON
  posts.user_id=users.user_id
  where saved_post.user_id='$this->profile_id';
    ";
echo "<div class='row' style='display:flex; justify-content:center; margin:0;'>";
$run_sql6=$mysqli->query($sql6);
echo "<div class='col-xl-4 col-lg-4 col-md-4 col-xs-4' style='overflow:scroll; max-height:300px;text-align:center;margin: 5px;box-shadow: 0 5px 12px rgba(206,205,205,0.8);' >";
echo"<h4 class='title'>Saved posts</h4>";
while($row_run6 = $run_sql6->fetch_assoc()){
  $time=$row_run6['time'];
  $title=$row_run6['title'];
  $id=$row_run6['post_id'];
  
  echo "<div class='row'>";
  echo "<div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div'style='padding:5px; '>
  <div style='font-size:12px;'><h6 class='post_user' style='font-size:12px;'> ".$row_run6['full_name']."</h6><img src='images/avatar.png' id='avatar'>
  <p class='dated'> $time</p></div></div>
  <div class='col-xl-9 col-lg-9 col-md-9 col-sm-9' id='single_in_div'>
  <h5 class='post_title' > <a class='post_title'style='font-size:12px;' href='post.php?id=$id'> $title</a></h5>
  </div>
 </div> ";
 
}
echo "</div>";
/**********************************************/ 
$query_5="SELECT * from posts where user_id='$this->profile_id'";
$run_6=$mysqli->query($query_5);

echo "<div class='col-xl-4 col-lg-4 col-md-4 col-xs-4' style='overflow:scroll; max-height:300px; text-align:center;margin: 5px;box-shadow: 0 5px 12px rgba(206,205,205,0.8);'>";
echo"<h4 class='title'>Your posts</h4>";
while($row_run5 = $run_6->fetch_assoc()){
  $time=$row_run5['time'];
  $title=$row_run5['title'];
  $id=$row_run5['post_id'];
  
  echo "<div class='row'>";
  echo "<div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div'style='padding:5px; '>
  <div style='font-size:12px;'><img src='images/avatar.png' id='avatar'>
  <p class='dated'> $time</p></div></div>
  <div class='col-xl-9 col-lg-9 col-md-9 col-sm-9' id='single_in_div'>
  <h5 class='post_title' > <a class='post_title'style='font-size:12px;' href='post.php?id=$id'> $title</a></h5>
  </div>
 </div> ";
 
}
echo "</div>";
if($_SESSION['role'] == 'admin'){
       
  $sql="SELECT * from users where banned='1'";
  $run=$mysqli->query($sql);
 echo"<div class='col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8' style='box-shadow: 0 5px 12px rgba(206,205,205,0.8);margin: 10px;;padding:5px;overflow:scroll;display:inline;' >";
   echo "<h4 class='title'>Banned users : </h4>";
  while($row=$run->fetch_assoc()){
     
       $us=$row['full_name'];
       $id=$row['user_id'];
       $date=$row['ban_date'];
       echo "  <div class='alert alert-success' id='save_post_check' role='alert'>

</div><div class='alert alert-danger' id='save_post_check' role='alert'>  </div>";
       
      echo "<a id='username'>$us</a><a class='dated'>$date</a> <button type='button' class='btn btn-secondary' id='ban' onclick=\"user_unban('" . $id . "');\">Unban</button>";
  }
  echo "</div>";
}
echo "</div>";



$sql3="SELECT   AVG(rating) as rate ,COUNT(rating) as sum from rating where rated_user='$this->profile_id'";
$result3 = $mysqli->query($sql3);

echo "</div>";

/**********************************************/ 




}




    }

   









$obj=new profile();
$obj->get_profile_post();
include 'assets/footer.php';




?>
<html>
<script src="js/popup.js"></script>
<script src="js/popup.js"></script>
<script src="js/unban.js"></script>
</html>