<nav class="navbar navbar-expand-md navbar-dark bg-dark" >
    <a class="navbar-brand" href="#" id='nav'>
      <img src="images/logo/logo.png" width="50%">
    Student</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav" id="navbar_nav">
        <a class="nav-item nav-link " href="index.php">Home</a>
        <a class="nav-item nav-link"  id='about_us' onclick="open_close(1)">Guide</a>
        <a class="nav-item nav-link" id='rules_btn' onclick="open_close(3)">Rules</a>
        
        <?php if( isset($_SESSION['logged_in']) && !empty($_SESSION['logged_in']) )
{
?>

<a class="nav-item nav-link"  id='közösség' href='home.php'>Community</a>
<a class="nav-item nav-link " id='username' href="profile.php">@<?php echo  $_SESSION['username']?> </a>
<a class="nav-item nav-link"  id='logout_button' href='assets/logout.php?logout=1'>Logout</a>
<?php }else{ ?>
  <a class="nav-item nav-link"  id='login_button' onclick="open_close(4)">Login</a>
<?php } ?>
        
       
       
      </div>
    </div>
  </nav>
