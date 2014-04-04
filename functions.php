<?php

add_action( 'init', 'create_post_type' );
add_action('wp_ajax_portfolio_grid', 'monta_portfolio_grid');
add_action('wp_ajax_nopriv_portfolio_grid', 'monta_portfolio_grid');
add_action('wp_head','ajaxurl');
add_theme_support( 'post-thumbnails' );
add_image_size( 'portfolio-preview', 600, 400, true );
add_image_size( 'projeto_thumb', 113, 113, true );

function create_post_type() {
	register_post_type( 'portfolio',
		array(
			'labels' => array(
				'name' => __( 'Portfólio' ),
				'singular_name' => __( 'Projeto' ),
			    'add_new' => _x('Adicionar Novo', 'projeto'),
			    'add_new_item' => __('Adicionar Novo Projeto'),
			    'edit_item' => __('Editar Projeto'),
			    'new_item' => __('Novo Projeto'),
			    'all_items' => __('Todos os Projetos'),
			    'view_item' => __('Ver projeto'),
			    'search_items' => __('Buscar Projetos'),
			    'not_found' =>  __('Nenhum projeto encontrado'),
			    'not_found_in_trash' => __('Nenhum projeto encontrado na lixeira'),
			    'parent_item_colon' => '',
			    'menu_name' => 'Portfólio'
			),
		'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,
	    'rewrite' => true,
	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => false,
	    'menu_position' => null,
	    'supports' => array('title','editor','author','thumbnail','custom-fields'),
	    'taxonomies' => array('category')
		)
	);
}

function add_bootstrap_js()
{
    wp_register_script( 'bootstrap-js', get_template_directory_uri() . '/js/bootstrap.js', array(jquery), '1', true );
    wp_enqueue_script( 'bootstrap-js' );
}

function add_bootstrap_css()
{
	wp_register_style( 'bootstrap-css', get_template_directory_uri() . '/css/bootstrap.min.css', array(), '1', 'all' );
    wp_enqueue_style( 'bootstrap-css' );
}

function get_portfolio_metadata($id) {
	$out = "<ul class=\"portfolio_metadata\">";
	foreach (get_post_meta( $id ) as $key => $value) {
		if ( is_protected_meta( $key, 'post' ) ) continue;
		$out .= "<li class=\"portfolio_metadata\">
				<span class=\"portfolio_key\">$key</span><br />";
		$out .= trim(nl2br($value[0]));
		$out .= "</li>";
	}
	$out .= "</ul>";
	echo $out;
}

function monta_portfolio_grid() {
		$portfolio = array();
		
		if($_POST[query]) $wp_query = new WP_Query('showposts=-1&post_type=portfolio&s='.$_POST[query]);

		if($wp_query->posts) {
			$portfolio = $wp_query->posts;
		} else {
			$args = array( 'numberposts' => -1,'post_type' => 'portfolio');
			$portfolio = get_posts( $args );
		} 

		$posts_por_linha = 8;
		$num_linhas = 3;
		$posts_por_page = $posts_por_linha * $num_linhas;
		$total_posts = count($portfolio);
		$total_pages = ceil($total_posts/$posts_por_page);
		$grid = array();

		$p=0;
		//contando os posts
		while($p < $total_posts) { 
			//contando as paginas
			for ($a=0; $a < $total_pages; $a++) { 
				//contando as linhas
				for ($b=0; $b < $num_linhas; $b++) { 
					//contando os posts da linha
					for ($c=0; $c < $posts_por_linha; $c++) { 
						if ($portfolio[$p]) {
							$grid[$a][$b][$c] = $portfolio[$p];
							$p++;
						} else { continue; }
					}
				}
			}
		}

		
		echo '<div id="carousel-portfolio-grid" class="carousel slide" data-ride="carousel">';
			echo '<div class="carousel-inner">';
				
				$active = " active";
				foreach ($grid as $pagina) {
					echo '<div class="item'.$active.'">';
					foreach ($pagina as $linha) {
						echo '<div class="linha_portfolio">';
						foreach ($linha as $projeto) {
						//exibindo a imagem link do post
							echo "<a href=\"".$projeto->guid."\" class=\"projeto_thumb\">".get_the_post_thumbnail( $projeto->ID, 'projeto_thumb', array( 'class' => 'projeto_thumb') )."</a>";

						}
						echo "</div>";
					}
					echo '</div>';
					$active = '';
				}

			echo '</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-portfolio-grid" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-portfolio-grid" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>

		</div>';
		die();
}

function ajaxurl() {
?>
<script type="text/javascript">
	var ajaxurl = '<?php echo admin_url('admin-ajax.php'); ?>';
</script>
<?php
}