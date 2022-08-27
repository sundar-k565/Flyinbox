<?php
session_start();
include_once('includes/config.php');

if(isset($_POST['login']))
{
$smu_pass=$_POST['password'];
$dec_password=$smu_pass;
$smumail=$_POST['uemail'];
$smu_mail = strtolower($smumail);
$ret= mysqli_query($con,"SELECT smu_id,smu_fname FROM swift_mail_user WHERE smu_mail='$smu_mail' and smu_pass='$dec_password'");
$num=mysqli_fetch_array($ret);

if($num>0)
{

$_SESSION['id']=$num['smu_id'];
$_SESSION['name']=$num['smu_fname'];
header("location:welcome.php");

}
else
{
echo "<script>alert('Invalid username or password');</script>";
}
}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="icon" type="image/x-icon" href="includes/s.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login | FLYINBOX</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-secondary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">

<div class="card-header">
<h2 align="center">FLYINBOX</h2><center><img src="includes/s.PNG" height="45px" width="45px"></img></center>
<hr/>
    <h3 class="text-center font-weight-light my-4">Login</h3></div>

                                    <div class="card-body">

<form method="post">

<div class="form-floating mb-3">
<input class="form-control" name="uemail" type="email" placeholder="name@swift.com" required pattern="[a-z0-9._%+-]+@swift.com$" title="Should be in lowercase and end with @swift.com only" required/>
<label for="inputEmail">Email address</label>
</div>


<div class="form-floating mb-3">
<input class="form-control" name="password" type="password" placeholder="Password" required />
<label for="inputPassword">Password</label>
</div>

<center>
<button class="btn btn-success" name="login" type="submit">Login</button>
</center>

</form>
</div>
                                    <div class="card-footer text-center py-3">



                                        <div class="small"><a style="text-decoration: none;" href="signup.php">Need an account? Sign up!</a></div>

                                          <div class="small"><a style="text-decoration: none;" href="index.php">Back to Home</a></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
<?php include('includes/footer.php');?>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
