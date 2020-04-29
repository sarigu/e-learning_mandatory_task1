<?php

require_once('connection.php');


try{
    $id = $_GET['id'];
    $q = $db->prepare('DELETE FROM user WHERE user_id = :id'); //db ist die database connection
    $q->bindValue(':id', $id); //no need to post directly from get
    $q->execute(); 

    echo 'Delete number of rows: '. $q->rowCount(); 
    
} catch(PDOExecption $ex){
    echo $ex; 

}