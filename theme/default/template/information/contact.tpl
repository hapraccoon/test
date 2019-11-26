<?php echo $header; ?>
<div id="breadcrumb">
    <div class="width">
        <ul>
            <?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
            <li>
                <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            </li>
            <?php if ((count($breadcrumbs) - 1) > $key) { ?>
            <i class="fa fa-chevron-right"></i>
            <?php } ?>
            <?php } ?>
        </ul>
    </div>
</div>
<main class="page contacts">
    <div class="width">
        <h1><?php echo $heading_title; ?></h1>
        <div class="maps">
            <div class="tabs-block">
                <div class="tabs">
                    <?php if (!empty($address_1)) { ?>
                    <div data-address="1"><?php echo $address_1; ?></div>
                    <?php } ?>
                    <?php if (!empty($address_2)) { ?>
                    <div data-address="2"><?php echo $address_2; ?></div>
                    <?php } ?>
                </div>
            </div>
            <div id="address-1" class="map active"></div>
            <div id="address-2" class="map"></div>
        </div>
        <div class="contacts contact-1 active">
            <?php if (!empty($address_1)) { ?>
            <div class="item">
                <figure><img src="/image/system/marker.png" alt=""></figure>
                <div><?php echo !empty($city) ? $city . ', ' . $address_1 : $address_1; ?></div>
            </div>
            <?php } ?>
            <?php if (!empty($open)) { ?>
            <div class="item">
                <figure><img src="/image/system/big-clock.png" alt=""></figure>
                <div><?php echo $open; ?></div>
            </div>
            <?php } ?>
            <?php if (!empty($telephone_1)) { ?>
            <div class="item">
                <figure><img src="/image/system/big-phone.png" alt=""></figure>
                <div><?php echo $telephone_1; ?></div>
            </div>
            <?php } ?>
            <?php if (!empty($email)) { ?>
            <div class="item">
                <figure><img src="/image/system/big-mail.png" alt=""></figure>
                <div><?php echo $email; ?></div>
            </div>
            <?php } ?>
        </div>

        <div class="contacts contact-2">
            <?php if (!empty($address_2)) { ?>
            <div class="item">
                <figure><img src="/image/system/marker.png" alt=""></figure>
                <div><?php echo !empty($city) ? $city . ', ' . $address_2 : $address_2; ?></div>
            </div>
            <?php } ?>
            <?php if (!empty($open)) { ?>
            <div class="item">
                <figure><img src="/image/system/big-clock.png" alt=""></figure>
                <div><?php echo $open; ?></div>
            </div>
            <?php } ?>
            <?php if (!empty($telephone_2)) { ?>
            <div class="item">
                <figure><img src="/image/system/big-phone.png" alt=""></figure>
                <div><?php echo $telephone_2; ?></div>
            </div>
            <?php } ?>
            <?php if (!empty($email)) { ?>
            <div class="item">
                <figure><img src="/image/system/big-mail.png" alt=""></figure>
                <div><?php echo $email; ?></div>
            </div>
            <?php } ?>
        </div>
    </div>
</main>
<?php if (!empty($geocode_1) || !empty($geocode_2)) { ?>
<script type="text/javascript">
    $(document).ready(function () {
        $('.tabs > div').eq(0).addClass('active');
    });

    function initMap(){var styleArray=[
    {
    "featureType": "administrative",
    "elementType": "labels.text.fill",
    "stylers": [
    {
    "visibility": "on"
    },
    {
        "color": "#737373"
    }
    ]
    },
    {
        "featureType": "administrative.land_parcel",
            "elementType": "labels.text",
            "stylers": [
        {
            "color": "#e4b1cd"
        },
        {
            "visibility": "simplified"
        }
    ]
    },
    {
        "featureType": "landscape",
            "elementType": "geometry.fill",
            "stylers": [
        {
            "visibility": "on"
        },
        {
            "color": "#fff4f9"
        }
    ]
    },
    {
        "featureType": "landscape.man_made",
            "elementType": "geometry.stroke",
            "stylers": [
        {
            "visibility": "off"
        }
    ]
    },
    {
        "featureType": "poi",
            "elementType": "geometry.fill",
            "stylers": [
        {
            "color": "#fff4f9"
        }
    ]
    },
    {
        "featureType": "poi",
            "elementType": "labels.text",
            "stylers": [
        {
            "visibility": "simplified"
        },
        {
            "color": "#e7b9d1"
        }
    ]
    },
    {
        "featureType": "poi.business",
            "elementType": "labels.text",
            "stylers": [
        {
            "color": "#e4b1cd"
        },
        {
            "visibility": "simplified"
        }
    ]
    },
    {
        "featureType": "poi.business",
            "elementType": "labels.icon",
            "stylers": [
        {
            "visibility": "simplified"
        }
    ]
    },
    {
        "featureType": "poi.school",
            "elementType": "labels.text",
            "stylers": [
        {
            "visibility": "simplified"
        },
        {
            "color": "#e4b1cd"
        }
    ]
    },
    {
        "featureType": "poi.school",
            "elementType": "labels.icon",
            "stylers": [
        {
            "visibility": "simplified"
        }
    ]
    },
    {
        "featureType": "road",
            "elementType": "geometry.fill",
            "stylers": [
        {
            "visibility": "on"
        },
        {
            "color": "#fbd9eb"
        }
    ]
    },
    {
        "featureType": "road",
            "elementType": "geometry.stroke",
            "stylers": [
        {
            "color": "#fbd9eb"
        }
    ]
    },
    {
        "featureType": "road",
            "elementType": "labels.text.fill",
            "stylers": [
        {
            "color": "#e4b1cd"
        }
    ]
    },
    {
        "featureType": "road",
            "elementType": "labels.icon",
            "stylers": [
        {
            "visibility": "off"
        }
    ]
    },
    {
        "featureType": "road.highway",
            "elementType": "geometry",
            "stylers": [
        {
            "visibility": "on"
        }
    ]
    },
    {
        "featureType": "road.highway",
            "elementType": "geometry.fill",
            "stylers": [
        {
            "color": "#fbd9eb"
        },
        {
            "visibility": "on"
        }
    ]
    },
    {
        "featureType": "road.highway",
            "elementType": "geometry.stroke",
            "stylers": [
        {
            "visibility": "on"
        },
        {
            "color": "#fbd9eb"
        }
    ]
    },
    {
        "featureType": "road.arterial",
            "elementType": "geometry.fill",
            "stylers": [
        {
            "color": "#fbd9eb"
        },
        {
            "weight": "10"
        }
    ]
    },
    {
        "featureType": "road.arterial",
            "elementType": "geometry.stroke",
            "stylers": [
        {
            "color": "#fbd9eb"
        }
    ]
    },
    {
        "featureType": "road.arterial",
            "elementType": "labels.icon",
            "stylers": [
        {
            "visibility": "on"
        }
    ]
    },
    {
        "featureType": "road.local",
            "elementType": "geometry.fill",
            "stylers": [
        {
            "weight": "4.00"
        },
        {
            "hue": "#ff0087"
        }
    ]
    },
    {
        "featureType": "transit",
            "elementType": "all",
            "stylers": [
        {
            "visibility": "simplified"
        }
    ]
    },
    {
        "featureType": "transit",
            "elementType": "labels.text",
            "stylers": [
        {
            "color": "#e4aecd"
        }
    ]
    },
    {
        "featureType": "transit.station",
            "elementType": "labels.icon",
            "stylers": [
        {
            "visibility": "simplified"
        }
    ]
    }
    ];

    var image='/image/system/map-mark.png';
    <?php if (!empty($geocode_1)) { ?>
    <?php $codeAr = explode(',', $geocode_1); ?>
        var map_1=new google.maps.Map(document.getElementById('address-1'),
                {center:{
                lat:<?php echo $codeAr[0]; ?>,
                lng:<?php echo $codeAr[1]; ?>},
                scrollwheel:true,
                styles:styleArray,
                zoomControl:false,
                streetViewControl:false,
                mapTypeControl:false,
                fullscreenControl: false,
                zoom:17}
    );
    var beachMarker_1=new google.maps.Marker({position:{lat:<?php echo $codeAr[0]; ?>,lng:<?php echo $codeAr[1]; ?>},map:map_1,icon:image});
    <?php } ?>

    <?php if (!empty($geocode_2)) { ?>
    <?php $codeAr = explode(',', $geocode_2); ?>
        var map_2=new google.maps.Map(document.getElementById('address-2'),
                {center:{
                lat:<?php echo $codeAr[0]; ?>,
                lng:<?php echo $codeAr[1]; ?>},
                scrollwheel:true,
                styles:styleArray,
                zoomControl:false,
                streetViewControl:false,
                mapTypeControl:false,
                fullscreenControl: false,
                zoom:17}
    );
    var beachMarker_2=new google.maps.Marker({position:{lat:<?php echo $codeAr[0]; ?>,lng:<?php echo $codeAr[1]; ?>},map:map_2,icon:image});
    <?php } ?>

    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf-hsTgqnZkyUEnOtvyinarywEN1hDLMc&callback=initMap"></script>
<?php } ?>
<?php echo $footer; ?>