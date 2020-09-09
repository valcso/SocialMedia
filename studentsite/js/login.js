function login_user(){

    var xhttp1 = new XMLHttpRequest();
    xhttp1.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
  
         

          if(xhttp1.responseText == 1){
            
            
            window.location.href = "../studentsite/home.php";
            console.log(xhttp1.responseText);
          //  location.reload();

          }

          if(xhttp1.responseText == 0){

            console.log(xhttp1.responseText);
            document.getElementById("login_inf").innerHTML="Wrong password or username";


          }

          if(xhttp1.responseText == 2){
            console.log(xhttp1.responseText);
            document.getElementById("login_inf").innerHTML="Your account is banned";
          }
        }
    };
    
    
  
    var email=document.getElementById("email_login").value;
    var password=document.getElementById("password_login").value;

    var params = "email_login="+email+"&password_login="+password+"";

    xhttp1.open("POST", "assets/controller.php", true);
    xhttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp1.send(params);
    

}

