// Not sure if this file is useful.

// // Google Map API3
//
// jQuery(function($) {
//   var script= document.createElement('script');
//   script.src = 'http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize';
//   document.body.appendChild(script);
// });
//
// function initialize() {
//   var map;
//   var bounds = new google.maps.LatLngBounds();
//   var mapOptions = {
//     mapTypeId: 'roadmap'
//   };
//
//   map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
//   map.setTilt(45);
//
//   var markers = [
//   // http://maps.google.com/maps?q={start_address}
//   ];
//
//   var infoWindowContent = [
//   // info content here.
//   ];
//
//   var infoWindow = new google.maps.InfoWindow(), marker, i;
//
//   for( i = 0; i < markers.length; i++) {
//     var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
//     bounds.extend(position);
//     marker = new google.maps.Marker({
//       position: position,
//       map: map,
//       title: markers[i][0]
//     });
//
//     google.maps.event.addListener(marker, 'click', (function(marker, i) {
//       return function() {
//         infoWindow.setContent(infoWindow[i][0]);
//         infoWindow.open(map, marker);
//       }
//     })(marker, i));
//
//     map.fitBounds(bounds);
//   }
//
//   var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
//     this.setZoom(14);
//     google.maps.event.removeListener(boundsListener)
//   });
//
// }

// http://wrightshq.com/playground/placing-multiple-markers-on-a-google-map-using-api-3/
// http://stackoverflow.com/questions/11160192/how-to-parse-freeform-street-postal-address-out-of-text-and-into-components
// https://developers.google.com/maps/documentation/javascript/geocoding
// https://developers.google.com/maps/documentation/business/articles/usage_limits#limitexceeded
