<?php

require_once('connection.php');


try{
    $q = $db->prepare('SELECT * FROM user'); 
    $q->execute(); 
    $data = $q->fetchAll(); 
    echo print_r($data); 
    
} catch(PDOExecption $ex){
    echo $ex; 

}