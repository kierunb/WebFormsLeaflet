<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsLeaflet._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link href="Content/leaflet/leaflet.css" rel="stylesheet" />
    <main>
        <div class="row">
            <div id="map" style="height:800px"></div>
            <div id="text"></div>
        </div>
    </main>
<script src="Content/leaflet/leaflet.js"></script>
<script>
    var map = L.map('map').setView([52.22, 21.01], 13);
    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(map);

    var greenIcon = L.icon({
        iconUrl: 'Content/leaflet/images/tank1.png',
        //shadowUrl: 'leaf-shadow.png',

        iconSize: [95, 95], // size of the icon
        //shadowSize: [50, 64], // size of the shadow
        iconAnchor: [22, 94], // point of the icon which will correspond to marker's location
        shadowAnchor: [4, 62],  // the same for the shadow
        popupAnchor: [-3, -76] // point from which the popup should open relative to the iconAnchor
    });

    L.marker([52.22, 21.01], { icon: greenIcon }).addTo(map);
</script>
<script>

    $(document).ready(function () {
        console.log("ready!");

        $.getJSON("api/maps", function (data) {
            console.log(data);

            $("#text").html(data.message);
        });
    });


</script>
</asp:Content>


