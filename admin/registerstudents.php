<?Php
include '../data_connection1.php';
if (!isAdmin()) {
    $_SESSION['msg'] = "You must log in first";
    header('location: ../index.php');
}
require "../database/data_connection.php";
$conn = OpenCon();

if(isset($_POST['submit'])){
     $name = $_POST['name'];
     $first_name = $_POST['first_name'];
	 $last_name = $_POST['last_name'];
     $roll_no = $_POST['roll_no'];
     $college_id = $_POST['college_id'];
	 $address = $_POST['address'];
     $phone_no = $_POST['phone_no'];
     $email_id = $_POST['email_id'];
	 $year = $_POST['year'];
     $branch = $_POST['branch'];
     $city = $_POST['city'];
	 $postal = $_POST['postal'];
$sql="INSERT INTO all_students (name, first_name, last_name, roll_no, college_id, address, phone_number, email_id, year, branch, city, postal) VALUES ('$name','$first_name','$last_name','$roll_no','$college_id','$address','$phone_no','$email_id','$year','$branch','$city','$postal')";
if (mysqli_query($conn, $sql)) {
    $message1= "New record created successfully !";
 } else {
    echo "Error: " . $sql . "
" . mysqli_error($conn);
 }
mysqli_close($conn);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Engineers Pro - Registration</title>

    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">
    <link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <div id="wrapper">

        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
                <div class="sidebar-brand-icon">
                    <i class="fas fa-laptop-code"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Engineers Pro <sup>2.0</sup></div>
            </a>

            <hr class="sidebar-divider my-0">

            <li class="nav-item">
                <a class="nav-link" href="index.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <hr class="sidebar-divider">

            <div class="sidebar-heading">
                Interface
            </div>

            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
                    aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Courses</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">List of:</h6>
                        <a class="collapse-item" href="allstudents.php">All Students</a>
						<h6 class="collapse-header">Explore:</h6>
                        <a class="collapse-item" href="btech(cse).php">B.Tech (CSE)</a>
						<a class="collapse-item" href="btech(civil).php">B.Tech (Civil Engg.)</a>
						<a class="collapse-item" href="btech(mechanical).php">B.Tech (Mechanical Engg.)</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne"
                    aria-expanded="true" aria-controls="collapseOne">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Teachers and Staff</span>
                </a>
                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">List of:</h6>
                        <a class="collapse-item" href="allteachers.php">All Teachers</a>
                        <a class="collapse-item" href="allstaff.php">All Staff</a>

                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Attendance</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Take Attendance:</h6>
                        <a class="collapse-item" href="cseattendance.php">B.Tech (CSE)</a>
                        <a class="collapse-item" href="civilattendance.php">B.Tech (Civil Engg.)</a>
                        <a class="collapse-item" href="mechanicalattendance.php">B.Tech (Mechanical Engg.)</a>
                        <h6 class="collapse-header">View Attendance:</h6>
                        <a class="collapse-item" href="viewcseattendance.php">B.Tech (CSE)</a>
                        <a class="collapse-item" href="viewcivilattendance.php">B.Tech (Civil Engg.)</a>
                        <a class="collapse-item" href="viewmechanicalattendance.php">B.Tech (Mechanical Engg.)</a>
                    </div>
                </div>
            </li>

            
            <li class="nav-item active">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree"
                    aria-expanded="true" aria-controls="collapseThree">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Registration</span>
                </a>
                <div id="collapseThree" class="collapse show" aria-labelledby="headingThree" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Register for:</h6>
                        <a class="collapse-item active" href="registerstudents.php">New Student</a>
                        <a class="collapse-item" href="registerteacher.php">New Teacher</a>
                        <a class="collapse-item" href="registerstaff.php">New Staff</a>

                    </div>
                </div>
            </li>

            <hr class="sidebar-divider">

        </ul>
		
        <div id="content-wrapper" class="d-flex flex-column">

            <div id="content">

                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $_SESSION['user']['username']; ?></span>
                                <img class="img-profile rounded-circle"
                                    src="../img/undraw_profile.svg">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>

                <div class="container-fluid">

                    <h1 class="h3 mb-4 text-gray-800">Register New Student</h1>

                    <div class="row">

                        <div class="col-lg-12">

                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Student Details</h6>
                                    <p><?php if(isset($message1)) { echo $message1; } ?></p>
                                </div>
                                <div class="card-body">
								<div class="row align-items-center">
              <form method="post" action="registerstudents.php">
                <h6 class="heading-small text-muted mb-4">Student information</h6>
				<div class="mb-4 py-3 border-left-primary">
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">				  
                        <label class="form-control-label" for="input-username">Username</label>
                        <input type="text" name="name" class="form-control form-control-alternative" placeholder="Username" value="" required>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">First name</label>
                        <input type="text" name="first_name" class="form-control form-control-alternative" placeholder="First name" value="" required>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Last name</label>
                        <input type="text" name="last_name" class="form-control form-control-alternative" placeholder="Last name" value="" required>
                      </div>
                    </div>
					<div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Roll Number</label>
                        <input type="text" name="roll_no" class="form-control form-control-alternative" placeholder="Roll Number" value="" required>
                      </div>
                    </div>
					<div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">College ID</label>
                        <input type="text" name="college_id" class="form-control form-control-alternative" placeholder="College ID" value="" required>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Branch</label>
                        <select type="text" name="branch" class="form-control form-control-alternative" placeholder="Branch" required> 
                        <option value = "#">Choose Branch...</option>
                        <option value = "CSE">Computer Science and Engineering</option>
                        <option value = "Mechanical Engg.">Mechanical Engineering</option>
                        <option value = "Civil Engg.">Civil Engineering</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Year</label>
                        <select type="text" name="year" class="form-control form-control-alternative" placeholder="Year" required>
                        <option value = "#">Choose Year...</option>
                        <option value = "1st Year">1st Year</option>
                        <option value = "2nd Year">2nd Year</option>
                        <option value = "3rd Year">3rd Year</option>
                        <option value = "4th Year">4th Year</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  </div>
                  </div>

                <h6 class="heading-small text-muted mb-4">Contact information</h6>
				<div class="mb-4 py-3 border-left-primary">
                <div class="pl-lg-4">
				<div class="row">
				    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Phone Number</label>
                        <input type="text" name="phone_no" class="form-control form-control-alternative" placeholder="Phone Number" value="" required>
                      </div>
                    </div>
					<div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address</label>
                        <input type="email" name="email_id" class="form-control form-control-alternative" placeholder="Email address" value="" required>
                      </div>
                    </div>
				</div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-address">Address</label>
                        <input name="address" class="form-control form-control-alternative" placeholder="Home Address" value="" type="text" required>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-city">City</label>
                        <input type="text" name="city" class="form-control form-control-alternative" placeholder="City" value="" required>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-country">Country</label>
                        <input type="text" name="country" class="form-control form-control-alternative" placeholder="Country" value="" required>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-country">Postal code</label>
                        <input type="number" name="postal" class="form-control form-control-alternative" placeholder="Postal" value="" required>
                      </div>
                    </div>
                  </div>
                </div>
				</div>
				<div class="col-12 text-right">
								<input type="submit" name="submit" value="Save Changes" class="btn btn-sm btn-primary">
								</div>
				<div>
                </div>
                </div>
              </form>
            </div>	
              </div>
              </div>
                                </div>
                            </div>
            </div>
			
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Engineers Pro 2020</span>
                    </div>
                </div>
            </footer>

        </div>
    </div>

    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="../index.php">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="../js/sb-admin-2.min.js"></script>
    <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="../js/demo/datatables-demo.js"></script>

</body>

</html>