<?php

namespace One;

require __DIR__ . '/setup.php';

class Two
{   
   use \Noray\DefaultName;
   
   public function getName()
   {
	   return $this->_getDefaultName();   
   }
}

class Three extends Two
{
	
}

namespace main;

$self = new \One\Two;
is($self->getName(),'one_two','one_two');

$three = new \One\Three;
is($three->getName(),'one_three','one_three');
