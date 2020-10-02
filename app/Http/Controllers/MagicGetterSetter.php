<?php

namespace App\Http\Controllers;

use Exception;

// trait MagicGetterSetter
trait  MagicGetterSetter
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
            return round(pow((sqrt(5)+1)/2, $n) / sqrt(5)) ?? "-----"    ;
        }

}




// $myClass = new MagicGetterSetter();

// $myClass->magic = "This is a foo line";
// echo $myClass->magic;
