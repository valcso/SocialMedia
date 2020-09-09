function save_post(a,b,c){





var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       
        document.getElementById('save_post_check').style.display="grid";
        document.getElementById('save_post_check').style.position="fixed";
        
       
        document.getElementById('save_post_check').innerHTML=xhttp.responseText;
     setTimeout(() => {
       document.getElementById('save_post_check').style.display="none";
       document.getElementById('save_post_check').innerHTML=" ";
     }, 2500);

      }
  };

  var uid=a;
var post_id=b;
var title=c;

  const formData = new FormData();
  formData.append('uid',uid);
  formData.append('pid',post_id);
  formData.append('post_title_saved',title);
  

  xhttp.open("POST", "assets/controller.php", true);
  //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send(formData);


}