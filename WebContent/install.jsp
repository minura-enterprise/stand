<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList, com.stand.model.Utilizador" %>
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
                            <img src="assets/images/logo.png" alt="absolute admin" class="img-responsive logo-default"/> </a>

                    </div><div class="menu-toggler sidebar-toggler">
                        <a href="javascript:;" class="navbar-minimalize minimalize-styl-2  pull-left "><i class="fa fa-bars"></i></a>
                    </div>

                    <div class="search-bar">
                        <form class="sidebar-search  " action="page_general_search_3.html" method="POST">

                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search...">

                            </div>
                        </form>
                    </div>
                    <!-- END LOGO -->

                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">
                            <!-- BEGIN NOTIFICATION DROPDOWN -->
                            <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="icon-bell"></i>
                                    <span class="badge badge-default"> <span class="ring">
                                        </span><span class="ring-point">
                                        </span> </span>
                                </a>
                                <ul class="dropdown-menu animated flipInX">
                                    <li class="external">
                                        <h3>
                                            <span class="bold">12 pending</span> notifications</h3>
                                        <a href="page_user_profile_1.html">view all</a>
                                    </li>
                                    <li>  <ul class="dropdown-menu-list scroller" data-handle-color="#637283">
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">just now</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-success">
                                                            <i class="fa fa-plus"></i>
                                                        </span> New user registered. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">3 mins</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-danger">
                                                            <i class="fa fa-bolt"></i>
                                                        </span> Server #12 overloaded. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">10 mins</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-warning">
                                                            <i class="fa fa-bell-o"></i>
                                                        </span> Server #2 not responding. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">14 hrs</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-info">
                                                            <i class="fa fa-bullhorn"></i>
                                                        </span> Application error. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">2 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-danger">
                                                            <i class="fa fa-bolt"></i>
                                                        </span> Database overloaded 68%. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">3 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-danger">
                                                            <i class="fa fa-bolt"></i>
                                                        </span> A user IP blocked. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">4 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-warning">
                                                            <i class="fa fa-bell-o"></i>
                                                        </span> Storage Server #4 not responding dfdfdfd. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">5 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-info">
                                                            <i class="fa fa-bullhorn"></i>
                                                        </span> System Error. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">9 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-danger">
                                                            <i class="fa fa-bolt"></i>
                                                        </span> Storage server failed. </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- END NOTIFICATION DROPDOWN -->
                            <!-- BEGIN INBOX DROPDOWN -->
                            <li class="dropdown dropdown-extended dropdown-notification" id="header_inbox_bar">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="icon-envelope-open"></i>
                                    <span class="badge badge-default"> <span class="ring">
                                        </span><span class="ring-point">
                                        </span> </span>
                                </a>
                                <ul class="dropdown-menu animated flipInX">
                                    <li class="external">
                                        <h3>
                                            <span class="bold">12 New Email</span> </h3>
                                        <a href="page_user_profile_1.html">view all</a>
                                    </li>
                                    <li>
                                        <ul class="dropdown-menu-list scroller"  data-handle-color="#637283">
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">just now</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-success">
                                                            <i class="fa fa-plus"></i>
                                                        </span> 12 New Inbox. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">3 mins</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-danger">
                                                            <i class="fa fa-bolt"></i>
                                                        </span> 10 Spam. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">10 mins</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-warning">
                                                            <i class="fa fa-bell-o"></i>
                                                        </span> 2 Trash. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">14 hrs</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-info">
                                                            <i class="fa fa-bullhorn"></i>
                                                        </span> 5 Social. </span>
                                                </a>
                                            </li>

                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- END INBOX DROPDOWN -->
                            <!-- BEGIN TODO DROPDOWN -->
                            <li class="dropdown dropdown-extended dropdown-tasks" id="header_task_bar">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="icon-calendar"></i>
                                    <span class="badge badge-default"> <span class="ring">
                                        </span><span class="ring-point">
                                        </span> </span>
                                </a>
                                <ul class="dropdown-menu extended tasks animated flipInX">
                                    <li class="external">
                                        <h3>You have
                                            <span class="bold">12 pending</span> tasks</h3>
                                        <a href="app_todo.html">view all</a>
                                    </li>
                                    <li>

                                        <ul class="dropdown-menu-list scroller" data-handle-color="#637283" data-initialized="1">
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">New release v1.2 </span>
                                                        <span class="percent">30%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 40%;" class="progress-bar progress-bar-success" >
                                                            <span class="sr-only">40% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Application deployment</span>
                                                        <span class="percent">65%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 65%;" class="progress-bar progress-bar-danger">
                                                            <span class="sr-only">65% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Mobile app release</span>
                                                        <span class="percent">98%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 98%;" class="progress-bar progress-bar-success" >
                                                            <span class="sr-only">98% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Database migration</span>
                                                        <span class="percent">10%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 10%;" class="progress-bar progress-bar-warning">
                                                            <span class="sr-only">10% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Web server upgrade</span>
                                                        <span class="percent">58%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 58%;" class="progress-bar progress-bar-info" >
                                                            <span class="sr-only">58% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Mobile development</span>
                                                        <span class="percent">85%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 85%;" class="progress-bar progress-bar-success" >
                                                            <span class="sr-only">85% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">New UI release</span>
                                                        <span class="percent">38%</span>
                                                    </span>
                                                    <span class="progress progress-striped">
                                                        <span style="width: 38%;" class="progress-bar progress-bar-important" >
                                                            <span class="sr-only">38% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- END TODO DROPDOWN -->
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <li class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false">
                                    <img alt="" class="img-circle" src="assets/images/avtar-1.jpg">

                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a href="page_user_profile_1.html">
                                            <i class="icon-user"></i> My Profile </a>
                                    </li>
                                    <li>
                                        <a href="app_calendar.html">
                                            <i class="icon-calendar"></i> My Calendar </a>
                                    </li>
                                    <li>
                                        <a href="app_inbox.html">
                                            <i class="icon-envelope-open"></i> My Inbox
                                            <span class="badge badge-danger"> 3 </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="app_todo.html">
                                            <i class="icon-rocket"></i> My Tasks
                                            <span class="badge badge-success"> 7 </span>
                                        </a>
                                    </li>
                                    <li class="divider"> </li>
                                    <li>
                                        <a href="page_user_lock_1.html">
                                            <i class="icon-lock"></i> Lock Screen </a>
                                    </li>
                                    <li>
                                        <a href="page_user_login_1.html">
                                            <i class="icon-key"></i> Log Out </a>
                                    </li>
                                </ul>
                            </li>
                            <!-- END USER LOGIN DROPDOWN -->
                            <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-quick-sidebar-toggler">
                                <a href="javascript:;" class="dropdown-toggle">
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
                                <a href="#"><i class="icon-grid"></i> <span class="nav-label">Dashboard</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="index.html">Dashboard 1</a></li>
                                    <li><a href="index-2.html">Dashboard 2</a></li>
                                    <li><a href="index-3.html">Dashboard 3</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="icon-basket"></i> <span class="nav-label">Ecommerce</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">                               
                                    <li><a href="products.html">Product List </a></li>
                                    <li><a href="orders.html">Orders </a></li>
                                    <li><a href="order-detail.html">Order Detail </a></li>
                                    <li><a href="order-invoice.html">Order Invoice </a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="widgets.html"><i class="fa fa-cog"></i> <span class="nav-label">Widgets </span><span class="label label-rouded pull-right p3-bg note-icon">New 40+</span></a>

                            </li>
                            <li>
                                <a href="mailbox.html"><i class="fa fa-envelope"></i> <span class="nav-label">Mailbox </span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="mailbox.html">Inbox</a></li>
                                    <li><a href="mail_detail.html">Email view</a></li>
                                    <li><a href="mail_compose.html">Compose email</a></li>
                                </ul>
                            </li><li class="nav-heading"><span>Components</span></li>
                            <li>
                                <a href="#"><i class="fa fa-bar-chart"></i> <span class="nav-label">Graphs</span><span class="fa arrow"></span><span class="label label-rouded pull-right p3-bg note-icon">6</span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="flot_charts.html">Flot charts</a></li>
                                    <li><a href="morris_js.html">Morris.js</a></li>
                                    <li><a href="chart_js.html">Chart.js</a></li>
                                    <li><a href="c3.html">C3</a></li>


                                </ul>
                            </li>

                            <li class="active">
                                <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">Forms</span><span class="fa arrow"></span><span class="label label-rouded pull-right p1-bg note-icon">11</span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="form_basic.html">Basic form</a></li>
                                    <li><a href="form_advanced.html">Advanced form</a></li>
                                    <li><a href="form_wizard.html">Wizard form</a></li>
                                    <li><a href="form_masked.html">Masked form</a></li>
                                    <li><a href="form_file_upload.html">File upload</a></li>
                                    <li><a href="file_drop.html">File Dropzone</a></li>
                                    <li><a href="form_text_editor.html">Text editor</a></li>
                                    <li><a href="form_inline_edit.html">Inline edit</a></li>
                                    <li><a href="form_validate.html">Form Validation</a></li>
                                    <li><a href="form_tinymce.html">Tinymce Editor</a></li>
                                    <li><a href="form_wysihtml5.html">WYSIHTML5 Editor</a></li>

                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span><span class="fa arrow"></span><span class="label label-rouded pull-right p4-bg note-icon">8</span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="lockscreen.html">Lockscreen</a></li>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="register.html">Register</a></li>
                                    <li><a href="404.html">404 Page</a></li>
                                    <li><a href="empty_page.html">Empty page</a></li>
                                    <li><a href="gallery.html">gallery</a></li>
                                    <li><a href="price_tables.html">Price tables</a></li>
                                    <li><a href="page_contact.html">Contact Page</a></li>
                                </ul>
                            </li>                     

                            <li>
                                <a href="#"><i class="fa fa-hourglass-o"></i> <span class="nav-label">Icons</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="icons.html">Icons</a></li>
                                    <li><a href="weather-icon.html">Weather Icons</a></li>
                                    <li><a href="themifyicons.html">Themify Icons</a></li>
                                    <li><a href="linea_arrows.html">Linea Arrows Icons</a></li>
                                    <li><a href="linea_basic.html">Linea Basic Icons</a></li>                              
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">UI Elements</span><span class="fa arrow"></span><span class="label label-rouded pull-right p2-bg note-icon">16</span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="typography.html">Typography</a></li>
                                    <li><a href="buttons.html">Buttons</a></li>
                                    <li><a href="video.html">Video</a></li>
                                    <li><a href="tabs_panels.html">Panels</a></li>
                                    <li><a href="tabs.html">Tabs</a></li><li><a href="chat.html">Chat</a></li>
                                    <li><a href="alert_notifications.html">Alert &amp; notifications</a></li>
                                    <li><a href="tree_view.html">Tree View</a></li>
                                    <li><a href="timeline.html">Time Line</a></li>
                                    <li><a href="progress_bar.html">Progress Bar</a></li>
                                    <li><a href="sliders.html">OWL Carousel</a></li>
                                    <li><a href="range_slider.html">Range Slider</a></li>
                                    <li><a href="alert_popup.html">Alert Popup</a></li>
                                    <li><a href="accordion.html">Accordion</a></li>
                                    <li><a href="models.html">Modals Popup</a></li>
                                    <li><a href="toastr_alert.html">Toastr Alert</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="grid_options.html"><i class="fa fa-laptop"></i> <span class="nav-label">Grid options</span></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-table"></i> <span class="nav-label">Tables</span><span class="fa arrow"></span><span class="label label-rouded pull-right p4-bg note-icon">5</span></a>
                                <ul class="nav nav-second-level collapse"><li><a href="table_basic.html">Static Tables</a></li>
                                    <li><a href="table_data_tables.html">Data Tables</a></li>
                                    <li><a href="table_responsive.html">Responsive Tables</a></li>
                                    <li><a href="table_editable.html">Editable Tables</a></li>
                                    <li><a href="table_jsgrid.html">JSGrid Tables</a></li>

                                </ul>
                            </li><li class="nav-heading"><span>More</span></li>
                            <li>
                                <a href="#"><i class="fa fa-users"></i> <span class="nav-label">Users</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="user_profile.html">profile</a></li>
                                    <li><a href="user_list.html">User list</a></li>

                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-map-marker"></i> <span class="nav-label">maps</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="google_maps.html">Google maps</a></li>
                                    <li><a href="vector_maps.html">Vector Maps</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-pencil"></i> <span class="nav-label">Blog</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="blog_list.html">Blog list</a></li>
                                    <li><a href="blog_post.html">Blog post</a></li>
                                </ul>
                            </li>
                            <li><a href="calendar.html"><i class="fa fa-calendar"></i>  <span class="nav-label">Calendar </span></a></li>

                            <li>
                                <a href="#"><i class="fa fa-sitemap"></i> <span class="nav-label">Menu Levels </span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li>
                                        <a href="#">Third Level <span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level collapse">
                                            <li>
                                                <a href="#">Third Level Item</a>
                                            </li>
                                        </ul>
                                    </li> <li><a href="#">Second Level Item</a></li>
                                </ul>
                            </li><li class="nav-heading"><span>Extra</span></li>

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

                                        <h4 class="pull-left">Picolhooo</h4>


                                        <ol class="breadcrumb pull-right">
                                            <li><a href="javascript: void(0);"><i class="fa fa-home"></i></a></li>
                                            <li>Form Wizard</li>
                                        </ol>

                                    </div>
                                </div>
                            </div>
                        </div><!-- end .page title-->

                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel panel-card margin-b-30">
                                    <!-- Start .panel -->
                                    <div class="panel-heading">
                                       Form Wizard
                                        <div class="pull-right">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info btn-rounded btn-xs dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Action <span class="caret"></span></button>
                                                <ul class="dropdown-menu panel-dropdown" role="menu">
                                                    <li><a href="#">Action</a></li>
                                                    <li><a href="#">Another action</a></li>
                                                    <li><a href="#">Something else here</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">Separated link</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                         <div id="wizard" class="bwizard">
                                        <!-- Start .bwizard -->
                                        <ul class="bwizard-steps list-inline">
                                            <li class="active">
                                                <a href="#tab1" data-toggle="tab">
                                                    <span class="step-number">1</span>
                                                    <span class="step-text">Personal Info</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#tab2" data-toggle="tab">
                                                    <span class="step-number">2</span>
                                                    <span class="step-text">Contact Info</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#tab3" data-toggle="tab">
                                                    <span class="step-number">3</span>
                                                    <span class="step-text">Account Info</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <form class="form-horizontal" >
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab1">
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">First Name</label>
                                                        <div class="col-md-9">
                                                            <input class="form-control" name="firstname" type="text">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class=" col-md-3 control-label">Last Name</label>
                                                        <div class="col-md-9">
                                                            <input class="form-control" name="lastname" type="text">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>
                                                <div class="tab-pane" id="tab2">
                                                    <div class="form-group">
                                                        <label class=" col-md-3 control-label">Email</label>
                                                        <div class="col-md-9">
                                                            <input class="form-control" name="email" type="email">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class=" col-md-3 control-label">Phone number</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="phone" type="text">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>
                                                <div class="tab-pane" id="tab3">
                                                    <div class="form-group">
                                                        <label class=" col-md-3 control-label">Username</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="username" type="text">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class=" col-md-3 control-label">Password</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="password" type="password">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class=" col-md-3 control-label">Re-type password</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="password_2" type="password">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>
                                            </div>
                                        </form>
                                        <ul class="pager">
                                            <li class="previous"><a href="#">&larr; Back</a>
                                            </li>
                                            <li class="next"><a href="#">Next &rarr;</a>
                                            </li>
                                            <li class="next finish" style="display:none;"><a href="#">Finish</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- End .bwizard -->

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="panel panel-card margin-b-30">
                                    <!-- Start .panel -->
                                    <div class="panel-heading">
                                       Form wizard with progressbar
                                        <div class="pull-right">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info btn-rounded btn-xs dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Action <span class="caret"></span></button>
                                                <ul class="dropdown-menu panel-dropdown" role="menu">
                                                    <li><a href="#">Action</a></li>
                                                    <li><a href="#">Another action</a></li>
                                                    <li><a href="#">Something else here</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">Separated link</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                         <div id="wizard1" class="bwizard">
                                        <!-- Start .bwizard -->
                                        <ul class="bwizard-steps list-inline">
                                            <li class="active">
                                                <a href="#tab4" data-toggle="tab">
                                                    <span class="step-number">1</span>
                                                    <span class="step-text">Personal Info</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#tab5" data-toggle="tab">
                                                    <span class="step-number">2</span>
                                                    <span class="step-text">Contact Info</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#tab6" data-toggle="tab">
                                                    <span class="step-number">3</span>
                                                    <span class="step-text">Account Info</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="wizard-progress">
                                            <div id="bar" class="progress">
                                                <div class="progress-bar"></div>
                                            </div>
                                        </div>
                                        <form class="form-horizontal" >
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab4">
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">First Name</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="firstname" type="text">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Last Name</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="lastname" type="text">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>
                                                <div class="tab-pane" id="tab5">
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Email</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="email" type="email">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Phone number</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="phone" type="text">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>
                                                <div class="tab-pane" id="tab6">
                                                    <div class="form-group">
                                                        <label class=" col-md-3 control-label">Username</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="username" type="text">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Password</label>
                                                        <div class=" col-md-9">
                                                            <input class="form-control" name="password" type="password">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Re-type password</label>
                                                        <div class="col-md-9">
                                                            <input class="form-control" name="password_2" type="password">
                                                        </div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>
                                            </div>
                                        </form>
                                        <ul class="pager">
                                            <li class="previous"><a href="#">&larr; Back</a>
                                            </li>
                                            <li class="next"><a href="#">Next &rarr;</a>
                                            </li>
                                            <li class="next finish" style="display:none;"><a href="#">Finish</a>
                                            </li>
                                        </ul>
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
                            10GB of <strong>250GB</strong> Free.
                        </div>
                        <div>
                            <strong>Copyright</strong> Example Company © 2017
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