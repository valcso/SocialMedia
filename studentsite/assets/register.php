<?php 

include_once 'database.php';

class register extends database {

public $fullname;
private $email_adress;
private $password;
public $specialization;
public $hash;

public function insert_user($fullname,$email_adress,$password,$specialization,$hash){

	$domain="@vts.su.ac.rs";
	$domain2=$email_adress;
	$domain2.=$domain;
	
	$this->hash=$hash;
    $this->fullname = $_POST['fullname'];
	$this->email_adress=$domain2;
	$this->specialization=$_POST['specialization'];
    $pass=$password;    


$sql="SELECT * from users where index_number='$domain2'";
$result=$this->connect()->query($sql);

$row_count = $result->num_rows;
if ($row_count >0) {
	
	echo "Már regisztráltál";

 

  } else {
	$sql = "INSERT INTO users (full_name,index_number,specialization,password,register_date,status,hash)
	VALUES ('$this->fullname','$domain2','$this->specialization','$pass',now(),'0','$this->hash')";


	$result=$this->connect()->query($sql);
	
	echo "Success,activation mail was sent to your inbox .";
	//echo $domain2;

	$this->send_email($this->email_adress,$this->hash);
}



}

public function send_email($email,$hash){
    $email=$email;
	$to      = $email; 
    $subject = 'Regisztáció | Megerősítés'; 
    $message = '
 
 
Köszönjük,hogy csatlakoztál hozzánk.A fiókod létrehoztuk,hogy betudj jelentkezni kattints a linkre alul.
 
------------------------


 
Kattints ide:
https://studentvts.000webhostapp.com/activate.php?email='.$email.'&hash='.$hash.'
 
'; 

$headers = 'From:noreply@yourwebsite.com' . "\r\n"; 
    mail($to, $subject, $message,$headers); 

}

}

?>