<?php

namespace Noray;

trait Accessor
{
    public function __call($name, $args)
    {
        if(property_exists($this,$name)) {
            if($args) {
                $this->$name = $args[0];
                return $this;
            }
            else {
                return $this->$name;
            }
        }
        $this->_raiseInvalidProperty($name);
    }
    
    protected function _raiseInvalidProperty($name)
    {
        throw new \Exception("Unknown property $name!");
    }
}
 
