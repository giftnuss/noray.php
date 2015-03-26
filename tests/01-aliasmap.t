<?php

require __DIR__ . '/setup.php';

use_ok('Noray\\AliasMap');

$map = new Noray\AliasMap;

is($map->get('ups'),null);

$map->register('2','pol');
is($map->get('2'),'pol');

$map->registerAlias('9','2');
is($map->get('9'),'pol');
