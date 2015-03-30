<?php

require __DIR__ . '/setup.php';

class One
{
   protected $one = 1;
   
   use Noray\Accessor;
}

$self = new One;
is($self->one(),1,'read');
isa_ok($self->one(1.1),'One');

is($self->one(),1.1,'second read');
