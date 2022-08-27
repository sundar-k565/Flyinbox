<!DOCTYPE html>
<html lang="en">
    <head>

        <link rel="icon" type="image/x-icon" href="includes/s.ico">

        <title>FLYINBOX</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <style>
        body
        {
          background-color: #f1f2f6;
background-image: linear-gradient(315deg, #f1f2f6 0%, #c9c6c6 74%);

        }
        </style>
    </head>
    <body>

        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            &#160;&#160;&#160;&#160;<img src="includes/s.PNG" height="45px" width="45px"></img><p class="navbar-brand ps-3">FLYINBOX</p>
        </nav>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>

                    <div class="container-fluid px-4">

                        <h1 class="mt-4">SIGNING PANNEL</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="home.php">
                              <button class="btn btn-danger">
                              <span style="text-decoration: none;color:white;">Home</span></button></a></li>
                        </ol>

        <div class="row" >
                            <div class="col-xl-4 col-md-6" >
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Not Registered Yet</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a style="text-decoration: none;" class="small text-white stretched-link" href="signup.php">Signup Here</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>


                          <div class="col-xl-4 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Already Registered User</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a style="text-decoration: none;" class="small text-white stretched-link" href="login.php">Login Here</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4 col-md-6" >
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Admin </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a style="text-decoration: none;" class="small text-white stretched-link" href="admin/adminlog.php">Login Here</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                            </div>
                    </div>
                </main>

                </div>
<?php include_once('includes/footer.php');?>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>

    </body>
</html>
