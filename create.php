<?php

require_once('connection.php');


try{

    //POST via form
    $first_name = $_POST['first_name']; 
    $last_name = $_POST['last_name']; 
    $email = $_POST['email']; 
    $password = $_POST['password']; 

    echo $first_name; 
    echo $password; 

    $query = $db->prepare('INSERT INTO user VALUES(null, :first_name, :last_name, :email, :password)'); 
    $query->bindValue(':first_name', $first_name); 
    $query->bindValue(':last_name', $last_name); 
    $query->bindValue(':email', $email); 
    $query->bindValue(':password', $password); 
    $query->execute();

    echo 'UserID: ' .$db->lastInsertId(); 

    
} catch(PDOExecption $ex){
    echo $ex; 

}