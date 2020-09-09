<?php  
include 'footer_calculator.php';
?>
<!--<div class='container-fluid'><div class='col-xl-12 col-md-12 col-sm-12 col-xs-12' id='footer'>
    <div class='col-xl-6 col-md-6 col-sm-6 col-xs-6' id='footer_col'>
       
        <a href='x'>Regisztrált felhasználók: X |</a>
        <a href='x'>Bejegyzések: X </a>
      

        <p>&copy; 2020 Student<p></p>
      

    </div>
    
    </div>
</div>-->

<!--<div id="wrap">
    <div id="main" class="container clear-top">
   
    </div>
  </div>
  <footer class="footer">
    <div class='col-xl-6 col-md-6 col-sm-6 col-xs-6' id='footer_col'>
       
        
      

        <p>&copy; 2020 Student<p></p>
      

    </div>
  </footer>-->
  <br><br>
  <div class="wrapper">

   

    <div class="push"></div>
  </div>
  <footer class="footer"><a >Registered users: <?php $obj=new footer_calculator(); $obj->calculator(); ?> |</a>
        <a >Published posts: <?php $obj=new footer_calculator(); $obj->post_calculator(); ?> </a>
    
        <p class='copy'>&copy; 2020 Student<p></p>
    </footer>