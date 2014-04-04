//CONSOME XML
var ajax_xml;
//verificação de suporte
function consomeXML(){
if(window.XMLHttpRequest){
ajax_xml= new XMLHttpRequest();
	} else{
ajax_xml= new ActiveXObject("Microsoft.XMLHTTP");
	}

//status do processo e status da página
ajax_xml.onreadystatechange=function(){
if(ajax_xml.readyState == 4 && ajax_xml.status == 200){
ajax_xml.responseXML;

var ct=ajax_xml.responseXML;
var qtd=ct.getElementsByTagName('produtos').length;

//0=Nome,1=Fabricante,2=Preco,3=legenda,
//4=imagem,5=URL,6=Descrição
for(var i=0;i<qtd;i++){
//Variavel raiz do XML
var info =ct.getElementsByTagName('produtos')[i];
//Variaveis dos produtos
var nome = info.children[0].innerHTML;
var fabric= info.children[1].innerHTML;
var preco=info.children[2].innerHTML;
var legenda = info.children[3].innerHTML;
var imagem = info.children[4].innerHTML;
var url = info.children[5].innerHTML;
var descricao = info.children[6].innerHTML;
//end variaveis

//criando o objeto DIV
var div = document.createElement('div');
//div.setAttribute('width',150);
//div.setAttribute('height',150);
//estilos
div.style.backgroundColor="#fff";
div.style.margin="10px";
div.style.padding="5px";
div.style.color="#000";
//associando uma classe CSS
div.className="ajuste";
//Criando elemento a
var link=document.createElement('a');
link.href=url;
link.target="_blank";
//Criando elemento img
var img = document.createElement('img');
img.src=imagem;
img.style.display="block";
img.style.padding="8px";
//anexa a img ao link
link.appendChild(img);
//Criando e elemento 'h1'
var tit=document.createElement('h1');
//Criando o elemento 'p'
var p1=document.createElement('p');
var p2=document.createElement('p');
var p3=document.createElement('p');//Crianto elemento texto
var nomeTXT=
document.createTextNode(nome);
tit.appendChild(nomeTXT);
var legendaTXT=
document.createTextNode(legenda);
p1.appendChild(legendaTXT);
var precoTXT=
document.createTextNode("R$ "+preco);
p2.appendChild(precoTXT);
var descTXT = document.createTextNode(descricao);
p3.appendChild(descTXT);
p3.className='p3';
//inserindo conteúdo
div.appendChild(tit);
div.appendChild(link);
div.appendChild(p1);
div.appendChild(p2);
div.appendChild(p3);
document.getElementById('infoXML').appendChild(div);
			}
		}
	}
ajax_xml.open
("GET","../consumirXML/loja.xml",true);
ajax_xml.send();
}
consomeXML();
