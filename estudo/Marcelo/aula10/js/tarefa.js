//WORKER

var n = 0;

function conta()
{
	n = n+1;
	postMessage(n);
	setTimeout("conta()", 500);

}

conta();