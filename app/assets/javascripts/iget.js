
$(document).ready(function(){
      id = $(this).attr('id');
      $.ajax({
      url: "/iget/index/" + id,
      type: "GET",
      success: function (data) {
          // call my modal pop-up
          $( ".tweets" ).dialog();
      }
    }, 10000);
    });
