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


class math_category extends database{



public function show_math(){


    /*$sql="SELECT *  FROM users
    LEFT JOIN posts
    ON posts.user_id = users.user_id
    LEFT JOIN files
    ON files.post_id = posts.post_id 
    where posts.post_category='Matematika
    order by  DESC'
   

    ";*/

    $sql="SELECT users.*,posts.*,files.* FROM users
    LEFT JOIN posts
    ON posts.user_id = users.user_id
    LEFT JOIN files
    ON files.post_id = posts.post_id 
    where posts.post_category='Matematika'
    ORDER BY  posts.post_id DESC ";
    
    
    $result = $this->connect()->query($sql);
    
  
    
    $author="";
    $title=" ";
    if ($result->num_rows > 1) {
       
        echo "<div class='col-xl-10 col-md-10 col-sm-10' id='draw_cat'>";
        echo "<br><h4 class='title'>Posts in math category</h4>";
        echo "<div class='row'>"; 
        while($row=$result->fetch_assoc() ){
      $ptid=$row['post_id'];

            $sql3="SELECT count(comment_id) as cmt from comment where post_id='$ptid'";
            $result3 = $this->connect()->query($sql3);
            $row3=$result3->fetch_assoc();
            $cmt=$row3['cmt'];
    
    $author=$row['full_name'];
    $title=$row['title'];
    $time=$row['time'];
    $id=$row['post_id'];
    $file=$row['file_name'];
    echo "<div class='col-xl-10  col-lg-10 col-md-10 col-sm-10 col-xs-10' id='single_post_programming'>"; 
    echo "<div class='row'>";
    echo "<div class='col-xl-4 col-lg-4 col-md-4 col-sm-4' id='single_in_div'><div><h6 class='post_user'> $author</h6><img src='images/avatar.png' id='avatar'><p class='dated'> $time</p></div></div><div class='col-xl-4 col-lg-4 col-md-4 col-sm-4' id='single_in_div'><h5 class='post_title'> <a class='post_title' href='post.php?id=$id'> $title</a></h5></div><div class='col-xl-4 col-lg-4 col-md-4 col-sm-4' id='single_in_div2'><div>File: <br> <a  class='filed' href='assets/download.php?file=$file'>$file </a><i class='fas fa-file-alt'></i> <br> Comments:<br> <a class='cmts'>$cmt <i class='fas fa-comments'></i></a></div></div>";

    /*
    echo '<table id="draw_table" cellspacing="0" cellpadding="0"  style="background-color: #045de9;
    background-image: linear-gradient(315deg, #045de9 0%, #09c6f9 74%); border-radius: 5px;"><tr><td><h6 class="post_user"> '.$author.' </h6><img src="images/avatar.png" id="avatar"> </td><td colspan="5"><h5 class="post_title"> <a class="post_title" href="post.php?id='.$id.'"> '.$title .'</a></h5></td></tr><tr><td><p class="dated"> '.$row['time'].'</p></td><td></td><td> Megosztott fájl: <i class="fas fa-file-alt"></i>   <a  class="filed" href="assets/download.php?file='.$file.'">'.$file.' </a> </td><td>Hozzászólások: <a class="cmts">'.$cmt.' <i class="fas fa-comments"></i></a></td></tr>
   </table> ';
    
    */
    echo "</div>";
    echo "</div>";
    }
    echo "</div>";
    echo "</div>";
    
    
    }else{
        echo "Még nincsenek posztok..";
    }
    }




}








$obj=new math_category();
$obj->show_math();


?>

<?php 
include 'assets/footer.php';
?>


<script src="js/login.js"></script>
<script src="js/popup.js"></script>