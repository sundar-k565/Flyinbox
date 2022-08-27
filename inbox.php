<?php session_start();
include_once('includes/config.php');
if (strlen($_SESSION['id']==0)) {
  header('location:logout.php');
  } else{

?>


<?php


    // Delete Table data Mail
    if (isset($_GET["del"])) {

        $id = preg_replace('/\D/', '', $_GET["del"]); //Accept numbers only


        $q1=mysqli_query($con,"select * from swift_inbox where si_id='$id'");
        $res=mysqli_fetch_array($q1);

        $from = $res['si_from'];
        $to = $res['si_to'];
        $cc = $res['si_cc'];
        $sub = $res['si_sub'];
        $msg = $res['si_msg'];
        $filename = $res['si_file'];
        $filetype = $res['si_file_type'];
        $filedata = $res['si_file_blob'];
        $recdt = $res['si_dt'];


        $msg1=mysqli_query($con,"insert into swift_trash(st_from,st_to,st_cc,st_sub,st_msg,st_file,st_file_type,st_file_blob,st_rec_dt) values('$from','$to','$cc','$sub','$msg','$filename','$filetype','$filedata','$recdt')");

if($msg1){
        if ($stmt = $con->prepare("DELETE FROM swift_inbox WHERE si_id=?")) {
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $stmt->close();
            $msgi = '<script>alert("Mail deleted and trashed successfully...")</script>';
        } else {
            die('prepare() failed: ' . htmlspecialchars($con->error));
        }
}
else {
  echo '<script>alert("Error in deleting Mail...")</script>';
}
    }


// Delete Table data CC Mail
    if (isset($_GET["delcc"])) {

        $id = preg_replace('/\D/', '', $_GET["delcc"]); //Accept numbers only

        if ($stmt = $con->prepare("DELETE FROM swift_cc WHERE sc_id=?")) {
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $stmt->close();
            $msgi = '<script>alert("CC Mail deleted and cleared successfully...")</script>';
        } else {
            die('prepare() failed: ' . htmlspecialchars($con->error));
        }
}




    // Display Table data
    $userid = $_SESSION['id'];
    $query=mysqli_query($con,"select * from swift_mail_user where smu_id='$userid'");
    $result=mysqli_fetch_array($query);

    $rec = $result['smu_mail'];

    $tabledata1 = "";
    $sqlsearch = "";

    $tabledata2 = "";
    $sqlsearch = "";



    if ($stmt = $con->prepare("SELECT * FROM swift_inbox WHERE si_to='$rec' ORDER BY si_id DESC")) {
        $stmt->execute();
        $result = $stmt->get_result();
        if($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $tabledata1 .= '<tr>
                                <th class="table-active">'.$row["si_from"].'</th>
                                <td class="table-secondary">'.$row["si_sub"].'</td>

                                <td class="table-secondary">'.$row["si_dt"].'</td>
                                <td class="table-light">
                                    <a href="view_inbox.php?view='.$row["si_id"].'" title="View Mail"><i style="color:blue;" class="fa fa-eye"></i></a>
                                    &nbsp;&nbsp;
                                    <a href="inbox.php?del='.$row["si_id"].'" title="Delete Mail"><i style="color:red;" class="fa fa-trash"></i></a>
                                </td>
                            </tr>';
            }
        } else {
            $tabledata1= '<tr><td colspan="7" style="text-align: center; padding:30px 0;">Nothing to display</td></tr>';
        }

        $stmt->close();
    } else {
        die('prepare() failed: ' . htmlspecialchars($con->error));
    }

    if ($stmt = $con->prepare("SELECT * FROM swift_cc WHERE sc_cc='$rec' ORDER BY sc_id DESC")) {
        $stmt->execute();
        $result = $stmt->get_result();
        if($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $tabledata2 .= '<tr>
                                <th class="table-active">'.$row["sc_from"].'</th>
                                <td class="table-secondary">'.$row["sc_sub"].'</td>

                                <td class="table-secondary">'.$row["sc_dt"].'</td>
                                <td class="table-light">
                                    <a href="view_cc.php?view='.$row["sc_id"].'" title="View Mail"><i style="color:blue;" class="fa fa-eye"></i></a>
                                    &nbsp;&nbsp;
                                    <a href="inbox.php?delcc='.$row["sc_id"].'" title="Delete Mail"><i style="color:red;" class="fa fa-trash"></i></a>
                                </td>
                            </tr>';
            }
        } else {
            $tabledata2= '<tr><td colspan="7" style="text-align: center; padding:30px 0;">Nothing to display</td></tr>';
        }

        $stmt->close();
    } else {
        die('prepare() failed: ' . htmlspecialchars($con->error));
    }

    // Close database connection
    $con->close();
?>


<!DOCTYPE html>
<html>
    <head>
      <link rel="icon" type="image/x-icon" href="includes/s.ico">
        <title>Inbox | FLYINBOX</title>

    </head>
    <body class="sb-nav-fixed">
      <?php if(isset($msgi)){ echo $msgi; }?>
      <?php include_once('includes/navbar.php');?>
        <div id="layoutSidenav">
          <?php include_once('includes/sidebar.php');?>
            <div id="layoutSidenav_content">


              <div class="container">


              <center>
                <div class="col-lg-6">
                <div class="card shadow-lg border-0 rounded-lg mt-5">
                    <div class="card-header">
              <h1 align="center">INBOX</h1>

                        </div>
                        </div>
                      </div>
              </center>
              <br>

              <div class="wrapper">
                  <div class="container-fluid">
                      <div class="row">
                          <div class="col-md-12">
                          <table class="table table-borderless table-dark">
                              <thead class="thead-dark">
                                  <tr>
                                      <th><i>FROM</i></th>
                                      <th><i>SUBJECT</i></th>

                                      <th><i>DATE</i></th>
                                      <th><i>ACTION</i></th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <?php
                                      echo $tabledata1;
                                  ?>
                              </tbody>
                          </table>
                        </div>
                        </div>
                        </div>
                        </div>
<br>
<hr>
                        <center>
                          <div class="col-lg-4">
                          <div class="card shadow-lg border-0 rounded-lg mt-5">
                              <div class="card-header">
                        <h2 align="center">CARBON COPIES</h2>

                                  </div>
                                  </div>
                                </div>
                        </center>

                        <br>

                        <div class="wrapper">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                    <table class="table table-borderless table-dark">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th><i>FROM</i></th>
                                                <th><i>SUBJECT</i></th>

                                                <th><i>DATE</i></th>
                                                <th><i>ACTION</i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                echo $tabledata2;
                                            ?>
                                        </tbody>
                                    </table>
                                  </div>
                                  </div>
                                  </div>
                                  </div>


                        </div>

<br>


          <?php include('includes/footer.php');?>
            </div>
        </div>
    </body>
</html>
<?php } ?>
