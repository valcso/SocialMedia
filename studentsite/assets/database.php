<?php 


class database{

    private $db_name = 'id13959988_student';
	private $db_user = 'id13959988_studentdata';
    private $db_pass = 'FZrI0pdg&szL@J?_';
	private $db_host = 'localhost';
  



    public function connect(){


		$connect_db = new mysqli( $this->db_host, $this->db_user, $this->db_pass, $this->db_name );
        
 
		return $connect_db;
		
	}

    }











?>