<?php
add_action( 'wp_enqueue_scripts', 'add_bootstrap_js' );
add_action( 'wp_enqueue_scripts', 'add_bootstrap_css' );

get_header(); ?>

<div id="contentPortfolio">
	<div id="topo">
		<div id="tituloTxt">portfolio</div>
	</div>
	<div id="content">

		<div class="contentRight">
			<? get_portfolio_metadata($post->ID); ?>
		</div>
		<div class="contentLeft">
			<?php if ( have_posts() ) : while( have_posts() ) : the_post(); ?>

			<div class="entry-title"><?php the_title(); ?></div>

			<div id="carousel-portfolio" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">

					<?php
					$args = array(
						'post_type' => 'attachment',
						'numberposts' => -1,
						'post_status' => null,
						'post_parent' => $post->ID
						);

					$active = " active";

					$attachments = get_posts( $args );
					if ( $attachments ) {
						foreach ( $attachments as $attachment ) {
							echo '<div class="item'.$active.'">';
							echo wp_get_attachment_image( $attachment->ID, 'portfolio-preview' );
							echo '</div>';
							$active = '';
						}
					} ?>

				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-portfolio" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#carousel-portfolio" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>

			<div class="entry-content"><?php the_content(); ?></div>

			<div class="navigation">
				<?php previous_post_link('%link','< Projeto anterior'); ?>
				<a href="javascript:window.history.go(-1)">Voltar</a>
				<?php next_post_link('%link','Próximo projeto >'); ?>
			</div>
		</div>

		<? $categories = wp_get_post_categories( $post->ID );?>

	<?php endwhile; endif; ?>

	<?
	$args = array( 'posts_per_page' => 8, 'offset'=> 0, 'post_type' => 'portfolio', 'category' => implode(',',$categories) );
	$portfolio = get_posts( $args );

	foreach ($portfolio as $projeto) {
		echo "<a href=\"".$projeto->guid."\" class=\"projeto_thumb\">".get_the_post_thumbnail( $projeto->ID, 'projeto_thumb', array( 'class' => 'projeto_thumb') )."</a>";
	}
	?>

</div>
</div>

<?php
get_footer();