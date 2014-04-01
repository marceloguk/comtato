



$(document).ready(function () {
    $("a.anchorLink").anchorAnimate();
    comparar();
    altura = $(window).height();
    largura = $(window).width();
    $("#enderecoSec").css("height", altura - 117);
    $("#content section#enderecoSec .corpo").css("left", largura / 2 - 498);
    $("#origami").css("height", altura - 117);
    $("#enderecoSec .corpo").css("margin-top", altura / 2 - 241);

});



jQuery.fn.anchorAnimate = function (settings) {

    settings = jQuery.extend({
        speed: 1100
    }, settings);

    return this.each(function () {
        var caller = this;

        $(caller).click(function (event) {
            event.preventDefault()
            var locationHref = window.location.href
            var elementClick = $(caller).attr("href")

            var destination = $(elementClick).offset().lefts;
            $("html:not(:animated),body:not(:animated)").animate({ scrollTop: destination }, settings.speed, function () {
                window.location.hash = elementClick;
                comparar();
            });

            return false;
        });
    })
}



var ultimo;

function comparar() {
    if ($(window).scrollTop() >= 0 && $(window).scrollTop() <= 335) {
        normal();
    } else if ($(window).scrollTop() >= 335 && $(window).scrollTop() < 866) {
        but1();
    } else if ($(window).scrollTop() >= 866 && $(window).scrollTop() < 1196) {
        but2();
    } else if ($(window).scrollTop() >= 1196 && $(window).scrollTop() < 1526) {
        but3();
    } else if ($(window).scrollTop() >= 1526 && $(window).scrollTop() < 2046) {
        but4();
    } else if ($(window).scrollTop() >= 2046 && $(window).scrollTop() < 2366) {
        but5();
    } else if ($(window).scrollTop() >= 2366 && $(window).scrollTop() < 2736) {
        but6();
    } else if ($(window).scrollTop() >= 2736 && $(window).scrollTop() < 3256) {
        but7();
    } else if ($(window).scrollTop() >= 3256 && $(window).scrollTop() < 3556) {
        but8();
    } else if ($(window).scrollTop() >= 3556) {
        but9();
    }
}

function normal() {
    $('#menu li a').removeClass(ultimo);
    return false;
}

function but1() {
    $('#menu li a').removeClass(ultimo);
    $('#menu li a#but1').addClass("laranja");
    ultimo = "laranja";
    return false;
}

function but2() {
    $('#menu li a').removeClass(ultimo);
    $('#menu li a#but2').addClass("vermelho");
    ultimo = "vermelho";
    return false;
}

function but3() {
    $('#menu li a').removeClass(ultimo);
    $('#menu li a#but3').addClass("azul");
    ultimo = "azul";
    return false;
}

function but4() {
    $('#menu li a').removeClass(ultimo);
    $('#menu li a#but4').addClass("branco");
    ultimo = "branco";
    return false;
}

function but5() {
    $('#menu li a').removeClass(ultimo);
    $('#menu li a#but5').addClass("laranja");
    ultimo = "laranja";
    return false;
}

function but6() {
    $('#menu li a').removeClass(ultimo);
    $('#menu li a#but6').addClass("vermelho");
    ultimo = "vermelho";
    return false;
}

function but7() {
    $('#menu li a').removeClass(ultimo);
    $('#menu li a#but7').addClass("azul");
    ultimo = "azul";
    return false;
}

function but8() {
    $('#menu li a').removeClass(ultimo);
    $('#menu li a#but8').addClass("branco");
    ultimo = "branco";
    return false;
}

function but9() {
    $('#menu li a').removeClass(ultimo);
    $('#menu li a#but9').addClass("laranja");
    ultimo = "laranja";
    return false;
}

$(window).scroll(function () {
    comparar();
    return false;
});