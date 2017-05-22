<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList, com.stand.model.Utilizador" %>
<% Utilizador user = (Utilizador) (session.getAttribute("currentSessionUser"));%>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta charset="utf-8" />
        <title>Minura Enterprise - Installation</title>
        <meta name="keywords" content="HTML5,CSS3,Minura Enterprise,J2EE,Minura" />
        <meta name="description" content="Minura Enterprise J2EE" />
        <meta name="Author" content="Minura Enterprise [www.minura-enterprise.github.io]" />

        <!-- mobile settings -->
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

        <!-- WEB FONTS : use %7C instead of | (pipe) -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400%7CRaleway:300,400,500,600,700%7CLato:300,400,400italic,600,700" rel="stylesheet" type="text/css" />

        <!-- CORE CSS -->
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/metis-menu/metisMenu.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/simple-line-icons-master/css/simple-line-icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/animate/animate.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/c3/c3.min.css" rel="stylesheet">
        <link href="assets/plugins/widget/widget.css" rel="stylesheet">
        <link href="assets/plugins/calendar/fullcalendar.min.css" rel="stylesheet">
        <link href="assets/plugins/ui/jquery-ui.css" rel="stylesheet">

        <!-- THEME CSS -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/theme/dark.css" rel="stylesheet" type="text/css" />

        <!-- PAGE LEVEL SCRIPTS -->

    </head>
    <body class="fixed-top">

        <!-- wrapper -->
        <div id="wrapper">
            <!-- BEGIN HEADER -->
            <div class="page-header navbar navbar-fixed-top">
                <!-- BEGIN HEADER INNER -->
                <div class="page-header-inner ">
                    <!-- BEGIN LOGO -->
                    <div class="page-logo">
                        <a href="install.jsp">
                            <img src="assets/images/logotipo.png" alt="absolute admin" class="img-responsive logo-default"/> </a>

                    </div><div class="menu-toggler sidebar-toggler">
                        <a href="javascript:;" class="navbar-minimalize minimalize-styl-2  pull-left "><i class="fa fa-bars"></i></a>
                    </div>
                    <!-- END LOGO -->
                </div>
                <!-- END HEADER INNER -->
            </div>
            <!-- END HEADER -->
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
            <div class="clearfix"> </div>
            <!-- END HEADER & CONTENT DIVIDER -->

           <!-- BEGIN CONTAINER -->
            <div class="page-container">

                <aside class="sidebar">
                    <nav class="sidebar-nav">
                        <ul class="metismenu" id="menu">
                            <li>
                                <a href="dashboard.jsp"><i class="icon-grid"></i> <span class="nav-label">Dashboard</span></a>
                             
                            </li>
                            <li class="nav-heading"><span>Administração</span></li>
                            <li>
                                <a href="#"><i class="fa fa-users"></i> <span class="nav-label">Utilizadores</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">                               
                                    <li><a href="#"><i class="fa fa-search"></i> <span class="nav-label">Pesquisar</span></a></li>
                                    <li><a href="#"><i class="fa fa-list-ol"></i> <span class="nav-label">Listar</span></a></li>
                                    <li><a href="#"><i class="fa fa-user-plus"></i> <span clasS="nav-label">Adicionar</span></a></li>
                                  </ul>   
                            </li>
                             <li>
                                <a href="#"><i class="fa fa-user"></i> <span class="nav-label">Clientes</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">                               
                                    <li><a href="#"><i class="fa fa-search"></i> <span class="nav-label">Pesquisar</span></a></li>
                                    <li><a href="#"><i class="fa fa-list-ol"></i> <span class="nav-label">Listar</span></a></li>
                                 
                                    <li><a href="cliente.jsp"><i class="fa fa-user-plus"></i> <span class="nav-label">Adicionar</span></a><li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-eye"></i> <span class="nav-label">Vendedores</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">                               
                                    <li><a href="#"><i class="fa fa-search"></i> <span class="nav-label">Pesquisar</span></a></li>
                                    <li><a href="#"><i class="fa fa-list-ol"></i> <span class="nav-label">Listar</span></a></li>
                                 
                                    <li><a href="responsavelvenda.jsp"><i class="fa fa-user-plus"></i> <span class="nav-label">Adicionar</span></a><li>
                                </ul>
                            </li>
                             <li>
                                <a href="#"><i class="fa fa-black-tie"></i> <span class="nav-label">Responsaveis de Venda</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">                               
                                    <li><a href="#"><i class="fa fa-search"></i> <span class="nav-label">Pesquisar</span></a></li>
                                    <li><a href="#"><i class="fa fa-list-ol"></i> <span class="nav-label">Listar</span></a></li>
                                 
                                    <li><a href="responsavelstand.jsp"><i class="fa fa-user-plus"></i> <span class="nav-label">Adicionar</span></a><li>
                                </ul>
                            </li>
                             <li>
                                <a href="#"><i class="fa fa-car"></i> <span class="nav-label">Viaturas</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">                               
                                    <li><a href="#"><i class="fa fa-search"></i> <span class="nav-label">Pesquisar</span></a></li>
                                    <li><a href="#"><i class="fa fa-list-ol"></i> <span class="nav-label">Listar</span></a></li>
                                 
                                    <li><a href="viatura.jsp"><i class="fa fa-plus"></i> <span class="nav-label">Adicionar</span></a><li>
                                </ul>
                            </li>
                            <li class="nav-heading"><span>Mais	</span></li>
                            <li>
                                <a href="#"><i class="fa fa-users"></i> <span class="nav-label"></span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="#"><i class="fa fa-user"></i> <span class="nav-label">Perfil</span></a></li>
                                    <li><a href="#"><i class="fa fa-cogs"></i> <span clasS="nav-label">Definições</span></a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- END SIDEBAR MENU -->
                        <!-- END SIDEBAR MENU -->
                    </nav>
                    <!-- END SIDEBAR -->
                </aside>

                <!-- BEGIN CONTENT BODY -->
                <div class="page-content-wrapper">
                    <div class="content-wrapper container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="page-title">
                                    <div class="row">

                                        <h4 class="pull-left">Instalação do Stand</h4>

                                        <ol class="breadcrumb pull-right">
                                            <li><a href="javascript: void(0);"><i class="fa fa-home"></i></a></li>
                                            <li>Instalação</li>
                                        </ol>

                                    </div>
                                </div>
                            </div>
                        </div><!-- end .page title-->

                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-card margin-b-30">
                                    <!-- Start .panel -->
                                    <div class="panel-heading">
                                       Insira os detalhes
                                    </div>
                                    <div class="panel-body">
                                         <div id="wizard" class="bwizard">
                                        <!-- Start .bwizard -->
                                        <ul class="bwizard-steps list-inline">
                                            <li class="active">
                                                <a href="#tab1" data-toggle="tab">
                                                    <span class="step-number">1</span>
                                                    <span class="step-text">Viatura</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <form class="form-horizontal" action="HWeb" method="post">
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab1">
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Dono</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="dono" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Segmento</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="segmento" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class=" col-md-3 control-label">Marca</label>
                                                        <div class="col-md-6">
                                                            <select name="marca" class="form-control select2" required="">
																		<option value= "AlfaRomeo">Alfa Romeo </option>
																		<option value= "AstonMartin">Aston Martin </option>
																		<option value= "Audi">Audi </option>
																		<option value= "Bentley">Bentley </option>
																		<option value= "BMW">BMW </option>
																		<option value= "Bugatti">Bugatti </option>
																		<option value= "Cadillac">Cadillac </option>
																		<option value= "Chevrolet">Chevrolet </option>
																		<option value= "Chrysler">Chrysler </option>
																		<option value= "Citroen">Citroen </option>
																		<option value= "Corvette">Corvette </option>
																		<option value= "DAF">DAF </option>
																		<option value= "Dacia">Dacia </option>
																		<option value= "Daewoo">Daewoo </option>
																		<option value= "Daihatsu">Daihatsu </option>
																		<option value= "Datsun">Datsun </option>
																		<option value= "De Lorean">De Lorean </option>
																		<option value= "Dino">Dino </option>
																		<option value= "Dodge">Dodge </option>
																		<option value= "Farboud">Farboud </option>
																		<option value= "Ferrari">Ferrari </option>
																		<option value= "Fiat">Fiat </option>
																		<option value= "Ford">Ford </option>
																		<option value= "Honda">Honda </option>
																		<option value= "Hummer">Hummer </option>
																		<option value= "Hyundai">Hyundai </option>
																		<option value= "Jaguar">Jaguar </option>
																		<option value= "Jeep">Jeep </option>
																		<option value= "KIA">KIA </option>
																		<option value= "Koenigsegg">Koenigsegg </option>
																		<option value= "Lada">Lada </option>
																		<option value= "Lamborghini">Lamborghini </option>
																		<option value= "Lancia">Lancia </option>
																		<option value= "Land Rover">Land Rover </option>
																		<option value= "Lexus">Lexus </option>
																		<option value= "Ligier">Ligier </option>
																		<option value= "Lincoln">Lincoln </option>
																		<option value= "Lotus">Lotus </option>
																		<option value= "Martini">Martini </option>
																		<option value= "Maserati">Maserati </option>
																		<option value= "Maybach">Maybach </option>
																		<option value= "Mazda">Mazda </option>
																		<option value= "McLaren">McLaren </option>
																		<option value= "Mercedes">Mercedes </option>
																		<option value= "Mini">Mini </option>
																		<option value= "Mitsubishi">Mitsubishi </option>
																		<option value= "Nissan">Nissan </option>
																		<option value= "Noble">Noble </option>
																		<option value= "Opel">Opel </option>
																		<option value= "Peugeot">Peugeot </option>
																		<option value= "Pontiac">Pontiac </option>
																		<option value= "Porsche">Porsche </option>
																		<option value= "Renault">Renault </option>
																		<option value= "Rolls-RoyceR">Rolls-Royce </option>
																		<option value= "Rover">Rover </option>
																		<option value= "Saab">Saab </option>
																		<option value= "Seat">Seat </option>
																		<option value= "Skoda">Skoda </option>
																		<option value= "Smart">Smart </option>
																		<option value= "Spyker">Spyker </option>
																		<option value= "Subaru">Subaru </option>
																		<option value= "Suzuki">Suzuki </option>
																		<option value= "Toyota">Toyota </option>
																		<option value= "Vauxhall">Vauxhall </option>
																		<option value= "Volkswagen">Volkswagen </option>
																		<option value= "Volvo">Volvo </option>
		                                                    </select>
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Modelo</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="modelo" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Combustivel</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="combustivel" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Data da Inspeção</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="datainspec" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                  
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Potencia em KW</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="potenciakw" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Potencia em CV</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="potenciacv" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Tipo de Caixa</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="tipocaixa" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Cor do Veiculo</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="corveiculo" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Numero de Portas</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="nrportas" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Lotacao</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="lotacao" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Tracao</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="tracao" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Ar Condicionado</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="potenciakw" type="checkbox" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Direccao Assistida</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="potenciakw" type="checkbox" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Alarme</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="alarme" type="checkbox" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Airbag</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="airbag" type="checkbox" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Farois de Nevoeiro</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="faroisnev" type="checkbox" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>
                                                
                                            </div>
	                                        <ul class="pager">
	                                       
	                                            <li class="next finish" ><br><br>
	                                            	<button type="submit" name="registarcli" class="btn btn-primary btn-block ">Registar</button>
	                                            </li>
	                                        </ul>
                                        </form>
                                    </div>
                                    <!-- End .bwizard -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <div class="clearfix"></div>
                    <div class="footer">
                        <div class="pull-right">
                            <strong>Copyright</strong> Minura Enterprise 2017.
                        </div>
                    </div>
                </div>
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTAINER -->
        </div>
        <!-- /wrapper -->


        <!-- SCROLL TO TOP -->
        <a href="#" id="toTop"></a>


        <!-- PRELOADER -->
        <div id="preloader">
            <div class="inner">
                <span class="loader"></span>
            </div>
        </div><!-- /PRELOADER -->


        <!-- JAVASCRIPT FILES -->

        <script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="assets/plugins/metis-menu/metisMenu.min.js"></script>
        <script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="assets/plugins/slim-scroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/c3/d3.v3.min.js" charset="utf-8"></script>       
        <script src="assets/plugins/c3/c3.min.js"></script>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script src="assets/plugins/calendar/moment.min.js"></script>
        <script src="assets/plugins/calendar/fullcalendar.min.js"></script>
        <script src="assets/plugins/ui/jquery-ui.js"></script>
        <script src="assets/plugins/jquery/jquery.validate.js"></script>

  		<script src="assets/plugins/bootstrap/js/jquery.bootstrap.wizard.js"></script>

        <!-- Custom FILES -->
        <script type="text/javascript" src="assets/js/custom.js"></script>
        <script src="assets/js/custom-forms-wizard.js"></script> 
    </body>
</html>