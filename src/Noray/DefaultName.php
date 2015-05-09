<?php

namespace Noray;

trait DefaultName
{
	protected function _getDefaultName()
	{
		$name = get_class($this);
		return strtolower(str_replace('\\','_',$name));
	}
}
 
