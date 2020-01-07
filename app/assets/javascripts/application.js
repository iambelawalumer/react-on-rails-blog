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
//= require turbolinks
//= require_tree .
//= require common-js/jquery-3.1.1.min.js
//= require common-js/tether.min.js
//= require common-js/bootstrap.js
//= require common-js/scripts.js
window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove();
    });
}, 2000);

// $(document).ready(function() {
//     $(".delete").on("ajax:success", function (e, data, status, xhr) {
//         alert();
//      });
//     $(".delete").on("ajax:error", function(e, xhr, status, error) {
//         console.log ("ERROR");
//     });
// });
