<?php
$filename=$_GET['filename'];
$x='Content-disposition: attachment; filename='+$filename;
header($x);
header('Content-type: text/plain');
readfile($filename);
?>