<!DOCTYPE html>
<html>
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="css/main2.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script type="text/javascript" src="js/script.js"></script>
      <style>

        body{
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        table{
            border:2px solid black;
            border-collapse: collapse;
            width:95%;
        }

        th,td{
            border:2px solid black;
            padding:5px;
            text-align: center;
        }

        th{
            background-color: darkgreen;
            color: white;
            height:30px;
        }

        tr:hover{
            background-color: darkgrey;
        }

        tr:nth-child(even){
            background-color: gold;
        }

        tr:nth-child(even):hover{
            background-color: darkgrey;
        }
    </style>
   </head>
   <body>
      <div class="col-12" style="height: 350px">
         <div id="comname">
            <i class="fa fa-balance-scale" aria-hidden="true"></i><br><br>BLOOD <b>DONATION</b>
         </div>
         @include('include.nav')
         <span class="info2" style="left: 40%">Donor Lists</span>
         <img class="myFrontPic col-12" src="images/img1.jpg" style="height: 350px;">
      </div>



      <table style="margin: 20px 30px;">
        <tr>
            <th>Full Name</th>
            <th>Blood Group</th>
            <th>Mobile</th>
            <th>Email</th>
            <th>Town</th>
            <th>State</th>
        </tr>



        @foreach ($search_results as $search_result)
        <tr>
            <td>{{ $search_result->fullname }}</td>
            <td>{{ $search_result->bloodgroup }}</td>
            <td>{{ $search_result->mobile }}</td>
            <td>{{ $search_result->email }}</td>
            <td>{{ $search_result->town }}</td>
            <td>{{ $search_result->state }}</td>
        </tr>
        @endforeach


    </table>






      <div id="footer" class="col-12" style="margin: 0; padding: 0;overflow: auto;">
         @include('include.footer')
      </div>
   </body>
</html>