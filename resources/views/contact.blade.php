<!DOCTYPE html>
<html>
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="css/main2.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script type="text/javascript" src="js/script.js"></script>
      <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCPYMI9P4d29sp8AGl_4z9py1ZEt8YXmcI&callback=myMap"
         type="text/javascript"></script>
      <!-- iziToast CSS -->
      <link rel="stylesheet" href="{{ asset('css/iziToast.min.css') }}">
   </head>
   <body>
      <div class="col-12" style="height: 350px;">
         <div id="comname">
            <i class="fa fa-balance-scale" aria-hidden="true"></i><br><br>BLOOD <b>DONATION</b>
         </div>
         @include('include.nav')
         <span class="info2" style="left: 40%">CONTACT</span>
         <img class="myFrontPic col-12" src="images/img11.jpg" style="height: 350px;">
      </div>
      <br>
      <div style="margin: 0; padding: 0; text-align: center; overflow: auto;">

         <div class="col-6" style="float: left; text-align: left; padding: 5%; background-color: rgb(217, 219, 224);">
            <h1 style="color: blue;">SUGGESTION</h1>
            <form action="{{ route('contact_send') }}" method="post">@csrf
               Name(required)<span style="color: red;">*</span><br>
               <input class="in" type="text" name="name" placeholder="Enter Name" required style=""><br><br>
               Email(required)<span style="color: red;">*</span><br>
               <input class="in" type="text" name="email" placeholder="Enter Your Email" required><br><br>
               Subject(required)<span style="color: red;">*</span><br>
               <input class="in" type="text" name="subject" placeholder="Enter Subject"><br><br>
               Message(required)<span style="color: red;">*</span><br>
               <textarea class="in" name="message" placeholder="Type your message" style="height: 300px;"></textarea><br><br>
               <input class="qw" style="font-size: 16px; color: white;" type="submit" value="SEND">
            </form>
         </div>
         <br>
         <div class="col-3" style="width: 15%;float: right; background-color: rgb(217, 219, 224); overflow: auto; text-align: left; margin: 0 3% 3% 3%">
            <h1 align="center" style="color: rgb(76, 109, 86); font-size: 20px;margin: 5%;">CONTACT</h1>
            <div align="center" style="height: 120px; width: 120px;margin: 5%;margin-left: 20%"><img class="im" src="{{ asset('uploads/1.jpg') }}"></div>
            <p align="center" style="color: rgb(76, 109, 86); font-size: 20px;margin: 5%;">Abdur Rob Shahin</p>
            <p align="center" style="color: rgb(76, 109, 86); font-size: 20px;margin: 5%;">7898378532</p>
         </div>
      </div>
      <div id="footer" class="col-12" style="margin: 0; padding: 0;overflow: auto;">
         @include('include.footer')
      </div>
      <script src="{{ asset('js/iziToast.min.js') }}"></script>
      <!-- iziToast functionality code here -->
      @if ($errors->any())
      @foreach ($errors->all() as $error)
      <script>
         iziToast.error({
             title: '',
             position: 'topRight',
             message: '{{ $error }}',
         });
      </script>
      @endforeach
      @endif
      @if(session()->get('error'))
      <script>
         iziToast.error({
             title: '',
             position: 'topRight',
             message: '{{ session()->get('error') }}',
         });
      </script>
      @endif
      @if(session()->get('success'))
      <script>
         iziToast.success({
             title: '',
             position: 'topRight',
             message: '{{ session()->get('success') }}',
         });
      </script>
      @endif
      <!--// iziToast functionality code here -->
   </body>
</html>