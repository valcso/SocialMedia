function rating_button(a, b) {


    var cmt_id = a.id;
    var from_id = a.name;
    var usr_id = b;

    var e = document.getElementById(a.id);
    var rating = e.options[e.selectedIndex].value;


    /*
    if (rating == 1){
    
        document.getElementById('1').style.color='orange';
        document.getElementById('2').style.color='black';
        document.getElementById('2').style.color='black';
        document.getElementById('3').style.color='black';
        document.getElementById('4').style.color='black';
        document.getElementById('5').style.color='black';
    }
    
    if( rating == 2){
        document.getElementById('1').style.color='orange';
        document.getElementById(rating).style.color='orange';
    
      
        document.getElementById('3').style.color='black';
        document.getElementById('4').style.color='black';
        document.getElementById('5').style.color='black';
    
    }
    
    if(rating == 3){
        document.getElementById('1').style.color='orange';
        document.getElementById('2').style.color='orange';
        document.getElementById(rating).style.color='orange';
        document.getElementById('4').style.color='black';
        document.getElementById('5').style.color='black';
    }
    if(rating == 4){
        document.getElementById('1').style.color='orange';
        document.getElementById('2').style.color='orange';
        document.getElementById('3').style.color='orange';
        document.getElementById(rating).style.color='orange';
        document.getElementById('5').style.color='black';
    }
    
    if(rating == 5){
        document.getElementById('1').style.color='orange';
        document.getElementById('2').style.color='orange';
        document.getElementById('3').style.color='orange';
        document.getElementById('4').style.color='orange';
        document.getElementById(rating).style.color='orange';
    }
    */
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(xhttp.responseText);

            location.reload();


        }
    };





    const formData = new FormData();
    formData.append('rating', rating);
    formData.append('to_comment_id', cmt_id);
    formData.append('from_id', from_id);
    formData.append('usr_id', usr_id);


    xhttp.open("POST", "assets/controller.php", true);
    //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(formData);



}