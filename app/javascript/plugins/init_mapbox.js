// mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
// var map = new mapboxgl.Map({
//     style: 'mapbox://styles/mapbox/light-v10',
//     center: [-74.0066, 40.7135],
//     zoom: 15.5,
//     pitch: 45,
//     bearing: -17.6,
//     container: 'map',
//     antialias: true
// });

// // The 'building' layer in the mapbox-streets vector source contains building-height
// // data from OpenStreetMap.
// map.on('load', function() {
//     // Insert the layer beneath any symbol layer.
//     var layers = map.getStyle().layers;

//     var labelLayerId;
//     for (var i = 0; i < layers.length; i++) {
//         if (layers[i].type === 'symbol' && layers[i].layout['text-field']) {
//             labelLayerId = layers[i].id;
//             break;
//         }
//     }

//     map.addLayer({
//             'id': '3d-buildings',
//             'source': 'composite',
//             'source-layer': 'building',
//             'filter': ['==', 'extrude', 'true'],
//             'type': 'fill-extrusion',
//             'minzoom': 15,
//             'paint': {
//                 'fill-extrusion-color': '#aaa',

//                 // use an 'interpolate' expression to add a smooth transition effect to the
//                 // buildings as the user zooms in
//                 'fill-extrusion-height': [
//                     'interpolate', ['linear'],
//                     ['zoom'],
//                     15,
//                     0,
//                     15.05, ['get', 'height']
//                 ],
//                 'fill-extrusion-base': [
//                     'interpolate', ['linear'],
//                     ['zoom'],
//                     15,
//                     0,
//                     15.05, ['get', 'min_height']
//                 ],
//                 'fill-extrusion-opacity': 0.6
//             }
//         },
//         labelLayerId
//     );
// });

// var marker = new mapboxgl.Marker()
//     .setLngLat([6.2239734, 49.6136199])
//     .addTo(map);



// var marker = new mapboxgl.Marker()
//     .setLngLat([5.901887, 49.641085])
//     .addTo(map);

// // Add geolocate control to the map.
// map.addControl(
//     new mapboxgl.GeolocateControl({
//         positionOptions: {
//             enableHighAccuracy: true
//         },
//         trackUserLocation: true
//     })
// );
// map.addControl(
//     new MapboxDirections({
//         accessToken: mapboxgl.accessToken
//     }),
//     'top-left'
// );
// map.on('load', function() {
//     map.resize();
// });

// if (navigator.geolocation) { // device can return its location
//     navigator.geolocation.getCurrentPosition(function(position) {
//         console.log(position.coords.latitude);
//         console.log(position.coords.longitude);
//     });
// }
// map.addControl(new mapboxgl.FullscreenControl());