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

function myFunction() {
    // Declare variables
    var input, filter, ul, li, a, i;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName('li');

    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}

function searchFriend() {
    // Declare variables
    var input, filter, userPhotos, userHours, img, i;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    userPhotos = document.getElementById("userPhotos");
    img = userPhotos.getElementsByTagName('img');
    userHours = document.getElementById("userHours");
    hoursRow = userHours.getElementsByTagName('div');
    console.log(userHours.children);
    for (i = 0; i < img.length; i++){
      if (img[i].getAttribute('id').toUpperCase().indexOf(filter) > -1) {
        img[i].style.display = "";
        userHours.children[i].style.display="";
        //console.log(filter);
      } else {
        img[i].style.display="none";
        userHours.children[i].style.display="none";
      }
      //console.log(img[i].getAttribute('id'))
    }
    // Loop through all list items, and hide those who don't match the search query

}
