<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="<?= BASE_URL."/css/style.css"?>">
  </head>
  <body class="container-fluid">
  <br><br>
    <div class="row">
    <div class="col-3" id="v">
    </div>
        <div class="col-4" id="v">
            <div class="container">
                <h3></h3>
            </div>
    <div class="form">
    <form action="<?=$_SERVER['PHP_SELF']?>?action=save" method="post" name="scammers">
    <h3>Add new employee</h3><br>
    <div class="content">
    <p class="text">Put data into the fields</p>
    <hr class="HR">
    <label  for="card" class="lbForm">First Name:</label><br>
    <input class="form-control" type="text" name="Fname" id="" placeholder="Petro"><br>

    <label  for="card" class="lbForm">Last Name:</label><br>
    <input class="form-control" type="text" name="Lname" id="" placeholder="Petrov"><br>

    <label  for="card" class="lbForm">Gender:</label><br>
    <select class="form-select" aria-label="Default select example" name="Gender">
    <option selected value="M">Male</option>
    <option value="F">Female</option>
    </select><br>

    <label  for="date" class="lbForm">Hire-date</label><br>
    <input id="startDate" class="form-control" type="date" name="date" /><br>
    
    <label  for="birth" class="lbForm">Birth-date</label><br>
    <input id="start" class="form-control" type="date" name="birth" /><br>
    <hr class="HR"><br>
    
    <button type="submit" class="btn btn-primary btn-lg">Add Employee</button>   
    </div><br>
    
<br>
</form>
      </div>
    <div class="col-4" id="v">
    </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </body>
</html>