//GEO LOCATION
var info=document.getElementById("info");
var infoMapa=document.getElementById("mapa");

function geoLoc(){
//suporte ao objeto geoLocation
if(navigator.geolocation){
	navigator.geolocation.getCurrentPosition(mostraLocal);
	}
//pense numa alternativa para o caso em que o navegador não tenha suporte
}
function mostraLocal(position){
info.innerHTML="Geo posicionamento: Latitude: "+
position.coords.latitude + " Longitude: " +
position.coords.longitude;
}

geoLoc();

////MAPA
function geoLocMapa(){
if(navigator.geolocation){
navigator.geolocation.getCurrentPosition(mostraLocalMapa,mostraErroMapa);
	}else{
//pense numa alternativa...
	}	
}

function mostraLocalMapa (position){
var latlon=position.coords.latitude+ "," + position.coords.longitude;

var urlMapa="http://maps.googleapis.com/maps/api/staticmap?center=" + latlon +
"&zoom=13&size=300x400&markers="+latlon+"&maptype=roadmap&sensor=false";
//sensor true te rastrea , rastrea sua posicao conforme vc anda
var urlMapa2="http://maps.googleapis.com/maps/api/staticmap?center=" + "Statue of Liberty" +
"&zoom=19&size=300x400&markers="+"Statue of Liberty"+"&maptype=hybrid&sensor=false";
infoMapa.innerHTML="<img src='"+urlMapa + "'><img src='"+urlMapa2 + "'>";
}

function mostraErroMapa(erro){
switch(erro.code){
case 'PERMISSION_DENIED':
infoMapa.innerHTML='Acesso negado';
break;
case 'POSITION UNAVAILABLE':
infoMapa.innerHTML='Posição indisponível';
break;
case 'TIMEOUT':
infoMapa.innerHTML='Tempo excedido';
break;
case 'UNKNOW ERROR':
infoMapa.innerHTML='Erro desconhecido';
break;
	}
}

geoLocMapa();
