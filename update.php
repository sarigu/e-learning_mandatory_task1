<?php

require_once('connection.php');


try{

   $id = $_POST['id']; 
   $email = $_POST['email']; 

   $q = $db->prepare('UPDATE user SET email = :placeholdermail WHERE user_id = :id');
   $q->bindValue(':placeholdermail', $email);  //replace placeholder with real emal
   $q->bindValue(':id', $id);
   $q->execute();

   echo 'Updated row: '. $q->rowCount(); 

    
} catch(PDOExecption $ex){
    echo $ex; 

}