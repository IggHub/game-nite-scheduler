// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

var dateToday = new Date();
var dateTodayString = dateToday.toDateString();

function searchFriend() {
    // Declare variables
    var input, filter, userPhotos, userHours, img, i;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    friendsPhotoContainer = document.getElementsByClassName('friends-photo-container')
    userHours = document.getElementById("userHours");

    console.log(friendsPhotoContainer);
    for (i = 0; i < friendsPhotoContainer.length; i++){
      if (friendsPhotoContainer[i].getAttribute('id').toUpperCase().indexOf(filter) > -1) {

        friendsPhotoContainer[i].style.display = "";
        userHours.children[i].style.display="";
        //console.log(filter);
      } else {


        friendsPhotoContainer[i].style.display = "none";
        userHours.children[i].style.display="none";
      }
    }
}

$(document).ready(function() {
  var counter = 0;

  $('.grey, .green, .red').click(function() {
    var hourData = $(this).data('hour');
    var userIdData = $(this).data('userId');
    var availabilityIdData = $(this).data('availabilityId');
    var classNameData = $(this).attr('class');
    var that = this;
    console.log("hourData: " + hourData + " userIdData: " + userIdData + " className: " + classNameData + "availability: " + availabilityIdData);

    //if className = grey -> do POST create
    //if className = green -> do DELETE destroy
    //if className = red -> do ?

    if (classNameData === "grey") {
      $.ajax({
        url: '/availability',
        type: 'POST',
        dataType: 'json',
        data: {
          authenticity_token: window._token,
          available_hour: hourData
        },
        success: function(){
          that.className = {
             grey : 'green', green: 'red', red: 'grey'
          }[that.className];
          console.log("Success!!!");

        },
        error: function(v){
          console.log(v);
          //show error message here
        }
      })
    } else if (classNameData === "green") {
      $.ajax({
        url: '/availability/' + userIdData,
        type: 'DELETE',
        dataType: 'json',
        data: {
          authenticity_token: window._token,

        },
        success: function(){
          console.log("yay!");
        },
        error: function(v){
          console.log(v);
        }
      })
      console.log('click me one more time (Green) and I will delete it!')
    } else {
      console.log("Create new schedule");
    }



  });

/*
  $('.hour-block').click(function(){
    var hourData = $(this).data('hour');
    var userIdData = $(this).data('userId');
    var colorData = $(this).data('color');
    console.log("userID: " + userIdData + " hour: " + hourData + " color T/F: " + colorData);

    //changes bg to blue
    //$(this).css('background', 'green');
  })
*/
});


/* for displaying options on right click */
/*
$(document).bind("contextmenu", function(event) {

  // Avoid the real one
  event.preventDefault();

  // Show contextmenu
  $(".custom-menu").finish().toggle(100).

  // In the right position (the mouse)
  css({
    top: event.pageY + "px",
    left: event.pageX + "px"
  });
});

// If the document is clicked somewhere
$(document).bind("mousedown", function(e) {

  //If the clicked element is not the menu
  if (!$(e.target).parents(".custom-menu").length > 0) {

    // Hide it
    $(".custom-menu").hide(100);
  }
});

// If the menu element is clicked
$(".custom-menu li").click(function() {

  // Hide it AFTER the action was triggered
  $(".custom-menu").hide(100);
});
*/
