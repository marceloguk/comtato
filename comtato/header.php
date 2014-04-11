<html lang='pt-br'>
<head>
	<title><?php wp_title( '|', true, 'right' ); ?></title>
    <meta name="generation" content="<?php bloginfo('version'); ?>" />
    <meta name="description" content="<?php bloginfo('description'); ?>">
    <meta name="keywords" content="palavras chave, separadas, por virgula">
    <meta name="reply-to" content="contato@comtato.com.br">
    <meta name="developer" content="Marcelo Nogueira">
    <meta name="design" content="Design de Ideias">
    <meta name="copyright" content="Copyright © 2014. Comtato">
    <meta http-equiv="Content-language" content="pt-BR">
    <meta name="zone" content="PT">
    <meta name="rating" content="General">
    <meta charset='utf-8'>

    <meta name="viewport" content="width=device-width" />
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/LayerSlider-5.1.0/documentation/assets/css/doc.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/LayerSlider-5.1.0/documentation/assets/css/font.css">
	<link href="http://fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,300,400italic,400,600italic,600,700italic,700,800italic,800" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
	<!--[if lt IE 9]>
		<script src="<?php echo get_template_directory_uri(); ?>/LayerSlider-5.1.0/documentation/assets/js/html5.js"></script>
	<![endif]-->

	<!-- LayerSlider stylesheet -->
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/LayerSlider-5.1.0/layerslider/css/layerslider.css" type="text/css">
	<script src="<?php echo get_template_directory_uri(); ?>/LayerSlider-5.1.0/layerslider/js/greensock.js" type="text/javascript"></script>
	
	<!-- LayerSlider script files -->
	<script src="<?php echo get_template_directory_uri(); ?>/LayerSlider-5.1.0/layerslider/js/greensock.js" type="text/javascript"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/LayerSlider-5.1.0/layerslider/js/jquery.js" type="text/javascript"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/LayerSlider-5.1.0/layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/LayerSlider-5.1.0/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,300,400italic,400,600italic,600,700italic,700,800italic,800" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/styleComtatoMobile.css" media="screen" type="text/css"/> 
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/styleComtatoNote.css" media="screen" type="text/css"/> 
	<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />

	<?php wp_head(); ?>    
   
    <style>
 
		#layerslider {
			position: absolute;
			z-index: 1;
		}

		#layerslider * {
			font-family: Lato, 'Open Sans', sans-serif;
		}

	</style>
</head>

<body>

	<div id="contatoOver">
        <div class="content">
        	<div id="conteudoTpo">
	            <p>
	            	<span style="color:#f19822; font-size: 20px;">Com Tato Agência Sociocriativa</span><br><br>
	                Rua Pedroso Alvarenga, 1177 - cj 11 - Itaim Bibi<br>
	                CEP 04531-012 - São Paulo - SP - Brasil<br>
	                Fone 55 11 3815 0282 / 3813 0779<br>
	                contato@comtato.com.br<br>
	            </p>
	            <iframe id="mapa" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29253.11814721239!2d-46.68056489416495!3d-23.581377936784364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce570caa361e7d%3A0xcce3b5ca1998027a!2sCom+Tato+-+Ag%C3%AAncia+Cultural!5e0!3m2!1spt-BR!2sbr!4v1392701465803" width="530" height="200"></iframe>
        	</div>
        </div>
    </div>

	<div id="contentHead">
        <div class="content">
            <!-- topo -->
            <header>
            	<a id="logo" href="<?php bloginfo('wpurl'); ?>/" title="Comtato Agência Sociocriativa." alt="Comtato Agência Sociocriativa.">
					<img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" title="Comtato" />
				</a>
                <nav>
                    <ul>
	                    <li id="metodoLink">
	                        <div id="mm1">método</div>
	                    </li>

	                    <li id="agenciaLink">
	                        <div id="mm2" class="seta">agência </div>
	                        <div class="submenu">
	                            <ul>
	                            	<li class="first"></li>
	                                <li>
	                                    <div id="subAg">agência</div>
	                                </li>
	                                <li >
	                                    <div id="subAg">atuação</div>
	                                </li>
	                                <li >
	                                    <div id="subAg">rede de colaboradores</div>
	                                </li>
	                                <li class="last">
	                                    <div id="subAg">clientes parceiros</div>
	                                </li>
	                            </ul>
	                        </div>
	                    </li>

	                    <li id="comtatoLink">
	                        <div id="mm3">portfolio</div>
	                    </li>
	                </ul>
                </nav> 

                <div id="complementoHead">
		            <div id="linha1"></div>
					<div id="contato" title="Endereço e contato.">
						+ contato
					</div>
					<div id="facebook" title="Rede Social Com tato Facebook">
						<img src="<?php echo get_template_directory_uri(); ?>/images/facebook_menu.png" title="Rede Social Com tato Facebook" />
					</div>
					<div id="in" title="Rede Social Com tato LinkedIn">
						<img src="<?php echo get_template_directory_uri(); ?>/images/in_menu.png" title="Rede Social Com tato LinkedIn" />
					</div>
					<div id="laboratorio" title="Laboratório de Inteligencia Sociocriativa">
						<img src="<?php echo get_template_directory_uri(); ?>/images/lab_menu.png" title="Laboratório de Inteligencia Sociocriativa" />
					</div>
					<div id="linha2"></div>
				</div>

            </header>
            <!-- / topo -->
        </div>
    </div>