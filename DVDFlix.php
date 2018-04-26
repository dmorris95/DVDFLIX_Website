<?php
    session_start();
?>
<!DOCTYPE html>
<html>

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>DVD Flix</title>
    <style type="text/css">
    .heading {
    text-align: center; }</style>
</head>

<body>
    <h1 class="heading">DVD Flix</h1>
    <p><a href="Login.php">Login</a></p>
    <p>Add DVDs<a href="OpenAsText.php?filename=AddDVDs.php">Open As Text</a></p>
    <p>DVDs<a href="OpenAsText.php?filename=DVDs.php">Open As Text</a></p>
    <p>Forgot Password<a href="OpenAsText.php?filename=ForgotPass.php">Open As Text</a></p>
    <p>Include DVD Flix<a href="OpenAsText.php?filename=inc_dvdflix.php">Open As Text</a></p>
    <p>Include Hit Counter<a href="OpenAsText.php?filename=inc_hit_counter.php">Open As Text</a></p>
    <p>Member<a href="OpenAsText.php?filename=Member.php">Open As Text</a></p>
    <p>Queue<a href="OpenAsText.php?filename=Queue.php">Open As Text</a></p>
</body>

</html>
