const makeMap = async (target, center={ lat: 37.777528, lng: -122.438593 }) =>{
   await checkData(()=>window.google);

   let map_el = $(target);

   if(!map_el.data("map")) map_el.data({
      "map": new google.maps.Map(map_el[0], {
         center,
         zoom: 12,
         disableDefaultUI: true,
         styles: mapstyles,
      }),
      "infoWindow": new google.maps.InfoWindow({content:''}),
   });

   return map_el;
}



const makeMarkers = (map_el, map_locs=[]) => {
   let {map,markers} = map_el.data();

   if(markers) markers.forEach(m=>m.setMap(null));

   markers = [];

   map_locs.forEach(l=>{
      let m = new google.maps.Marker({
         position: l,
         map,
         icon: {
            url: l.icon,
            scaledSize: {
               width:40,
               height:40,
            }
         }
      });
      markers.push(m);
   });

   map_el.data({markers});
   setTimeout(()=>{ setMapBounds(map_el,map_locs); }, 150);
}


const setMapBounds = (map_el,map_locs) => {
   let {map} = map_el.data();
   let zoom = 14;

   if(map_locs.length === 1) {
      map.setCenter(map_locs[0]);
      map.setZoom(zoom);
   } else if(map_locs.length === 0) {
      if(window.location.protocol !== "https:") return;
      else {
         navigator.geolocation.getCurrentPosition(p=>{
            let pos = {
               lat:p.coords.latitude,
               lng:p.coords.longitude,
            };
            map.setCenter(pos);
            map.setZoom(zoom);
         },
         (...args)=>{
            console.log(args)
         },
         {
            enableHighAccuracy: false,
            timeout: 5000,
            maximumAge: 0,
         })
      }
   } else {
      let bounds = new google.maps.LatLngBounds(null);
      map_locs.forEach(l => {
         bounds.extend(l);
      });
      map.fitBounds(bounds);
   }
}




const mapstyles = [
  {
        "featureType": "all",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "weight": "2.00"
            }
        ]
    },
    {
        "featureType": "all",
        "elementType": "geometry.stroke",
        "stylers": [
            {
                "color": "#9c9c9c"
            }
        ]
    },
    {
        "featureType": "all",
        "elementType": "labels.text",
        "stylers": [
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "all",
        "stylers": [
            {
                "color": "#f2f2f2"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#ffffff"
            }
        ]
    },
    {
        "featureType": "landscape.man_made",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#ffffff"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "all",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "lightness": 45
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#eeeeee"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#7b7b7b"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "labels.text.stroke",
        "stylers": [
            {
                "color": "#ffffff"
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "all",
        "stylers": [
            {
                "color": "#46bcec"
            },
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#c8d7d4"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#070707"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "labels.text.stroke",
        "stylers": [
            {
                "color": "#ffffff"
            }
        ]
    }
]