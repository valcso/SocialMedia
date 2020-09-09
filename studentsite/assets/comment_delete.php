<?php 


class comment_delete{
    public $comment_id;

    public function delete_comment($id){
        $this->comment_id=$id;

        $mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
$sql="DELETE  from comment where comment_id='$this->comment_id'";
$result = $mysqli->query($sql);


if ($mysqli->query($sql) === TRUE) {
    
    echo "Deleted";
  } else {
    echo "Error: " . $sql . "<br>" . $mysqli->error;
  }

    }
}


?>