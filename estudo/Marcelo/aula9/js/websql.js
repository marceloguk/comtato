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
		});
	});
}

var divMaster = document.getElementById('dbase1');
var cabecalho = document.createElement('h1');
var txt = document.createTextNode('Lista de Instrutores');

cabecalho.appendChild(txt);
divMaster.appendChild(cabecalho);

dbase.transaction(function(fn){

	fn.executeSql("SELECT * FROM instrutor",[], function(fn,resultado){
		
		//alert(resultado.rows.length);
		//alert(resultado.rows.item(0).assunto);
		
		var qtd = resultado.rows.length;
		
		var tabela = document.createElement('table');
		for(var i=0; i<qtd; i++)
		{
			var linha  = document.createElement('tr');
	
			for(var j=0; j<4 ; j++)
			{
				var raiz = resultado.rows.item(i);
				
				var coluna1 = document.createElement('td');
				var nomeTXT = document.createTextNode(raiz.nome);
				coluna1.appendChild(nomeTXT);
				
				var coluna2 = document.createElement('td');
				var idTXT = document.createTextNode(raiz.id);
				coluna2.appendChild(idTXT);
				
				var coluna3 = document.createElement('td');
				var assuntoTXT = document.createTextNode(raiz.assunto);
				coluna3.appendChild(assuntoTXT);
				
				var coluna4 = document.createElement('td');
				var catTXT = document.createTextNode(raiz.categoria);
				coluna4.appendChild(catTXT);
				
				linha.appendChild(coluna1);
				linha.appendChild(coluna2);
				linha.appendChild(coluna3);
				linha.appendChild(coluna4);
			}
			
			tabela.appendChild(linha);
		}
		
		divMaster.appendChild(tabela);
	});

});

var id;
var nome;
var assunto;
var cat;

var bt = document.forms.db1.bt01;

bt.addEventListener('click', function(){
	
	//recupera o valor do form
	id = document.forms.db1.id.value;
	nome = document.forms.db1.nome.value;
	assunto = document.forms.db1.treina.value;
	cat = document.forms.db1.cat.value;
	
	webSQL(id,nome,assunto,cat);
	
}, false);

//webSQL(1,'Maria','CSS3','WEB');