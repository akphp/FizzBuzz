<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AppContoller extends Controller
{
    use GenericTrait;
   
    //  FizzBuzz  loop that will print all the numbers for the range, 1-20
     public function FizzBuzz()
    {
      return view('FizzBuzz.index');
    }


    //   function in PHP, to obtain a given Fibonacci number (n):

     function Fibonacci($n)
        {
            return $this->getFib($n);
        }

        function magic($n)
        {
          $myClass = new $this->MagicGetterSetter();

          $myClass->magic = "This is a foo line";
          return $myClass->magic;
        }

        
}
