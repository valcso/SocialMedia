<?php 

class unban {
    
    public $profile_id;
    
    
    public function user_unban($a){
        $this->profile_id=$a;
        $mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
        $sql="UPDATE users SET banned='0' where user_id='$this->profile_id'";
        
        if ($mysqli->query($sql) === TRUE) {
  echo "Success";
} else {
  echo "Error updating record: " . $conn->error;
}
    }
    
}




?>