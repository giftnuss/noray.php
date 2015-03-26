<?php

namespace Noray;

class AliasMap
{    
    protected $map = array();
    protected $aliase = array();

    public function __construct()
    {
        $this->_initMap();
        $this->_initAliase();
    }
    
    public function register($code,$value)
    {
        $this->map[$code] = $value;
        return $this;
    }
    
    public function registerAlias($alias,$code)
    {
        $this->aliase[$alias] = $code;
        return $this;
    }
    
    public function get($name)
    {
        if(isset($this->aliase[$name])) {
            $name = $this->aliase[$name];
        }
        return $this->map[$name];
    }

    protected function _initMap()
    {
        
    }
    
    protected function _initAliase()
    {
    
    }
}
