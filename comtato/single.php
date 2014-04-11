 <?php get_header(); ?>

 <?php

 //teste
    $queryHiperlivro_fundamentacao = new WP_Query( 'p=1' );
    $queryHiperlivro_fundamentacao->the_post();
    $Hiperlivro_fundamentacao_titulo = get_the_title();
    $Hiperlivro_fundamentacao_texto = get_the_content();
    wp_reset_postdata();

?>



<div id="tudo">
    <div id="conteudo">
    <!-- /////////////Seções///////////// -->
    <!-- Seção 1 -->
    <section id="s1" > <!--data-type="background" data-speed="6"-->
        <div id="topo">
            <div id="tituloTxt">agência</div>
        </div>
        <div id="sombraTopo"></div>
        <div id="agenciaAll">
            
            <div id="agencia">
                <div id="centroAg">
                    <div id="descAg">
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. 
                            <br />
                            <br />
                            Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas
                        </p>
                    </div>
                    <div id="fotoAg"></div>
                </div>
            </div>
            <div id="atuacao">
                <div id="linha1" style="width:40%; border: 1px solid #FF6633; float:left; "></div>
                <div id="linha1" style="width:40%; border: 1px solid #FF6633; float: right; "></div>
                <div id="txtAtuacao">ATUAÇÃO</div>
                
                <div id="box1Atuacao">
                    <div id="atuacaoTituloR">realizaçao</div>
                    <div id="atuacaoSubtituloR">projetos sociocriativos</div>
                    <div id="atuacaoTxtR">Somos realizadores. Trabalhamos e pesquisamos <br />
                                        para transformar ideias e desejos em projetos e <br />
                                        projetos em realidades sociais. Culturais, <br />
                                        artísticos, sociais, desportivos, ambientais <br />
                                        ou educativos, entre muitas outras  <br />
                                        possibilidades, projetos são sistemas <br />
                                        vivos, oportunidades de aprendizagem <br />
                                        social com potenciais transformadores <br />
                                        inestimáveis, tanto para pessoas, <br />
                                        quanto para comunidades.
                    </div>
                </div>
                <div id="graAtuacao">
                    <!--<img src="images/grafico.png"/>-->
                </div>
                <div id="box2Atuacao">
                    <div id="atuacaoTituloI">investimento</div>
                    <div id="atuacaoSubtituloI">reputação em patrocínio</div>
                    <div id="atuacaoTxtI">Investimento sociocultural privado, efetivo, <br />
                                        sustentável e com o DNA da marca.<br />
                                        Desenhamos e gerimos políticas, estratégias e <br />
                                        programas interdisciplinares, convergindo <br />
                                        sustentabilidade corporativa, comunicação e <br />
                                        relacionamento institucional.<br />
                    </div>
                </div>
                <div id="linha2" style="width:30%; border: 1px solid #FF6633; float:left; margin: 95px auto;"></div>
                <div id="linha2" style="width:30%; border: 1px solid #FF6633; float: right; margin: 95px auto;"></div>
                <div id="campAt">CAMPOS DE ATUAÇÃO</div>
                <div id="descCampAt">cultural, social, educacional e esportivo</div>
            </div>
            <!--<div id="sombraRodape"></div>-->
        </div>
    </section>
    <!-- Seção 2 -->
    <section id='s2'>
        <div id="topo">
            <div id="tituloTxt">método</div>
        </div>
        <div id="metodo">
            <div id="colunaAmetodo">
                <div id="textoMet1">
                    O Método Com Tato é o sistema de princípios e soluções que orienta nosso trabalho. Somos especialistas em inteligência <br />sociocriativa. Compreendemos projetos culturais, sociais, desportivos, ambientais e educativos, entre outras categorias, como <br />sistemas empreendedores vivos que podem gerar inovação social de forma sustentável e a partir de fluxos e processos criativos.<br />
                    <br />
                    Tudo o que fazemos é pensado a partir de nosso 
                </div>
                <div id="textoMet2">círculo de princípios.</div>
                <div id="linhaHMet"></div>
                <div id="graficoMet"></div>
            </div>
            <div id="colunaBmetodo">
                <!--<div id"linhaVMet"></div>-->
                <div id="boxCinzaMet">
                    <div id="textoMet3">
                        <span id="tBoxC">efetividade</span>
                        <br /><br />
                        Gerir o impacto do empreendimento de forma sistêmica e sustentável,  considerando efeitos de ordem cultural, econômica, estética, socioambiental, política e intelectual.
                        <br /><br />
                        <span id="tBoxC">adequação</span>
                        <br /><br />
                        Utilizar metodologia especializada e sob-medida para cada caso, ajustando os potenciais de efetividade (complexos) aos meios e condições existentes (limitados) para realização. Garantir que cada projeto tenha o formato e a dimensão mais adequados para produzir o melhor impacto que se poderia produzir com os recursos disponíveis.
                        <br /><br />
                        <span id="tBoxC">qualidade</span>
                        <br /><br />
                        Planejar e realizar conforme os mais altos padrões de excelência, produzindo relações humanas harmônicas, parcerias férteis, resultados tangíveis e processos eficazes e transparentes. Compreender cada fase de realização como um ciclo vivo de aprendizagem e de aperfeiçoamento contínuo.
                    </div>
                </div>
            </div>
            <div id="boxInf1Mei">
                <div id="linhaV2Met"></div>
                <div id="textoMet4">
                    Nosso <span>sistema de soluções</span><br /> 
                    coloca os princípios em ação, tanto na realização<br /> 
                    de projetos quanto em estratégias de<br />
                    investimento cultural e social privado:
                </div>
                <div id="linhaH2Met"></div>
            </div>
            <div id="boxInf2Mei">
                <div id="linhaH3Met"></div>
                <div id="circulo1">
                    <div id="balao1"></div>
                    <div id="textoMet5">
                        Avaliação de desempenho, impacto e <br /> 
                        efetividade de projetos e estratégias em <br /> 
                        territórios e comunidades. Pesquisa para <br /> 
                        aumentar a inteligência das <br /> 
                        metodologias, maior sustentabilidade <br /> 
                        nas ações e maior envolvimento dos <br /> 
                        públicos participantes.
                    </div>
                </div>
                <div id="circulo2">
                    <div id="balao2"></div>
                    <div id="textoMet5">
                        Gestão de empreendimentos e <br /> 
                        programas, incluindo relacionamento <br /> 
                        360º e diálogo em rede e entre áreas <br /> 
                        empresariais, poderes públicos, agentes <br /> 
                        sociocriativos, meios de comunicação <br /> 
                        social e comunidades. Gestão de <br /> 
                        reputação empresarial.
                    </div>
                </div>
                <div id="circulo3">
                    <div id="balao3"></div>
                    <div id="textoMet5">
                        Cocriação e implementação de conceitos, <br /> 
                        estratégias e projetos. Posicionamento <br /> 
                        de marcas e organizações como agentes <br /> 
                        de transformação social. Modelos <br /> 
                        sustentáveis de patrocínio cultural.
                    </div>
                </div>
            </div>
        </div>
        <div id="bannerMet">
            <div id="conteudoBanner">
                <div id="textoBanner">
                    O Método Com Tato é baseado em conteúdos e ferramentas pesquisados <br /> 
                    e desenvolvidos em nosso <strong>Laboratório de Inteligência Sociocriativa</strong>, um <br />
                    espaço de investigação permanente onde articulamos teoria e prática <br />
                    participativa para estudar os campos convergentes da gestão cultural, do <br />
                    desenvolvimento sustentável e da inovação.
                </div>
                <div id="logoBanner"></div>
            </div>
        </div>
    </section>
    <!-- Seção 3 -->
    <section id='s3'  > <!--data-type="background" data-speed="6"-->
        <div id="topo">
            <div id="tituloTxt">rede de colaboradores</div>
        </div>
        <div id="redeColaboradores">
        
        </div>
    </section>
    <!-- Seção 4 -->
    <section id='s4'>
        <div id="topo">
            <div id="tituloTxt">portfolio</div>
        </div>
        <div id="portfolio">
            
        </div>
    </section>
    <!-- Seção 5 -->
    <section id='s5'>
        <div id="topo">
            <div id="tituloTxt">clientes e parceiros</div>
        </div>
        <div id="clientesParceiros">
            
            <div id="tabelaCP"></div>
        </div>
    </section>
</div>


 <?php get_footer(); ?>