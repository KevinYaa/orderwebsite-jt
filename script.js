$(document).ready(function () {
  var homepageKey = "order";

  $(".navbar-nav li").removeClass("active");
  if (localStorage.getItem("page") === null) {
    localStorage.setItem("page", homepageKey);
  }
  var page = "#" + localStorage.getItem("page");
  $(page).addClass("active");

  var page = localStorage.getItem("page") + ".php";
  $("#content").load(page);

  $(".navbar-brand").click(function () {
    $("#myNavbar").removeClass("in");
    $(".navbar-nav li").removeClass("active");
    $("#"+homepageKey).addClass("active");
    localStorage.setItem("page", homepageKey);
    $("#content").load(homepageKey +".php");
  });

  $(".navbar-nav li").click(function () {
    $("#myNavbar").removeClass("in");
    $(".navbar-nav li").removeClass("active");
    $(this).addClass("active");
    localStorage.setItem("page", $(this).attr("id"))
    var page = $(this).attr("id") + ".php";
    $("#content").load(page);
  });

});