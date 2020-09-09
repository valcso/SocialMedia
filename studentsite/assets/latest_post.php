<div class='container-fluid'>
<div class='alert alert-success' id='suc_msg2' role='alert'></div>
<div class='col-xl-12 col-md-12 col-sm-12 col-xs-12' id='latest_post'>



</div>


<div class='col-xl-6 col-md-6 col-sm-6' id='new_post'>

<h4 class='title'>Create new post</h4>

<div class="input-group input-group-sm mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-sm">Title</span>
  </div> 
  <input type="text" class="form-control" id='post_title' aria-label="Small" aria-describedby="inputGroup-sizing-sm">
  <span id='title_ok'></span>
</div>
<span id='title_span'></span>
<div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">Define the problem</span>
  </div>
  <textarea class="form-control" id='post_text' aria-label="With textarea" placeholder='Minimum 100 characters'></textarea>
  <span id='post_text_ok'></span>
</div>
<span id='post_text_span'></span>
<br>

<div class="custom-file" id='upfile'>
  
<input type="file" class="custom-file-input" name="file" id="post_file">
   
    <label class="custom-file-label" for="post_file" id='file_label'>Choose
    
    </label>
    <span id='post_file_ok'></span>
  
  </div> <br>
  <br>
<span id='post_file_span'></span>

<!--<select class="form-control" id="post_category">
                
                <option selected>Rajzolás</option>
                <option>Számolás</option>
                <option>Programozás </option>
                <option>Egyéb</option>
                
            </select>-->
           

            <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name='chk' id="inlineCheckbox1" value="Grafika">
  <label class="form-check-label" for="inlineCheckbox1">Grapich and animation</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio"name='chk' id="inlineCheckbox1" value="Programozás">
  <label class="form-check-label" for="inlineCheckbox2">Programming</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name='chk' id="inlineCheckbox1" value="Matematika" >
  <label class="form-check-label" for="inlineCheckbox3">Math</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio"  name='chk' id="inlineCheckbox1" value="Egyéb" checked>
  <label class="form-check-label" for="inlineCheckbox3">Other</label>
</div>
          
            
<br>
<button type="button" class="btn btn-success" id='send_post_btn' onclick='send_post_info()'>Publish </button>
<br><br>
<span id='suc_msg2'></div>


</div>



</div>
