<?php
include 'config.sample.inc.php';
$config['servers'] = array();
$config['servers'][] = array(
  'name'   => "redis_dc", # 顯示在 RedisAdmin 頁面上的名稱，可以隨意亂取名
  'host'   => "redis_dc", # Redis 容器名稱
  'port'   => "6379",      # Redis Port
  'filter' => '*',
);

?>
