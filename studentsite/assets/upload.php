<?php 
//session_start();
include_once 'database.php';
class upload  extends database{

public $file_name;
public $file_size;
public $file_extension;
public $post_text;
public $category;
public $tmp;
public $title;

public function upload_files($file_name,$file_tmp,$file_type,$file_size,$post_text,$category,$title){


$this->file_name=$file_name;
$this->file_size=$file_size;
$this->file_extension=$file_type;
$this->tmp=$file_tmp;
$this->post_text=$post_text;
$this->category=$category;
$this->title=$title;
$destination='uploads/'.$this->file_name;



if(move_uploaded_file($file_tmp,$destination)){

    
    $id=$_SESSION['user_id'];


    $conn =  new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");

$text= $conn->real_escape_string($this->post_text);
$title=$conn->real_escape_string($this->title);


    $sql="INSERT into posts (user_id,post_comment,post_category,title,time) VALUES ('$id','$text','$this->category','$title',now())";
   
    if ($conn->query($sql) === TRUE) {
      $last_id = $conn->insert_id;
      echo "New record created successfully. Last inserted ID is: " . $last_id;
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }

  $sql2="INSERT into files (post_id,size,type,file_name) VALUES('$last_id','$this->file_size','$this->file_extension','$this->file_name')";
   
    if ($conn->query($sql2) === TRUE) {
      $last_id = $conn->insert_id;
      echo "New record created successfully. Last inserted ID is: " . $last_id;
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }




    


  
 }


   






  }



}












?>