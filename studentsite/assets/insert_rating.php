<?php 

 class rating{

    public $rating;
    public $from_id;
    public $to_comment_id;
    public $usr_id;
 
   public function set_rating($rating,$to_comment_id,$from_id,$usr_id){


$this->rating=$_POST['rating'];
$this->from_id=$_POST['from_id'];
$this->to_comment_id=$_POST['to_comment_id'];
$this->usr_id=$_POST['usr_id'];

$mysqli =  new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
$sql="SELECT * from rating where from_id='$this->from_id' and  comment_id='$this->to_comment_id'";
$result = $mysqli->query($sql);

if ($result->num_rows > 0) { 

$sql="UPDATE rating SET rating='$this->rating' WHERE from_id='$this->from_id' and  comment_id='$this->to_comment_id'";
$result = $mysqli->query($sql);
echo "ey";

}else{
echo "emez";
    $sql="INSERT into rating (comment_id,rating,from_id,rated_user)  values('$this->to_comment_id','$this->rating','$this->from_id','$this->usr_id')";
    $result = $mysqli->query($sql);

}



   }








 }



?>