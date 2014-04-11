$(document).ready(function(){

    var transparenciaTudo = 0;
    var visualisaTudo     = 1;
    var ancora            = 0;
    var clickBtContato    = 0;
    var clickBtAprax      = 0;
    var clickBtContato2   = 0;
    var clickBtAprax2     = 0;
    var anterior          = 0;
    var abaMov            = false;


    var tam = $(window).width();
 
   // $('#curva1').css("opacity", "0");
    /*
    $('#metodo').css("opacity", "0");
    $('#metodo').stop().delay(3000).animate({opacity: visualisaTudo}, 800);
    $('#textoC').stop().delay(6600).animate({opacity: visualisaTudo}, 1200);
     */

     if(tam<=960) $('#map').css("width", "380px");

    ///////////Movimento templates/////////

    largura = - (1280 - $(window).width()) / 2;
    $("#home").css("left",largura);

    //$("body").css("height","400px");

  $('#contato').click(function() {

    if($("#contatoOver").css("top") == "-268px")
    {


        $('#contatoOver').animate({"top": '0'});
        $('#tudo').animate({"top": '268px'});
        $('#contentHead').animate({"top": '268px'});

    }
    else
    {
        $('#contatoOver').animate({"top": '-268px'});

        $('#tudo').animate({"top": '0px'});
        $('#contentHead').animate({"top": '0px'});
        
    }
  });


    $('#mm1').click(function() {

        alert("teste1");

     }); 


     $('#mm2').click(function() {
        alert("teste2");
     }); 

     $('#mm3').click(function() {
        alert("teste3");
     }); 

     //////////////////////////////////////

     ///////////Click subMenu/////////////////

     $('#sub1Ag').click(function() {
       alert("teste111");
      });

     $('#sub2Ag').click(function() {
        alert("teste222");
      });


      $('#sub3Ag').click(function() {
        alert("teste333");
      });

     $('#sub4Ag').click(function() {
        alert("teste444");
      });

    /////////////////////////////////////////////

     /////////////////FUNCOES/////////////////////

     

});    