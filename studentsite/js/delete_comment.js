function comment_delete(a){



    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
         
          document.getElementById('save_post_check').style.display="grid";
          document.getElementById('save_post_check').style.position="fixed";
          
          console.log(xhttp.responseText);
          document.getElementById('save_post_check').innerHTML=xhttp.responseText;
       setTimeout(() => {
         document.getElementById('save_post_check').style.display="none";
         document.getElementById('save_post_check').innerHTML=" ";

         location.reload();
       }, 2500);

        }
    };
  
  
  var cmt_id=a;
    const formData = new FormData();
    formData.append('delete_comment_id',cmt_id);

    
  
    xhttp.open("POST", "assets/controller.php", true);
    //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(formData);



}