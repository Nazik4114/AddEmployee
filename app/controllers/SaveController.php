<?php
class SaveController{

function Save(){
    
    require_once CONECT;
    
    $sql_expression = 'INSERT
       INTO `employees`(`emp_no`,`first_name`,`last_name`,`gender`,`hire_date`,`birth_date`)
       VALUES(:id,:firs_name,:last_name,:gender,:hire_date,:birth_date)';
         
    $sql="SELECT MAX(`emp_no`) as `max_id` FROM `employees`";
    $sth_id = $dbh->prepare($sql);
    $sth_id->execute();
    $id=$sth_id->fetchAll(PDO::FETCH_ASSOC);
    $emp_no=$id[0]['max_id']+1;
    $sth= $dbh->prepare($sql_expression);
    if ($sth !== false) {
        if(strlen($_POST['Fname'])<=0||strlen($_POST['Lname'])<=0)
        {
            dd(true,5);
            header('Location:/?action=home');
        }else{
        $sth->bindParam(':id',$emp_no, PDO::PARAM_INT);
        $sth->bindParam(':firs_name', $_POST['Fname'], PDO::PARAM_STR);
        $sth->bindParam(':last_name', $_POST['Lname'], PDO::PARAM_STR);
        $sth->bindParam(':gender', $_POST['Gender'], PDO::PARAM_STR_CHAR);
        $sth->bindParam(':hire_date', $_POST['date'], PDO::PARAM_STR);
        $sth->bindParam(':birth_date', $_POST['birth'], PDO::PARAM_STR);
        $sth->execute();
        }
    }
 
    $dbh = null;
    $sth = null;
    $sth_id=null;
    require_once VIEWS_PATH."/master.php";
}
}