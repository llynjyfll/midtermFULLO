 <?php
 $conn = mysqli_connect("localhost", "root", "", "studentportal");
if(! $coon) {
    die ("connection failed");
}
 $email=$_POST['email'];
 $password=$_POST['password'];
 $sql = "SELECT * From studentportal WHERE email ='$email' password = '$password'";
 $result = mysqli_query ($coon, $sql);
 header ("WELCOME");
 if (mysqli_num_rows($result)>0){
    exit();
 }else{
    echo"Login Failed";
 }
 mysqli_close($conn);
 ?>
