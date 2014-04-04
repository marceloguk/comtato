//CANVAS

var c1=document.getElementById('c1');
var ctx1=c1.getContext('2d');
var img1=document.getElementById('img1');
var img2=document.getElementById('img2');
//
var c2=document.getElementById('c2');
var ctx2=c2.getContext('2d');
//
var c3=document.getElementById('c3');
var ctx3=c3.getContext('2d');
//
var c4=document.getElementById('c4');
var ctx4=c4.getContext('2d');
//
var c5=document.getElementById('c5');
var ctx5=c5.getContext('2d');


function imagem (){
//drawImage(nomeDaImagem,x,y,larg,alt);
ctx1.drawImage(img1,10,10,200,200);
ctx1.drawImage(img2,60,60,100,100);
}


//params:string do conteudo,posX,posY,canvas
function criaTexto (texto,x,y,c){
c.font='50px Georgia';
c.shadowOffSetX=5;
c.shadowOffSetY=5;
c.shadowBlur=5;
c.shadowColor='red';
c.fillStyle='black';
c.fillText(texto,x,y);
}

//params:posX,posY,diametro,cor,
//largura do contorno,cor do contorno,contexto
function criaCirculo
(x,y,tamanho,cor,linha,corLinha,c){
c.beginPath();
c.fillStyle=cor;
c.arc(x,y,tamanho,0,2*Math.PI,true);
c.fill();
//contorno
c.strokeStyle=corLinha;
c.lineWidth=linha;
c.stroke();
}

//params:posX,posY,largura,altura,cor,linha,cor da linha,contexto
function criaRetangulo
(x,y,larg,alt,cor,l,corL,c){
c.fillStyle=cor;
c.fillRect(x,y,larg,alt);
c.strokeStyle=corL;
c.lineWidth=l;
c.strokeRect(x,y,larg,alt);
}

//Retangulo com gradiente
function criaRetanguloGrad
(x,y,larg,alt,cor,l,corL,c,g1,g2){
//gradientLinear(x1,y1,x2,y2), para numeros coincidentes em x ou y teremos verticais ou horizontais
var grad=
c.createLinearGradient(30,0,30,200);
grad.addColorStop(0.5,g1);
grad.addColorStop(0.8,'blue');
grad.addColorStop(1,g2);
c.fillStyle=grad;
c.fillRect(x,y,larg,alt);
c.strokeStyle=corL;
c.lineWidth=l;
c.strokeRect(x,y,larg,alt);
}

//Linhas
function linhas(c){
for(i=70;i>0;i--){
c.strokeStyle='rgba(80,80,80,0.2)';
c.lineWidth=i;
c.beginPath();
//move(x,y)
c.moveTo(500, 550 + (15-i) * 60);
//lineTo
c.lineTo(-10, 550 + (15-i) * 10);
c.stroke();
	}
}

linhas(ctx1);
//cria o texto
criaTexto('HTML5!!!!!',200,200,ctx1);
//redesenha as imagens no canvas
setTimeout(function(){imagem();},10);

//params:posX,posY,diametro,cor,
//largura do contorno,cor do contorno,contexto
//criaCirculo
//(70,70,40,'rgba(120,80,210,0.4)',2,'blue',ctx2);
//criaCirculo
//(50,50,40,'rgba(210,180,210,0.6)',1,'red',ctx2);

var cores = new Array('blue','red','green','pink','black','gray','snow','orange','yellow','brown','olive','cyan');

//criando circulos e textos sorteados em posição e tamanho
for(var i=0;i<cores.length;i++){
posX=Math.random()*500;
posY=Math.random()*400;
diam=Math.random()*180;
criaCirculo
(posX,posY,diam,cores[i],0,cores[i],ctx2);
criaTexto(cores[i],posX,posY,ctx2);
}

criaRetangulo
(30,40,200,200,'rgba(30,240,50,0.6)',5,'black',ctx3);

for(var i=0;i<4;i++){
posX=Math.random()*500;
posY=Math.random()*400;
criaRetangulo
(posX,posY,200,200,cores[i],5,'black',ctx3);
}

criaRetanguloGrad
(30,40,200,200,'rgba(30,240,50,0.6)',5,'black',ctx3,'red','yellow');

//Animação/////

var pX=500;
var pY=400;
var dX=8;
var dY=8;

function limpaRect(x,y,larg,alt,c){
c.clearRect(x,y,larg,alt);
}

function animaCanvas (){
limpaRect(0,0,500,400,ctx4);
criaRetangulo
(0,0,500,400,'red',5,'black',ctx4);
criaCirculo
(pX,pY,5,'blue',1,'black',ctx4);
//condicional que verifica quando o círculo toca nas paredes do retângulo
if(pX + dX >500 || pX + dX <0){
dX = -dX;
	}
if(pY + dY >400 || pY + dY <0){
dY = -dY;
	}
//altera os valores e os inverte mediante a condicional quando o circulo toca num ponto das paredes
pX +=dX;
pY +=dY;
}
setInterval(animaCanvas,30);


//Mascaras
var efeitos = new Array
('lighter','darker','top','xor','source-atop','source-in','source-over','source-out','destination-atop','destination-in','destination-over','destination-out')

function mascara(){
/*criaRetangulo
(15,15,70,70,'#ff3366',1,'black',ctx5);
//efeitos de 0 a 10;
ctx5.globalCompositeOperation=efeitos[5];
criaCirculo
(75,75,35,'#0066ff',1,'black',ctx5);*/
//exemplo abaixo mascara a imagem/////

criaCirculo
(75,75,45,'#0066ff',1,'black',ctx5);
//efeitos de 0 a 10;
ctx5.globalCompositeOperation=efeitos[5];
ctx5.drawImage(img2,10,10,100,100);

}

mascara();