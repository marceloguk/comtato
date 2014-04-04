//lucidChart wireFrame

//CANVAS

var c1 = document.getElementById('c1');
var ctx1 = c1.getContext('2d');

var img1 = document.getElementById('img1');
var img2 = document.getElementById('img2');
//
var c2 = document.getElementById('c2');
var ctx2 = c2.getContext('2d');
//
var c3 = document.getElementById('c3');
var ctx3 = c3.getContext('2d');
//
var c4 = document.getElementById('c4');
var ctx4 = c4.getContext('2d');

var c5 = document.getElementById('c5');
var ctx5 = c5.getContext('2d');

var c6 = document.getElementById('c6');
var ctx6 = c6.getContext('2d');

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
		c.lineWidth = i;
		c.beginPath();
		//move(x,y)
		c.moveTo(500,550 + (15-i)*70); //inclinação
		c.lineTo(-10,550 + (15-i)*10); //posição
		c.stroke();
	}
}

//CIRCULO
//linha = largura do contorno , corLinha = cor do contorno, c = contexto
function criaCirculo(x, y, cor, tamanho, linha, corLinha, c)
{
	c.beginPath();
	c.fillStyle = cor;
	c.arc(x, y, tamanho, 0, 2*Math.PI, true);
	c.fill();
	//contorno
	c.strokeStyle = corLinha;
	c.lineWidth = linha;
	c.stroke();
	
	//alert(x+" gg "+y+""+cor+tamanho+linha+corLinha+"teste "+c);
}

//RETANGULO
function criaRetangulo(x,y,larg,alt,cor,l,corL,c)
{
	c.fillStyle = cor;
	c.fillRect(x,y,larg,alt);
	c.strokeStyle = corL;
	c.lineWidth = l;
	c.strokeRect(x,y,larg,alt);	
}


//RETANGULO GRADIENTE
function criaRetanguloGrad(x,y,larg,alt,cor,l,corL,c,g1,g2)
{
	//
	var grad = c.createLinearGradient(10,0,10,200);
	grad.addColorStop(0.5,g1);
	grad.addColorStop(0.8,'blue');
	grad.addColorStop(1,g2);
	c.fillStyle = grad;
	c.fillRect(x,y,larg,alt);
	c.strokeStyle = corL;
	c.lineWidth = l;
	c.strokeRect(x,y,larg,alt);	
}

//ANIMAÇÂO EM CANVAS
var pX = 500;
var pY = 400;
var dX = 8;
var dY = 8;

function limpaRect(x,y,larg,alt,c)
{
	c.clearRect(x,y,larg,alt)
}

function animaCanvas()
{
	limpaRect(0,0,500,400,ctx5);
	
	criaRetangulo(0,0,500,400,'red', 5,'black',ctx5)
	criaCirculo(pX,pY,'blue',20,1,'black',ctx5);
	
	//condicional quando o circulo toca as paredes do retangulo 
	if((pX+dX) > 500 || (pX+dX) <0) dX = -dX;
	if((pY+dY) > 400 || (pY+dY) <0) dY = -dY;
	//altera os valores e os inverte mediante a condicional quando o circulo toca um ponto das paredes
	pX += dX;
	pY += dY;
}
setInterval(animaCanvas, 5);


//MASK em Canvas
var efeitos = new Array('lighter', 'darker', 'top', 'xor', 'source-atop', 'source-in', 'source-over', 'source-out', 'destination-atop', 'destination-in', 'destination-over', 'destination-out' )

var anima = 0;

function mascara()
{	
	criaRetangulo(15,15,70,70,'#ff3366', 5,'black',ctx6);
	
	//efeitos de 0 a 10
	ctx6.globalCompositeOperation = efeitos[0]
	
	criaCirculo(75,75,'blue',35,1,'black',ctx6);
	
	
	anima++;
	if(anima == 11) anima=0;
}
setInterval(mascara, 2000);
//mascara();

//cria linhas 
linhas(ctx1);
//cria o texto
criaTexto('MARCELOHH HHHH', 200, 200, ctx1);
//redesenha a imagem em canvas
setTimeout(function(){imagem();},10);
//CIRCULO
criaCirculo(50, 50, 'rgba(120,80,210,0.4)', 40, 4, 'blue', ctx2);

//piracao em circulo do professor
var cores = new Array ('blue', 'red', 'green','pink','black','gray','snow','orange','yellow','brown','oliver','cyan');
var posY;
var posX;
var diam;

for(var i=0;i<cores.length;i++)
{
	posX=Math.random()*500;
	posY=Math.random()*400;
	diam=Math.random()*130;
	criaCirculo(posX,posY,cores[i],diam,0,cores[i],ctx2);
}
criaCirculo(70,70,'rgba(120,80,210,0.4)',40,4,'blue',ctx2);
criaCirculo(50,50,'rgba(120,180,210,0.6)',40,4,'red',ctx2);
/*
for(i=1;i<50;i++){
  	 var rgbaCores1 = Math.floor(Math.random() * (255 - 0 + 1) + 0);
	 var rgbaCores2 = Math.floor(Math.random() * (255 - 0 + 1) + 0);
	 var rgbaCores3 = Math.floor(Math.random() * (255 - 0 + 1) + 0);	
		criaCirculos(
			Math.random() * 500,
			Math.random() * 400,
			Math.floor(Math.random() * (120 - 0 + 1) + 0),
			'rgba(' + rgbaCores1 + ',' + rgbaCores2 + ',' + rgbaCores3 + ',' + Math.random() + ')',
			1,
			'rgba(' + rgbaCores1 + ',' + rgbaCores2 + ',' + rgbaCores3 + ',' + Math.random() + ')',
			ctx2);
	}
*/

//RETANGULO
criaRetangulo(30,40,200,200,'rgba(120,80,210,0.4)', 3,'blue',ctx3)

for(var i=0;i<4;i++)
{
	posX=Math.random()*500;
	posY=Math.random()*400;
	criaRetangulo(posX,posY,200,200,cores[i], 5,'blue',ctx3)
}

//RETANGULO GRADIENTE
criaRetanguloGrad(30,40,200,200,'rgba(120,80,210,0.4)', 3,'blue',ctx4,'red', 'blue')

for(var i=0;i<4;i++)
{
	posX=Math.random()*500;
	posY=Math.random()*400;
	criaRetanguloGrad(posX,posY,200,200,cores[i], 5,'blue',ctx4,'red', 'blue')
}



