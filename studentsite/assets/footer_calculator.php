<?php 


class footer_calculator{



public function calculator(){

    $mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
    $sql="SELECT count(user_id) as userc from users ";
    $result = $mysqli->query($sql);
    while($row = $result->fetch_assoc()) {
    
        echo $row['userc'];
    
    }


}

public function post_calculator(){


    $mysqli = new mysqli("localhost","id13959988_studentdata","FZrI0pdg&szL@J?_","id13959988_student");
    $sql="SELECT count(post_id) as posc from posts ";
    $result = $mysqli->query($sql);
    while($row = $result->fetch_assoc()) {
    
        echo $row['posc'];
    
    }


}

}












?>