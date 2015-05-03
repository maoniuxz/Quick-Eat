// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


//var x = document.getElementById("map");
//function getLocation()
//{
//    if (navigator.geolocation)
//    {
//        navigator.geolocation.getCurrentPosition(showPosition);
//    }
//    else{x.innerHTML = "Geolocation is not supported by this browser.";}
//}
//function showPosition(position)
//{
//    handler = Gmaps.build('Google', { markers: { maxRandomDistance: null } });
//    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
//        //markers = handler.addMarkers([
//        //    {
//        //        "lat": position.coords.latitude,
//        //        "lng": position.coords.longitude,
//        //        "picture": {
//        //            "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
//        //            "width":  36,
//        //            "height": 36
//        //        },
//        //        "infowindow": "You!"
//        //    }
//        //]);
//        //handler.bounds.extendWith(markers);
//        //handler.fitMapToBounds();
//    });
//    var lat = position.coords.latitude
//    var lon = position.coords.longitude
//    var parsed_data = {location: {lat: lat, lon: lon}}
//    if (!window.location.search) {
//        window.location = ('/findme?lat=' + lat + '&lon=' + lon);
//    }
//}
