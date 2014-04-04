<?php
/*
Template Name: Portfolio
*/

add_action( 'wp_enqueue_scripts', 'add_bootstrap_js' );
add_action( 'wp_enqueue_scripts', 'add_bootstrap_css' );

get_header(); ?>

<div id="contentPortfolio">
	<div id="topo">
		<div id="tituloTxt">portfolio</div>
		<form id="portfolioSearch" action="" name="portfolio">
			<fieldset>
				<input type="text" name="s" id="search" value="<?php the_search_query(); ?>" />
				<input type="submit" value="Buscar" />
			</fieldset>
		</form>
	</div> 
	<div id="portfolio">
		<!-- aqui vai o conteúdo puxado por ajax -->	
	</div>
</div>

<script type="text/javascript">
jQuery(function($){
	$.post(ajaxurl, { action: 'portfolio_grid' }, function(output) {
		$('div#portfolio').html(output);
	});

	$('form#portfolioSearch').submit(function(event) {

		$.post(
					ajaxurl,
					{ action: 'portfolio_grid', query: $('input[name=s]').val() } ,
					function(output)
					{
						$('div#portfolio').html(output);
					});

				event.preventDefault();
			});	
});
</script>

<?php
get_footer();