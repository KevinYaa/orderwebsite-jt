<?php require("model.php"); ?>

<div class="row">
  <?php adminshowHistory(); ?>
</div>
<script>
  $(document).ready(function(){
    $(".btn-info").click(function(){
      time = $(this).attr("id");
      $.post("control.php?act=orderDone",{
        recordtime : time
      }, function(data){
        alert(data);
        location.reload(); 
      });
    });

    $(".btn-danger").click(function(){
      time = $(this).attr("id");
      $.post("control.php?act=orderDelete",{
        recordtime : time
      }, function(data){
        alert(data);
        location.reload(); 
      });
    });
  });
</script>