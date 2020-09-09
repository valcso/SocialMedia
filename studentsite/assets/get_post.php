<?php 
include_once 'database.php';

class get_post extends database{



public function list_posts(){


$sql="SELECT * FROM users
LEFT JOIN posts
ON posts.user_id = users.user_id
LEFT JOIN files
ON files.post_id = posts.post_id  order by posts.post_id DESC LIMIT 5";


$result = $this->connect()->query($sql);


echo "<h4 class='title'>Legújabb bejegyzések</h4>";

$author="";
$title=" ";
if ($result->num_rows > 1) {
while($row=$result->fetch_assoc() ){
$author=$row['full_name'];
$title=$row['title'];
$file=$row['file_name'];
$id=$row['post_id'];
$time=$row['time'];
$category=$row['post_category'];

$sql3="SELECT count(comment_id) as cmt from comment where post_id='$id'";
$result3 = $this->connect()->query($sql3);
$row3=$result3->fetch_assoc();
$cmt=$row3['cmt'];
if($row['post_category'] == "Programozás"){
echo "<div class='col-xl-12  col-lg-12 col-md-12 col-sm-12 col-xs-12' id='single_post_programming'>"; 
    echo "<div class='row'>";
    echo "<div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div'><div><h6 class='post_user'> $author</h6><img src='images/avatar.png' id='avatar'><p class='dated'> $time</p></div></div><div class='col-xl-6 col-lg-6 col-md-6 col-sm-6' id='single_in_div'><h5 class='post_title'> <a class='post_title' href='post.php?id=$id'><b class='prog_title'>[$category] : </b>&nbsp;$title</a></h5></div><div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div2'><div>Megosztott fájl: <br> <a  class='filed' href='assets/download.php?file=$file'>$file </a><i class='fas fa-file-alt'></i> <br> Hozzászólások:<br> <a class='cmts'>$cmt <i class='fas fa-comments'></i></a></div></div>";

   echo"</div>";
   echo"</div>";


}else if($row['post_category'] == "Matematika"){
echo "<div class='col-xl-12  col-lg-12 col-md-12 col-sm-12 col-xs-12' id='single_post_programming'>"; 
    echo "<div class='row'>";
    echo "<div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div'><div><h6 class='post_user'> $author</h6><img src='images/avatar.png' id='avatar'><p class='dated'> $time</p></div></div><div class='col-xl-6 col-lg-6 col-md-6 col-sm-6' id='single_in_div'><h5 class='post_title'> <a class='post_title' href='post.php?id=$id'><b class='math_title'>[$category] : </b>&nbsp;$title</a></h5></div><div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div2'><div>Megosztott fájl: <br> <a  class='filed' href='assets/download.php?file=$file'>$file </a><i class='fas fa-file-alt'></i> <br> Hozzászólások:<br> <a class='cmts'>$cmt <i class='fas fa-comments'></i></a></div></div>";

   echo"</div>";
   echo"</div>";


}
else if($row['post_category'] == "Grafika"){
echo "<div class='col-xl-12  col-lg-12 col-md-12 col-sm-12 col-xs-12' id='single_post_programming'>"; 
    echo "<div class='row'>";
    echo "<div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div'><div><h6 class='post_user'> $author</h6><img src='images/avatar.png' id='avatar'><p class='dated'> $time</p></div></div><div class='col-xl-6 col-lg-6 col-md-6 col-sm-6' id='single_in_div'><h5 class='post_title'> <a class='post_title' href='post.php?id=$id'><b class='draw_title'>[$category] : </b>&nbsp;$title</a></h5></div><div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div2'><div>Megosztott fájl: <br> <a  class='filed' href='assets/download.php?file=$file'>$file </a><i class='fas fa-file-alt'></i> <br> Hozzászólások:<br> <a class='cmts'>$cmt <i class='fas fa-comments'></i></a></div></div>";

   echo"</div>";
   echo"</div>";


}
else if($row['post_category'] == "Egyéb"){
echo "<div class='col-xl-12  col-lg-12 col-md-12 col-sm-12 col-xs-12' id='single_post_programming'>"; 
    echo "<div class='row'>";
    echo "<div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div'><div><h6 class='post_user'> $author</h6><img src='images/avatar.png' id='avatar'><p class='dated'> $time</p></div></div><div class='col-xl-6 col-lg-6 col-md-6 col-sm-6' id='single_in_div'><h5 class='post_title'> <a class='post_title' href='post.php?id=$id'><b class='other_title'>[$category] : </b>&nbsp;$title</a></h5></div><div class='col-xl-3 col-lg-3 col-md-3 col-sm-3' id='single_in_div2'><div>Megosztott fájl: <br> <a  class='filed' href='assets/download.php?file=$file'>$file </a><i class='fas fa-file-alt'></i> <br> Hozzászólások:<br> <a class='cmts'>$cmt <i class='fas fa-comments'></i></a></div></div>";

   echo"</div>";
   echo"</div>";
}

                                                

}




}else{
    echo "Még nincsenek posztok..";
}
}



}


$obj=new get_post();
$obj->list_posts();









?>

