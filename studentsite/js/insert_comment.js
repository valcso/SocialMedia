


  function insert_comment(x,a){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
      console.log(xhttp.responseText);
     location.reload();
   
  

      }
  };

  var comment=document.getElementById("exampleFormControlTextarea1").value;
  var id=x;
  var post_id=a;

   if(comment.length < 10){
         document.getElementById("lab").style.color="red";
         document.getElementById("lab").innerHTML="Minimum 10 characters!";
       
   }else{
       
       
  const formData = new FormData();
  formData.append('comment',comment);
  formData.append('user_id',id);
  formData.append('post_id',post_id);

  xhttp.open("POST", "assets/controller.php", true);
  //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send(formData);
 
       
   }


 


  }

/*
  
  function show_comment(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       document.write(xhttp.responseText);
   
  

      }
  };


  xhttp.open("POST", "assets/get_comment.php", true);
  //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send();


  }*/