<?php 
session_start();
?>
<html>
    <script>alert("Registration is off because of email activation.You can login : user:122182022 password: 123123")</script>
<?php 
/* Header */

include 'assets/header.html';



/* Header end */
?>
<body>

<?php 
/* Navigation */
include 'assets/navigation.php';


/* Navigation end */


/*register login starts*/
include 'assets/register_form.html';


/* register login ends */



/* Carosuel starts */

include 'assets/carosuel.html';
include 'assets/popup/about_us.html';
include 'assets/popup/rules.html';
include 'assets/popup/login.html';
/* Carosuel end*/


/*Footer starts*/
include 'assets/footer.php';


/*Footer end  */

?>

<script src="js/register.js"></script>
<script src="js/login.js"></script>
<script src="js/popup.js"></script>
</body>
</html>


















