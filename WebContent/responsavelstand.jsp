<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, com.stand.model.ResponsavelStand" %>    
<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta charset="utf-8" />
        <title>Minura Enterprise - Responsavel Stand</title>
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
                        <a href="dashboard.jsp">
                            <img src="assets/images/logotipo.png" alt="absolute admin" class="img-responsive logo-default"/> </a>

                    </div><div class="menu-toggler sidebar-toggler">
                        <a href="javascript:;" class="navbar-minimalize minimalize-styl-2  pull-left "><i class="fa fa-bars"></i></a>
                    </div>

                    <div class="search-bar">
                        <form class="sidebar-search  " action="#" method="POST">

                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Procurar...">

                            </div>
                        </form>
                    </div>
                    <!-- END LOGO -->

                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <li class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false">
                                    <img alt="" class="img-circle" src="assets/images/avtar-1.jpg">

                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a href="#">
                                            <i class="icon-user"></i> Perfil </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-calendar"></i> Reservas </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-envelope-open"></i> Mensagens
                                            <span class="badge badge-danger"> 0 </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="app_todo.html">
                                            <i class="icon-rocket"></i> Minhas Tarefas
                                            <span class="badge badge-success"> 0 </span>
                                        </a>
                                    </li>
                                    <li class="divider"> </li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-lock"></i> Bloqueio de conta</a>
                                    </li>
                                    <li>
                                        <a href="page_user_login_1.html">
                                            <i class="icon-key"></i> Terminar Sessão</a>
                                    </li>
                                </ul>
                            </li>
                            <!-- END USER LOGIN DROPDOWN -->
                            <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-quick-sidebar-toggler">
                                <a href="#" class="dropdown-toggle">
                                    <i class="icon-logout"></i>
                                </a>
                            </li>
                            <!-- END QUICK SIDEBAR TOGGLER -->
                        </ul>
                    </div>
                    <!-- END TOP NAVIGATION MENU -->
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

                                        <h4 class="pull-left">Registo de Responsavel Stand</h4>

                                        <ol class="breadcrumb pull-right">
                                            <li><a href="javascript: void(0);"><i class="fa fa-home"></i></a></li>
                                            <li>Registo</li>
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
                                                    <span class="step-text">Responsavel Stand</span>
                                                </a>
                                            </li>
                                           
                                        </ul>
                                        <form class="form-horizontal" action="HResponsavelStand" method="post">
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab1">
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Nome</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="nome" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">E-mail</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="email" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                   <div class="form-group">
                                                        <label class="col-md-3 control-label">Contacto</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="contacto" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Contacto Alt.</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="contactoAlt" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Password</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="password" type="password" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                  
                                                    
                                                


                                                
                                             
	                                        <ul class="pager">
	                                       
	                                            <li class="next finish" ><br><br>
	                                            	<button type="submit" name="registarrs" class="btn btn-primary btn-block ">Registar</button>
	                                            </li>
	                                        </ul>
                                        </form>
                                    </div>
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