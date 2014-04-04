//Drag and drop
var obj;
//ondragstart
function arrastar (user,e){
obj=user.id;
e.dataTransfer.setData('User',user.id);
//cria a imagem de arraste
var img=document.createElement('img');
img.src="imagens/fig.png";
//e.dataTransfer.setDragImage(img,0,0);
}
//ondrop
function soltar (target,e){
var user = e.dataTransfer.getData('User');
target.appendChild(document.getElementById(user));
}
//ondragover
function desbloquear (e){
e.preventDefault();
}