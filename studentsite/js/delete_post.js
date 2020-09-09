function delete_comment(a){



    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
    console.log(xhttp.responseText);
    
          if(xhttp.responseText == 0){
           
            document.getElementById('save_post_check').style.display="grid";
            document.getElementById('save_post_check').style.position="fixed";
            document.getElementById('save_post_check').innerHTML="You can't delete a post you've already received comment for this post";

              
            setTimeout(function(){
              document.getElementById('save_post_check').style.display="none";
                document.getElementById("save_post_check").innerHTML=" ";
            }, 2500);

          }

          if(xhttp.responseText == 1){

            document.getElementById('save_post_check').style.display="grid";
            document.getElementById('save_post_check').style.position="fixed";
            document.getElementById("save_post_check").innerHTML="Deleted";

            setTimeout(function(){
              document.getElementById('save_post_check').style.display="none";
                document.getElementById("save_post_check").innerHTML=" ";
            window.location.href = "../studentsite/home.php";
            }, 2500);

          

          }
     
    
  
        }
    };
  
    var post_id=a;
  
  
    const formData = new FormData();
    formData.append('delete_post_id',post_id);
  
    xhttp.open("POST", "assets/controller.php", true);
    //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(formData);
  
  
    }


