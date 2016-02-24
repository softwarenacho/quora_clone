$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 
  $("#login_form").submit(function(event) {
    event.preventDefault();
    var form_data = $("#login_form").serialize();
    var url = "/feed"
    $.post("/login", form_data, function(data){
      if (data == "User or password are incorrect") {
        $("#result").html(data);
      } else {
        window.location.href = url;
      }
    });
  });

  $("#register_form").submit(function(event) {
    event.preventDefault();
    var form_data = $("#register_form").serialize();
    var url = "/feed"
    $.post("/save_user", form_data, function(data){
      //console.log(data);
      if (data == "Your passwords do not match, please retype.") {
        $("#result").html(data);
      } else if (data == "Your email is already registered.") {
        $("#result").html(data);
      } else {
        window.location.href = url;
      }
    });
  });

  $("#update_user").submit(function(event) {
    event.preventDefault();
    var form_data = $("#update_user").serialize();
    var url = "/edit"
    $.post("/update_user", form_data, function(data){
      //console.log(data);
      if (data == "Your passwords do not match, please retype.") {
        $("#result").html(data);
      } else if (data == "Your email is already registered.") {
        $("#result").html(data);
      } else {
        $("#result").html(data);
      }
    });
  });

});
