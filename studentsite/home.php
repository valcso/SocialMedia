<?php 
session_start();

if (!isset($_SESSION['logged_in'])){
    
    header("Location:https://studentvts.000webhostapp.com/index.php");
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

?>
<html>
    <div class='container-fluid'  style="overflow:hidden;padding: 0;">
<?php 

/* Header */

include 'assets/header.html';



/* Header end */
?>
<body onload='show_post()'>

<?php 
/* Navigation */
include 'assets/navigation.php';


/* Navigation end */

/* Categories*/
include 'assets/categories.html';
/*Categories end */

/*latest post*/
include 'assets/latest_post.php';
/* latest post end */

/* POSTS */

include 'assets/posts.php';

/* END POSTS*/
/* Carosuel starts */

include 'assets/popup/about_us.html';
include 'assets/popup/rules.html';
include 'assets/popup/login.html';
/* Carosuel end*/


/*Footer starts*/
include 'assets/footer.php';



/*Footer end  */

?>

<script src="js/function.js"></script>
<script src="js/popup.js"></script>
</body>
</div>
</html>


