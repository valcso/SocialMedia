document.getElementById("register_btn").style.pointerEvents = "none";

function register(){


    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          document.getElementById("reg_info").innerHTML=xhttp.responseText;
        }
    };
    
    
    var full_name=document.getElementById("full_name").value;
    var email=document.getElementById("email").value;
    var e = document.getElementById("specialization");
    var specialization = e.options[e.selectedIndex].value;
    var password=document.getElementById("password").value;

    var params = "fullname="+full_name+"&email="+email+"&specialization="+specialization+"&password="+password+"";

    xhttp.open("POST", "assets/controller.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(params);






}

var name_span=document.getElementById("name_error");
var index_span=document.getElementById("index_error");
var password_span=document.getElementById("password_error");


  function fullname(){

    var fullname=document.getElementById("full_name");

    if( (fullname.value.length < 5) || (!fullname.value.match(/^[a-zA-Z_ \u00C0-\u00FF]+$/))){
       name_span.innerHTML="Only characters and minimum  length is 5" +
           "";
     name_span.style.color="red";
    
     return false;
    
    }
    else{
      name_span.innerHTML="Right";
      name_span.style.color="darkgreen";
    return true;
    }
}

function index_number(){


var index=document.getElementById("email");


   
if ( !index.value.match(/^[0-9]*$/) || index.value.length < 8) { 


  index_span.innerHTML="Only numbers and minimum length is 8";
  index_span.style.color="red";
  
  return false;
 }else{
   index_span.innerHTML="Right";
  index_span.style.color="darkgreen";
 
  return true;

 }

 }



  function password(){

var password=document.getElementById("password");

    if (password.value.length <6) {
      password_span.innerHTML="Minimum 6 characters";
      password_span.style.color="red";
      return false;
    }else{
      password_span.innerHTML="Right";
      password_span.style.color="darkgreen";
      return true;
    }


  }



  function check(){
    if(fullname() && password() && index_number()){
        document.getElementById("register_btn").style.pointerEvents = "auto";
    }else{
        document.getElementById("register_btn").style.pointerEvents = "none";
    }
}




 
  document.getElementById("full_name").onkeypress = function() {fullname();check();};
  document.getElementById("full_name").onkeyup= function() {fullname();check()};  
  document.getElementById("full_name").onchange= function() {fullname();check();};


  document.getElementById("password").onkeypress = function() {password();check();};
  document.getElementById("password").onchange = function() {password();check();};
  document.getElementById("password").onkeyup = function() {password();check();};
  document.getElementById("email").onkeypress = function() {index_number();check();};
  document.getElementById("email").onkeyup = function() {index_number();check();};
  document.getElementById("email").onchange = function() {index_number();check();};






  


