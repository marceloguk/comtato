//CANVAS

var c1 = document.getElementById('c1');
var ctx1 = c1.getContext('2d');

var img1 = document.getElementById('img1');
var img2 = document.getElementById('img2');


function imagem()
{
	//drawImage(nomeDaImagem, x, y, largura, altura)
	ctx1.drawImage(img1, 100,100,100,100);
	ctx1.drawImage(img2, 50,50,100,100);
}

// parametro c é o CANVAS
function criaTexto(texto, x, y, c)
{
	c.font      = '20px Georgia';
	c.shadowOffSetX = 2;
	c.shadowOffSetY = 2;
	c.shadowBlur = 5;
	c.shadowColor = 'yellow';
	c.fillStyle = 'black';
	c.fillText(texto, x, y);  

}

//Linhas

function linhas(c)
{
	for(i=70;i>0;i--)
	{
		c.strokeStyle='rgba(80,80,80,0.2)';
		c.lineWdth = i;
		c.beginPath();
		//move(x,y)
		c.moveTo(500,500 + (15-i)*60); //inclinação
		c.lineTo(-10,550 + (15-i)*10); //posição
		c.stroke();
	}
}

//cria linhas
linhas(ctx1);
//cria o texto
criaTexto('MARCELOHH HHHH', 200, 200, ctx1);
//redesenha a imagem em canvas
setTimeout(function(){imagem();},10);




