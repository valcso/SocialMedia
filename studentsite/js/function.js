


function show_post(){

   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function() {
       if (this.readyState == 4 && this.status == 200) {
        document.getElementById("draw_cat").innerHTML=xhttp.responseText;
    
       }
   };

   xhttp.open("GET", "assets/get_post.php", true);
   //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
   xhttp.send();


}


var draw=document.getElementById("drawing");
var prog=document.getElementById("programming");
var calc=document.getElementById("calculation");
var btn=document.getElementById("send_post_btn");
var other=document.getElementById("other");
btn.style.pointerEvents = "none";

draw.style.cursor='pointer';
prog.style.cursor='pointer';
calc.style.cursor='pointer';
other.style.cursor='pointer';


draw.addEventListener("mouseover", function(){
   draw.style.width="500px";
  });



  function post_text(){

var post_text=document.getElementById("post_text").value;
var text_span=document.getElementById("post_text_span");
var text_ok=document.getElementById("post_text_ok");
 if(post_text.length < 50) {

  text_span.style.color='crimson';
   text_span.innerHTML='Minimum 50 characters';
   text_ok.innerHTML="";
   return false;

 }else{

text_ok.innerHTML="<i class='fa fa-check-circle' id='input_ready' aria-hidden='true'></i>";
text_span.innerHTML="";
return true;

 }

  }

function title(){

   var title=document.getElementById("post_title").value;
   var title_span=document.getElementById("title_span");
   var title_ok=document.getElementById("title_ok");

   if(title.length < 5  || title.length > 35) {

      title_span.style.color='crimson';
       title_span.innerHTML='Minimum 5,maximum 50 characters';
       title_ok.innerHTML="";
       return false;
    
     }else{
    
    title_ok.innerHTML="<i class='fa fa-check-circle' id='input_ready' aria-hidden='true'></i>";
    title_span.innerHTML="";
    return true;
    
     }


}



  function post_file(){
   var fileInput = document.getElementById('post_file'); 
   var file_span=document.getElementById("post_file_span");
   var label=document.getElementById("file_label");
   var file_ok=document.getElementById("post_file_ok");
var filePath = fileInput.value; 
var allowedExtensions =/(\.jpg|\.jpeg|\.png|\.pdf|\.doc|\.docx|\.txt|\..zip)$/i; 

if (!allowedExtensions.exec(filePath)) { 
   file_span.style.color='crimson';
   label.innerHTML="Choose";
   file_span.innerHTML='Not supported file type'; 
   file_ok.innerHTML="";
  // fileInput.value = ''; 
   return false;
    
}else{
   label.innerHTML="Attached";
file_ok.innerHTML="<i class='fa fa-check-circle' id='input_ready' aria-hidden='true'></i>";
file_span.innerHTML="";
return true;

}  
  }


  function check(){
   if(post_text() && post_file() && title()){
       btn.style.pointerEvents = "auto";
   }else{
       btn.style.pointerEvents = "none";
   }
}



  document.getElementById("post_text").onkeypress = function() {post_text();check()};
  document.getElementById("post_text").onchange= function() {post_text();check()};
  document.getElementById("post_text").onkeyup= function() {post_text();check()};
  document.getElementById("post_file").onkeypress = function() {post_file();check()};
  document.getElementById("post_file").onchange= function() {post_file();check()};

  document.getElementById("post_title").onkeypress = function() {title();check()};
  document.getElementById("post_title").onkeyup = function() {title();check()};

  document.getElementById("post_title").onchange= function() {title();check()};


  function send_post_info (){


  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
      //console.log(xhttp.responseText);
      document.getElementById('suc_msg2').style.display="block";
        document.getElementById('suc_msg2').style.position="fixed";
      document.getElementById("suc_msg2").innerHTML="Success";
     
      setTimeout(() => {
        document.getElementById('suc_msg2').style.display="none";
        document.getElementById('suc_msg2').innerHTML=" ";
      }, 2500);

      setTimeout(show_post, 2000);

      }
  };
  
  var name= document.getElementById('post_file');
  var alpha=name.files[0];
  var post_text=document.getElementById("post_text").value;
  /*var e = document.getElementById("post_category");
  var sected = e.options[e.selectedIndex].value;*/
  var title=document.getElementById("post_title").value;

  var ele = document.getElementsByName('chk'); 

  var res;
  
  for(i = 0; i < ele.length; i++) { 
      if(ele[i].checked){
        res=ele[i].value;
        break;
      }else{
        res="Egyéb";
      } 
      
  } 




  const formData = new FormData();
  formData.append('title',title);
  formData.append('file', alpha);
  formData.append('text',post_text);
  formData.append('category',res);
  xhttp.open("POST", "assets/controller.php", true);
  //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send(formData);


  }
