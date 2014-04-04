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
	</div>
	<div id="portfolio">

		<?
	//pegando todos os posts
		$args = array( 'numberposts' => -1,'post_type' => 'portfolio');
		$portfolio = get_posts( $args );
		$portfolio = array_merge_recursive($portfolio, $portfolio);

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

		?>
		<div id="carousel-portfolio-grid" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<?php
				$active = " active";
				foreach ($grid as $pagina) {
					echo '<div class="item'.$active.'">';
					foreach ($pagina as $linha) {
						echo '<div class="linha_portifolio">';
						foreach ($linha as $projeto) {
						//exibindo a imagem link do post
							echo "<a href=\"".$projeto->guid."\" class=\"projeto_thumb\">".get_the_post_thumbnail( $projeto->ID, 'projeto_thumb', array( 'class' => 'projeto_thumb') )."</a>";

						}
						echo "</div>";
					}
					echo '</div>';
					$active = '';
				}

				?>

			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-portfolio-grid" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-portfolio-grid" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>

		</div>
	</div>
</div>


<?php
get_footer();