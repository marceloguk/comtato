//WEB SQL
//openDatabase(NomeDoBanco,Versão,Descrição,tamanho)
var dbase=openDatabase('Treinamentos','1.0','Base com treinamentos em TI',2*1024*1024);
function webSQL(id,nome,assunto,cat){
dbase.transaction(function(fn){
fn.executeSql(
"CREATE TABLE IF NOT EXISTS instrutor(id,nome,assunto,categoria)",[],
function(){
alert('Eia!!!!! Funfa');
fn.executeSql("INSERT INTO instrutor (id,nome,assunto,categoria) VALUES("+id+ ",'"+nome+"','"+assunto+"','"+cat+"')");
window.location.reload();
		});
	});
}
//////////////////////////////
var divMaster=document.getElementById('dbase1');
var cabecalho=document.createElement('h1');
var txt =document.createTextNode('Lista de Instrutores');
cabecalho.appendChild(txt);
divMaster.appendChild(cabecalho);
/////////////////////////////
dbase.transaction(function(fn){
fn.executeSql("SELECT * FROM instrutor",[],
function(fn,resultado){
//QTD DE LINHAS
var qtd=resultado.rows.length;
////////TABELA
   var tabela=document.createElement('table');
   tabela.setAttribute('border','1');
   tabela.setAttribute('cellspacing','3');
   tabela.setAttribute('cellpadding','3');
   tabela.setAttribute('bordercolor','#fff');
   //////////////////////////////////////
   
   var colunas = new Array('id', 'nome', 'assunto', 'categoria')
	   
	for(var i=0;i<qtd;i++){
		var linha=document.createElement('tr');
		tabela.appendChild(linha);
		/////////////////////////////PERCORRE AS LINHAS DA TABELA INSTRUTOR
		var raiz=resultado.rows.item(i);
		for(var n=0; n< colunas.length;n++)
		{
		//////////CONTEUDO DAS COLUNAS
			var infoTXT=document.createTextNode(raiz[colunas[n]]);			
			var celula=document.createElement('td');
			celula.appendChild(infoTXT);
			/////////////////ANEXA AS COLUNAS NAS LINHAS
			linha.appendChild(celula);
		}
		/////ANEXA A TABELA PARA A DIV PRINCIPAL
		divMaster.appendChild(tabela);
	}
	})
});
////////////////////////////////
var id;
var nome;
var assunto;
var cat;
var bt=document.forms.db1.bt01;

bt.addEventListener('click',
function(){
//recupera o valor do form
id= document.forms.db1.id.value;
nome=document.forms.db1.nome.value;
assunto= document.forms.db1.treina.value;
cat=document.forms.db1.cat.value;
webSQL(id,nome,assunto,cat);
},false);
