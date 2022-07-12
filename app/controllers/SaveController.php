<?php
class SaveController{

function Save(){
    
    require_once CONECT;
    
    $sql_expression = 'INSERT
       INTO `employees`(`emp_no`,`first_name`,`last_name`,`gender`,`hire_date`)
       VALUES(:id,:firs_name,:last_name,:gender,:hire_date)';
         
    $sth = $dbh->prepare($sql_expression);
    
    if ($sth !== false) {
        if(count($_POST['Fname'])>0||count($_POST['Lname'])>0)
        {
            header('Location:/?action=home');
        }else{
        $id=random_int(0,1000);
        $sth->bindParam(':id',$id, PDO::PARAM_INT);
        $sth->bindParam(':firs_name', $_POST['Fname'], PDO::PARAM_STR);
        $sth->bindParam(':last_name', $_POST['Lname'], PDO::PARAM_STR);
        $sth->bindParam(':gender', $_POST['Gender'], PDO::PARAM_STR_CHAR);
        $sth->bindParam(':hire_date', $_POST['date'], PDO::PARAM_STR);
    
        $sth->execute();
        }
    }
 
    $dbh = null;
    $sth = null;
    require_once VIEWS_PATH."/master.php";
}
}