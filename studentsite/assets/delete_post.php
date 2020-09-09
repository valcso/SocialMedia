<?php 

class deletePost{

public $post_id;


public function delete_post($post_id){


$this->post_id=$post_id;



$mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
$query="SELECT * from posts where post_id='$this->post_id'  and post_id IN (SELECT  post_id  from  comment)";
$result = $mysqli->query($query);

if($_SESSION['role'] == 'admin'){
    
    $sql2="DELETE from comment where post_id='$this->post_id'";
    $result2=$mysqli->query($sql2);
    $sql="DELETE  from posts where post_id='$this->post_id'";
    $result = $mysqli->query($sql);
  
  

        echo "1";
}


else if ($_SESSION['role']!== 'admin' && $result->num_rows > 0) { 

echo "0";


}else{

  
    $sql="DELETE  from posts where post_id='$this->post_id'";
    $result = $mysqli->query($sql);

  

        echo "1";
    
  
      


   
    
}

}









}













?>