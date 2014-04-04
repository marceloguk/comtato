//AJAX REPONSE TEXT

var ajax;

function consomeTexto (urlTXT){

	//verifica objeto ajax
	if(window.XMLHttpRequest)
	{
		ajax = new XMLHttpRequest();
	} 
	else
	{
		ajax=new ActiveXObject("Microsoft.XMLHTTP");
	}
	//leitura do status de processo e do documento
	ajax.onreadystatechange = function(){

		if(ajax.readyState == 4 && ajax.status == 200)
		{
			document.getElementById('infoTXT').innerHTML= ajax.responseText;
		}
	}
	
	//abre conexão com o arquivo e recupera conteúdo
	ajax.open("GET",urlTXT,true);
	ajax.send();
}
//execute functions
consomeTexto("../consumirTXT/not1.txt");

var n1=document.getElementById('n1');
var n2=document.getElementById('n2');

n1.addEventListener('click',function(){consomeTexto("../consumirTXT/not1.txt");},false);
n2.addEventListener('click',function(){consomeTexto("../consumirTXT/not2.txt");},false);