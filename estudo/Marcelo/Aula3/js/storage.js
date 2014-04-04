//Local e session storage

var form = document.forms.aut;
var msg  = document.getElementById('mensagem');

/////STORAGE/////
if(typeof(Storage)!='undefined')
{
	//deu certo
	msg.innerHTML = localStorage.saudacao;
}
else
{
	//pense em uma alternativa caso o navegador não d suporte
}

function Local()
{
	localStorage.saudacao = 'Olá '+form.nome.value;
	localStorage.email    = form.email.value;
}

/////Session STORAGE/////

var count = document.getElementById('contador');

function contagem()
{
	if(typeof(Storage)!='undefined')
	{
		if(sessionStorage.contador) sessionStorage.contador = Number(sessionStorage.contador)+1;
		else sessionStorage.contador = 1;
		
		count.innerHTML = 'Esta sessão conta com '+sessionStorage.contador+' acesso(s)';
	}
	else
	{
		//pense em uma alternativa caso o navegador não d suporte
	}

}

contagem();

//Task LIST

//Input button btEdit
var editaTarefa = document.getElementById('btEdit');
//Input button btLimpar
var limpaTarefa = document.getElementById('btLimpar');
//ol tarefa
var minhaLista = document.getElementById('tarefa');
//conteudo de texto com os tags da lista
var conteudo;

function localTarefa()
{
	editaTarefa.addEventListener('click', editar, false);
	limpaTarefa.addEventListener('click', limpar, false);
	document.addEventListener('DOMContentLoaded', restaurar, false);
}


//Armazena o que se escreve na lista em local Storage
function salvar()
{
	conteudo = document.getElementById('tarefa').innerHTML;
	
	if(typeof(Storage)!='undefined')
	{
		localStorage.minhaLista = conteudo
	}
}

//Libera a lista para edição diretamente na pagina html e executa a função salvar
function editar()
{
	if(minhaLista.contentEditable == 'false')
	{
		minhaLista.setAttribute('contentEditable', true);
		minhaLista.focus();
		editaTarefa.value = 'Editar';
	}
	else
	{
		salvar();
		minhaLista.setAttribute('contentEditable', false);
		editaTarefa.value = 'Salvo';
	}
}

//Apaga o conteudo da lista removendo o obj criado pelo local storage
function limpar()
{
	localStorage.removeItem('minhaLista');
	//F5
	window.location.reload();
}
//ao carregar a pagina verifica se o local Storage tem valor armazenado
function restaurar()
{
	var carregaLista = localStorage.minhaLista;
	if(carregaLista != undefined)
	{
		minhaLista.innerHTML = carregaLista;
	}
}

localTarefa();












