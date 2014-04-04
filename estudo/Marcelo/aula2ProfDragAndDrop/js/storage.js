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

