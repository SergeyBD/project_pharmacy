// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap
//= require_tree
//= require jquery.ui.accordion
//= require jquery.jscrollpane
//= require jquery.mousewheel
//= require jquery.mwheelintent
//= require misc


$(function() {
    var myId = $("#accordion");
    myId.accordion();

    ymaps.ready(init);

    var myMap,
        myPlacemark1, myPlacemark2, myPlacemark3, myPlacemark4, myPlacemark5, myPlacemark6, myPlacemark7;

    function init(){
        myMap = new ymaps.Map ("map", {
            center: [55.75, 37.65],
            zoom: 11
        });

        myPlacemark1 = new ymaps.Placemark([55.751798,37.664292], {
            hintContent: 'Аптека №1 "Курская"'
        });

        myPlacemark2 = new ymaps.Placemark([55.678497,37.651947], {
            hintContent: 'Аптека №2 "Коломенская"'
        });

        myPlacemark3 = new ymaps.Placemark([55.775795,37.531896], {
            hintContent: 'Аптека №3 "Беговая"'
        });

        myPlacemark4 = new ymaps.Placemark([55.725020,37.457425], {
            hintContent: 'Аптека №4 "Славянский бульвар"'
        });

        myPlacemark5 = new ymaps.Placemark([55.727096,37.608097], {
            hintContent: 'Аптека №5 "Октябрьская"'
        });

        myPlacemark6 = new ymaps.Placemark([55.806767,37.575262], {
            hintContent: 'Аптека №6 "Дмитровская"'
        });

        myPlacemark7 = new ymaps.Placemark([55.801414,37.719600], {
            hintContent: 'Аптека №7 "Преображенская площадь"'
        });

        myMap.controls.add('mapTools');
        myMap.controls.add('typeSelector');
        myMap.controls.add('zoomControl');
        myMap.geoObjects.add(myPlacemark1);
        myMap.geoObjects.add(myPlacemark2);
        myMap.geoObjects.add(myPlacemark3);
        myMap.geoObjects.add(myPlacemark4);
        myMap.geoObjects.add(myPlacemark5);
        myMap.geoObjects.add(myPlacemark6);
        myMap.geoObjects.add(myPlacemark7);
    }

});