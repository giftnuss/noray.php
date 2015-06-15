<?php

require __DIR__ . '/setup.php';

plan(7);

use_ok('Noray\\AliasMap');

$map = new Noray\AliasMap;

is($map->get('ups'),null);

$map->register('2','pol');
is($map->get('2'),'pol');

$map->registerAlias('9','2');
is($map->get('9'),'pol');

ok(!$map->has('koala'),'have no koala');
ok($map->has('9'),'has alias 9');
ok($map->has('2'),'has key 2');
