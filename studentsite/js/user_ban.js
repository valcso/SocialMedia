function user_ban(a){



    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
           console.log(xhttp.responseText);

           document.getElementById('save_post_check').style.display="grid";
           document.getElementById('save_post_check').style.position="fixed";
           
          
           document.getElementById('save_post_check').innerHTML=xhttp.responseText;
        setTimeout(() => {
          document.getElementById('save_post_check').style.display="none";
          document.getElementById('save_post_check').innerHTML=" ";
        }, 2500);

        }
    };
  

    var user_id=a;
    

    const formData = new FormData();
    formData.append('ban_user_id',user_id);
    xhttp.open("POST", "assets/controller.php", true);
    //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(formData);



}