//Local e Session Storage

var form = document.forms.aut;
var msg = document.getElementById('mensagem');
////STORAGE/////
if(typeof(Storage)!='undefined'){
//deu certo
msg.innerHTML = localStorage.saudacao;
}else{
//pense numa alternativa para o caso dos navegadores sem suporte ao Storage
}

function local (){
localStorage.saudacao='Olá '+form.nome.value;
localStorage.email=form.email.value;
}
 ////////////////////////////
 //SESSION STORAGE
 
var count=document.getElementById('contador');

function contagem (){
if(typeof(Storage)!= 'undefined'){

if(sessionStorage.contador){
sessionStorage.contador = 
Number(sessionStorage.contador)+1;
	}else{
sessionStorage.contador=1;	
	}
count.innerHTML='Essa sessão conta com ' +
sessionStorage.contador + ' acesso(s)';
} else{
//pense numa alternativa para os navegadores sem suporte....
	}}

contagem();

//TASK LIST//
//input button btEdit
var editaTarefa=
document.getElementById('btEdit');
//input button btLimpar
var limpaTarefa=
document.getElementById('btLimpar');
//ol tarefa
var minhaLista=document.getElementById('tarefa');
//conteudo de texto com os tags da lista
var conteudo;

function localTarefa(){
	editaTarefa.addEventListener
	('click',editar,false);
	limpaTarefa.addEventListener
	('click',limpar,false);
	document.addEventListener
	('DOMContentLoaded',restaurar,false)
}

//Armazena o que se escreve na lista em localStorage
function salvar(){
conteudo=document.getElementById('tarefa').innerHTML;

if(typeof(Storage)!='undefined'){
localStorage.minhaLista=conteudo;
	}
}

//libera a lista para a edição diretamente na página HTML e executa a função 'salvar'
function editar(){
console.log(minhaLista);
if(minhaLista.contentEditable == 'false'){
minhaLista.setAttribute('contentEditable',true);
minhaLista.focus();
editaTarefa.value="Editar";
	} else{
salvar();
minhaLista.setAttribute('contentEditable',false);
editaTarefa.value="Salvo!";
	}
}
//apaga o conteudo da lista removendo o objeto criado pelo localStorage
function limpar(){
localStorage.removeItem('minhaLista');
wvz
indow.location.reload();
} 
//ao carregar a página, verifica se o localStorage tem valor armazenado e adiciona para a lista
function restaurar(){
var carregaLista=localStorage.minhaLista;
if(carregaLista != undefined){
minhaLista.innerHTML=carregaLista;
	}
}

localTarefa();