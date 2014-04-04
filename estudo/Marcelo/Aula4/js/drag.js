//Drag and Drop

var obj;

function arrastar(user,e)
{
	obj = user.id;
	e.dataTransfer.setData('User', user.id);
	//cria a variavel de arraste
	var img=document.createElement('img');
	img.src="imagens/fig.png";
	//e.dataTransfer.setDragImage(img,0,0);
}

function soltar(target,e)
{
	var user = e.dataTransfer.getData('User');
	target.appendChild(document.getElementById(user));
}

function desbloquear(e)
{
	e.preventDefault();
}