$(document).ready(function() {
  $('#new_user').click(function(event){
    event.preventDefault();

    var request1 = $.ajax({
    url: "/users/new",
    method: "get"
    });

    alert("Great Choice!");

    request1.done(function(response){
      $("#new_user").hide();
      $("#login").hide();
      $("body").append(response);

    });
  });
});
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  // var request1 = $.ajax({
  //   url: "/first",
  //   method: "get"
  // });

  // var request2 = $.ajax({
  //   url: "/second",
  //   method: "get"
  // });

  // request1.done(function(response) {
  //   console.log('first'),
  //   $("<div />").appendTo("body").append(response);
  // });

  // request2.done(function(response) {
  //   console.log('second'),
  //   $("<div />").appendTo("body").append(response);
  // });

