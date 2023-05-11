<!DOCTYPE html>
<html>
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="css/main2.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script type="text/javascript" src="js/script.js"></script>
   </head>
   <body>
      <div class="col-12" style="height: 350px">
         <div id="comname">
            <i class="fa fa-balance-scale" aria-hidden="true"></i><br><br>BLOOD <b>DONATION</b>
         </div>
         @include('include.nav')
         <span class="info2" style="left: 40%">Be a Donor!</span>
         <img class="myFrontPic col-12" src="images/img1.jpg" style="height: 350px;">
      </div>
      <div class="col-12" style="overflow: auto; padding: 0 20% 0 20%;">
         <div class="col-12" style="text-align: left; padding: 5%; background-color: rgb(217, 219, 224);">
            <form action="register.php" method="post">
               Username(required)<span style="color: red;">*</span><br>
               <input class="in" type="text" name="username" placeholder="Enter Username" required style="color: black;"><br><br>
               Password(required)<span style="color: red;">*</span><br>
               <input class="in" type="password" name="password" placeholder="Password" required style="color: black;"><br><br>
               Fullname(required)<span style="color: red;">*</span><br>
               <input class="in" type="text" name="fullname" placeholder="Enter Fullname" required style="color: black;"><br><br>
               Date Of Birth(required)<span style="color: red;">*</span><br>
               <input class="in" type="date" name="dob" placeholder="dd/mm/yyyy" required><br><br>
               Gender(required)<span style="color: red;">*</span><br>
               <input type="radio" name="gender" value="male" checked>Male
               <input type="radio" name="gender" value="female">Female
               <input type="radio" name="gender" value="other">Other<br><br>
               Blood Group(required)<span style="color: red;">*</span><br>
               <select name="bloodgroup" required>
                  <option value="">Enter Blood Group</option>
                  <option value="A pos">A+</option>
                  <option value="A neg">A-</option>
                  <option value="B pos">B+</option>
                  <option value="B neg">B-</option>
                  <option value="O pos">O+</option>
                  <option value="O neg">O-</option>
                  <option value="AB pos">AB+</option>
                  <option value="AB neg">AB-</option>
               </select>
               <br><br>
               Mobile(required)<span style="color: red;">*</span><br>
               <input class="in" type="text" name="mobile" placeholder="Enter Mobile No."  required style="color: black;"><br><br>
               Email(required)<span style="color: red;">*</span><br>
               <input class="in" type="email" name="email" placeholder="Enter Your Email" required style="color: black;"><br><br>
               Town<br>
               <input class="in" type="text" name="town" placeholder="Enter Town" style="color: black;"><br><br>
               State(required)<span style="color: red;">*</span><br>
               <input class="in" type="text" name="state" placeholder="Enter State" required style="color: black;"><br><br>
               <input class="qw" style="font-size: 16px; color: white;" type="submit" value="SEND">
            </form>
         </div>
      </div>
      <div id="footer" class="col-12" style="margin: 0; padding: 0;overflow: auto;">
         @include('include.footer')
      </div>
   </body>
</html>