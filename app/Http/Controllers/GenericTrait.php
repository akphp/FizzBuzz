<?php

namespace App\Http\Controllers;

use Exception;

// trait MagicGetterSetter
trait  GenericTrait
{
     
    // Variable  magic
    private $magic;
    
    //   function get  magic
    public function __get($magic) {
        try {
        if (property_exists($this, $magic)) {
            return $this->$magic;
            }
        }catch(Exception $e) {
            return false;
        } 
    }
 

     //   function set  magic
    public function __set($magic, $value) {
        try {
        if (property_exists($this, $magic)) {
            $this->$magic = $value;
         }
        }catch(Exception $e) {
            return false;
        } 
}



//  function  Fibonacci number (n):
function getFib($n)
        {
            if($n == 0 ) return 0;
            if($n == 1 ) return 1;
            if($n == 2 ) return 1;
            return  $this->getFib($n-1) +  $this->getFib($n - 2);
        }

}




// $myClass = new MagicGetterSetter();

// $myClass->magic = "This is a foo line";
// echo $myClass->magic;
