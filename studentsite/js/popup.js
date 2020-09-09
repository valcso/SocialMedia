var about=document.getElementById("about_us");
var about_div=document.getElementById("popup");
var close_button=document.getElementById("close_button");
var rules=document.getElementById("rules");
var login_div=document.getElementById("login_window");

function open_close(a){

    var b=a;

if(b == 1){

    about_div.style.display="block";
    rules.style.display='none';
    login_div.style.display='none';

}

if(b == 2) {

    about_div.style.display="none";
    rules.style.display='none';
    login_div.style.display='none';

}
 if(b == 3){

    rules.style.display="block";
    about_div.style.display="none";
    login_div.style.display='none';


}

if(b == 4){

    about_div.style.display="none";
    rules.style.display='none';
    login_div.style.display='block';

}

}