<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Mapa.aspx.cs" Inherits="sigeco.Mapa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Left" runat="server">
    <script src="http://openlayers.org/api/OpenLayers.js" type="text/javascript"></script>
<link href="../Content/OpenLayers/style.css" rel="stylesheet" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDKn86zDbJ6-R5jXP7tnxtsEyIGJml-lRM&sensor=true"></script>




<script type="text/javascript">
    var map, select, popup;
    var popDT = "";
    var identificador = "";
    var apiKey = "AkdKdzB8Kw_0vfl17F8dtf_P07iY1H2Fvx4ExTeKAgsbQoePo69c15qLCDcFcJih";
    function init() {

        // alert("entre");

        map = new OpenLayers.Map("map");
        // alert("entre");
        var ghyb = new OpenLayers.Layer.Google("Google Hybrid", { type: google.maps.MapTypeId.HYBRID, visibility: false, numZoomLevels: 20 });
        map.addLayer(ghyb);

        var gmap = new OpenLayers.Layer.Google("Google Maps", { visibility: false, numZoomLevels: 20 });
        map.addLayer(gmap);

        var osm = new OpenLayers.Layer.OSM();
        map.addLayer(osm);
        var road = new OpenLayers.Layer.Bing({
            name: "Bing Maps",
            key: apiKey,
            visibility: false,
            type: "Road"
        });
        map.addLayer(road);
        var hybrid = new OpenLayers.Layer.Bing({
            name: "Bing Hybrid",
            key: apiKey,
            visibility: false,
            type: "AerialWithLabels"
        });
        map.addLayer(hybrid);
        map.addControl(new OpenLayers.Control.LayerSwitcher());
        map.addControl(new OpenLayers.Control.MousePosition());
        map.setCenter(new OpenLayers.LonLat(-86.57, 34.65).transform(new OpenLayers.Projection("EPSG:4326"), map.getProjectionObject()), 15);

    }
    function posicioname() {

        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var lat = position.coords.latitude;
                var lng = position.coords.longitude;
                var lnglat = new OpenLayers.LonLat(lng, lat).transform(
                    new OpenLayers.Projection("EPSG:4326"),
                    map.getProjectionObject())
                map.setCenter(lnglat, 16);

                var markers = new OpenLayers.Layer.Markers("Mi Ubicación");
                markers.addMarker(new OpenLayers.Marker(lnglat));
                map.addLayer(markers);

            });
        }

    }
    $(window).load(function () {

        init();
        posicioname();


    });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div id="map" style="width: 100%; height:100%;" />
</asp:Content>
