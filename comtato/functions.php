<?php

add_action( 'init', 'create_post_type' );
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
    wp_register_script( 'bootstrap-js', get_template_directory_uri() . '/js/bootstrap.js', array( jquery ), '1', true );
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

?>