<!DOCTYPE html>
<html>
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="css/main2.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <script type="text/javascript" src="js/script.js"></script>
   </head>
   <body>
      <div class="col-12" style="height: 350px">
         <div id="comname">
            <i class="fa fa-balance-scale" aria-hidden="true"></i><br><br>BLOOD <b>DONATION</b>
         </div>
         @include('include.nav')
         <span class="info2" style="left: 40%">FAQ</span>
         <img class="myFrontPic col-12" src="images/img1.jpg" style="height: 350px;">
      </div>


      <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    @php
                        $faq_all = \App\Models\Faq::get();
                    @endphp
                    <div class="accordion" id="accordionExample">
                        @php
                        $i=0;
                        @endphp
                        @foreach($faq_all as $item)
                        @php
                        $i++;
                        @endphp
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="heading{{ $i }}">
                            <button class="accordion-button @if($i!=1) collapsed @endif" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{{ $i }}" aria-expanded="@if($i==1) true @else false @endif" aria-controls="collapse{{ $i }}">
                                {{ $item->question }}
                            </button>
                            </h2>
                            <div id="collapse{{ $i }}" class="accordion-collapse collapse @if($i==1) show @endif" aria-labelledby="heading{{ $i }}" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    {!! $item->answer !!}
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>







      <div id="footer" class="col-12" style="margin: 0; padding: 0;overflow: auto;">
         @include('include.footer')
      </div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


   </body>
</html>