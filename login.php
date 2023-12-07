<?php
session_start();
require("header.php");
?>

<body>
  <div class="container" id="loginPage">
    <center>
      <div class="card card-default" id="loginCard">
        <h1>金好吃點餐系統</h1>
        <form action="control.php?act=login" method="POST">
          <div class="row">
            <label for="userName">帳戶名稱</label>
            <input type="text" name="userName" required autofocus>
          </div>
          <br>
          <div class="row">
            <label for="passWord">帳戶密碼</label>
            <input type="password" name="passWord" required>
          </div>
          <br>
          <div class="error">
            <?php
            if (isset($_SESSION["failed"]) && $_SESSION["failed"] == "logIn") {
              echo "<p>登入失敗</p>";
            }
            if (isset($_SESSION["signUp"])) {
              echo "<p>註冊成功</p>";
            }
            ?>
          </div>
          <button type="submit" class="btn btn-info">登入</button>
          <button type="button" class="btn btn-warning" onclick="javascript:location.href='signUp.php'">註冊</button>
        </form>
      </div>
    </center>
  </div>
</body>