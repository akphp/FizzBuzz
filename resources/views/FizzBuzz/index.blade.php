<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>FizzBuzz</title>
  </head>
  <body>
    <div class="container">

        <div class="row">
            <div class="col md-12">

           <h1 class="m-5">
            FizzBuzz 
           </h1>
    <table class="table m-5">
        <thead>
          <tr>
            <th scope="col">Number</th>
            <th scope="col">The result</th>
          </tr>
        </thead>
        <tbody>

            @for ($i = 1; $i <= 20; $i++)
          <tr>
            <td scope="row"> {{ $i }}</td>
            <td>
                @if($i % 3 == 0 )
                Fizz
                @elseif($i % 5 == 0 )
                Buzz
                @elseif($i % 3 == 0 and  $i % 5 == 0   )
                FizzBuzz
                @else
                {{ $i }}
                @endif
            </td>
          </tr>
          @endfor
          
        </tbody>
      </table>


    </div>
</div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>