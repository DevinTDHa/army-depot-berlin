---
layout: default
title: Army Depot Berlin - Anfahrtskizze
---
# Anfahrt

Sie finden uns in der 

Wilmersdorfer Str. 164, 10585 Berlin Charlottenburg

um die Ecke vom U-Bahnhof Richard Wagner Platz (U7).  

[Link zu Google Maps](https://maps.app.goo.gl/oM6H3EHo63ayXjyh6).

## Kartenansicht

<div id="maps-iframe" style="height: 400px; width: 100%; display: none;"></div>

<div id="gdpr-notice" class="gdpr-rundgang">
    <p>Wir verwenden Leaflet und OpenStreetMap, um Ihnen einen eine Kartenansicht anzubieten. Durch Klicken auf "Akzeptieren" stimmen Sie der Datenverarbeitung durch beiden Organisationen zu.</p>
    <button onclick="acceptGDPR()">Akzeptieren</button>
    <noscript>
        <p>JavaScript ist bei Ihnen deaktiviert, wird aber benötigt, um den virtuellen Rundgang anzuzeigen.</p>
    </noscript>
</div>

<script>
function acceptGDPR() {
    document.getElementById('gdpr-notice').style.display = 'none';
    document.getElementById('maps-iframe').style.display = 'block';
    
    // Dynamically load Leaflet CSS
    const leafletCSS = document.createElement('link');
    leafletCSS.rel = 'stylesheet';
    leafletCSS.href = 'https://unpkg.com/leaflet@1.9.4/dist/leaflet.css';
    leafletCSS.integrity = 'sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=';
    leafletCSS.crossOrigin = '';
    document.head.appendChild(leafletCSS);
    
    // Dynamically load Leaflet JS
    const leafletScript = document.createElement('script');
    leafletScript.src = 'https://unpkg.com/leaflet@1.9.4/dist/leaflet.js';
    leafletScript.integrity = 'sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=';
    leafletScript.crossOrigin = '';
    leafletScript.onload = initMap;
    document.body.appendChild(leafletScript);
}

function initMap() {
    // Initialize Leaflet map
    const location = [52.517243, 13.304709];
    var map = L.map('maps-iframe').setView(location, 16);
    
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);
    
    // Add marker
    L.marker(location).addTo(map)
        .bindPopup('Army Depot Berlin<br>Wilmersdorfer Str. 164<br>10585 Berlin Charlottenburg')
        .openPopup();
}
</script>
