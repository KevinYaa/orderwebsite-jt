<?php
session_start();
if (!isset($_SESSION["login"]))
  header("location:login.php");
require("header.php");
?>

<body data-spy="scroll" data-target=".navbar" data-offset="50">
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand">金好吃點餐系統</a>
      </div>

      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li id="adminhistory"><a href="#">所有訂單</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="control.php?act=logout"><span class="glyphicon glyphicon-log-in"></span>登出</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container" id="content">
  </div>
</body>

</html>