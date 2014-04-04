//WEB WORKER

var wk;

function inicio(){
	
	if(typeof(Worker) != 'undefined')
	{
		if(typeof(wk) == 'undefined')
		{
			wk = new Worker("../js/tarefa.js");
		}

		wk.onmessage = function(event){
			
			document.getElementById('resultado');
			innerHTML = event.data;
		}
		else
		{
			//pensar em uma resposta caso nao tenha suporte para worker
		}
	
	}

}

//FUNÇÂO TERMINO
function termino()
{
	wk.terminate();
	wk=undefined;
}