<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                        <a href="dashboard.jsp">
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
                                <a href="#"><i class="icon-grid"></i> <span class="nav-label">Dashboard</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="HIntall">Instalação</a></li>
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
                                                    <span class="step-text">Responsavel</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#tab2" data-toggle="tab">
                                                    <span class="step-number">2</span>
                                                    <span class="step-text">Login</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#tab3" data-toggle="tab">
                                                    <span class="step-number">3</span>
                                                    <span class="step-text">Stand</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <form class="form-horizontal" action="HWeb" method="post">
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab1">
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Nome</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_nome" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Sobrenome</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_snome" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class=" col-md-3 control-label">Nacionalidade</label>
                                                        <div class="col-md-6">
                                                            <select name="u_nacionalidade" class="form-control select2" required="">
																<option value="AF">Afghanistan</option>
																<option value="AX">Åland Islands</option>
																<option value="AL">Albania</option>
																<option value="DZ">Algeria</option>
																<option value="AS">American Samoa</option>
																<option value="AD">Andorra</option>
																<option value="AO">Angola</option>
																<option value="AI">Anguilla</option>
																<option value="AQ">Antarctica</option>
																<option value="AG">Antigua and Barbuda</option>
																<option value="AR">Argentina</option>
																<option value="AM">Armenia</option>
																<option value="AW">Aruba</option>
																<option value="AU">Australia</option>
																<option value="AT">Austria</option>
																<option value="AZ">Azerbaijan</option>
																<option value="BS">Bahamas</option>
																<option value="BH">Bahrain</option>
																<option value="BD">Bangladesh</option>
																<option value="BB">Barbados</option>
																<option value="BY">Belarus</option>
																<option value="BE">Belgium</option>
																<option value="BZ">Belize</option>
																<option value="BJ">Benin</option>
																<option value="BM">Bermuda</option>
																<option value="BT">Bhutan</option>
																<option value="BO">Bolivia, Plurinational State of</option>
																<option value="BQ">Bonaire, Sint Eustatius and Saba</option>
																<option value="BA">Bosnia and Herzegovina</option>
																<option value="BW">Botswana</option>
																<option value="BV">Bouvet Island</option>
																<option value="BR">Brazil</option>
																<option value="IO">British Indian Ocean Territory</option>
																<option value="BN">Brunei Darussalam</option>
																<option value="BG">Bulgaria</option>
																<option value="BF">Burkina Faso</option>
																<option value="BI">Burundi</option>
																<option value="KH">Cambodia</option>
																<option value="CM">Cameroon</option>
																<option value="CA">Canada</option>
																<option value="CV">Cape Verde</option>
																<option value="KY">Cayman Islands</option>
																<option value="CF">Central African Republic</option>
																<option value="TD">Chad</option>
																<option value="CL">Chile</option>
																<option value="CN">China</option>
																<option value="CX">Christmas Island</option>
																<option value="CC">Cocos (Keeling) Islands</option>
																<option value="CO">Colombia</option>
																<option value="KM">Comoros</option>
																<option value="CG">Congo</option>
																<option value="CD">Congo, the Democratic Republic of the</option>
																<option value="CK">Cook Islands</option>
																<option value="CR">Costa Rica</option>
																<option value="CI">Côte d'Ivoire</option>
																<option value="HR">Croatia</option>
																<option value="CU">Cuba</option>
																<option value="CW">Curaçao</option>
																<option value="CY">Cyprus</option>
																<option value="CZ">Czech Republic</option>
																<option value="DK">Denmark</option>
																<option value="DJ">Djibouti</option>
																<option value="DM">Dominica</option>
																<option value="DO">Dominican Republic</option>
																<option value="EC">Ecuador</option>
																<option value="EG">Egypt</option>
																<option value="SV">El Salvador</option>
																<option value="GQ">Equatorial Guinea</option>
																<option value="ER">Eritrea</option>
																<option value="EE">Estonia</option>
																<option value="ET">Ethiopia</option>
																<option value="FK">Falkland Islands (Malvinas)</option>
																<option value="FO">Faroe Islands</option>
																<option value="FJ">Fiji</option>
																<option value="FI">Finland</option>
																<option value="FR">France</option>
																<option value="GF">French Guiana</option>
																<option value="PF">French Polynesia</option>
																<option value="TF">French Southern Territories</option>
																<option value="GA">Gabon</option>
																<option value="GM">Gambia</option>
																<option value="GE">Georgia</option>
																<option value="DE">Germany</option>
																<option value="GH">Ghana</option>
																<option value="GI">Gibraltar</option>
																<option value="GR">Greece</option>
																<option value="GL">Greenland</option>
																<option value="GD">Grenada</option>
																<option value="GP">Guadeloupe</option>
																<option value="GU">Guam</option>
																<option value="GT">Guatemala</option>
																<option value="GG">Guernsey</option>
																<option value="GN">Guinea</option>
																<option value="GW">Guinea-Bissau</option>
																<option value="GY">Guyana</option>
																<option value="HT">Haiti</option>
																<option value="HM">Heard Island and McDonald Islands</option>
																<option value="VA">Holy See (Vatican City State)</option>
																<option value="HN">Honduras</option>
																<option value="HK">Hong Kong</option>
																<option value="HU">Hungary</option>
																<option value="IS">Iceland</option>
																<option value="IN">India</option>
																<option value="ID">Indonesia</option>
																<option value="IR">Iran, Islamic Republic of</option>
																<option value="IQ">Iraq</option>
																<option value="IE">Ireland</option>
																<option value="IM">Isle of Man</option>
																<option value="IL">Israel</option>
																<option value="IT">Italy</option>
																<option value="JM">Jamaica</option>
																<option value="JP">Japan</option>
																<option value="JE">Jersey</option>
																<option value="JO">Jordan</option>
																<option value="KZ">Kazakhstan</option>
																<option value="KE">Kenya</option>
																<option value="KI">Kiribati</option>
																<option value="KP">Korea, Democratic People's Republic of</option>
																<option value="KR">Korea, Republic of</option>
																<option value="KW">Kuwait</option>
																<option value="KG">Kyrgyzstan</option>
																<option value="LA">Lao People's Democratic Republic</option>
																<option value="LV">Latvia</option>
																<option value="LB">Lebanon</option>
																<option value="LS">Lesotho</option>
																<option value="LR">Liberia</option>
																<option value="LY">Libya</option>
																<option value="LI">Liechtenstein</option>
																<option value="LT">Lithuania</option>
																<option value="LU">Luxembourg</option>
																<option value="MO">Macao</option>
																<option value="MK">Macedonia, the former Yugoslav Republic of</option>
																<option value="MG">Madagascar</option>
																<option value="MW">Malawi</option>
																<option value="MY">Malaysia</option>
																<option value="MV">Maldives</option>
																<option value="ML">Mali</option>
																<option value="MT">Malta</option>
																<option value="MH">Marshall Islands</option>
																<option value="MQ">Martinique</option>
																<option value="MR">Mauritania</option>
																<option value="MU">Mauritius</option>
																<option value="YT">Mayotte</option>
																<option value="MX">Mexico</option>
																<option value="FM">Micronesia, Federated States of</option>
																<option value="MD">Moldova, Republic of</option>
																<option value="MC">Monaco</option>
																<option value="MN">Mongolia</option>
																<option value="ME">Montenegro</option>
																<option value="MS">Montserrat</option>
																<option value="MA">Morocco</option>
																<option value="MZ">Mozambique</option>
																<option value="MM">Myanmar</option>
																<option value="NA">Namibia</option>
																<option value="NR">Nauru</option>
																<option value="NP">Nepal</option>
																<option value="NL">Netherlands</option>
																<option value="NC">New Caledonia</option>
																<option value="NZ">New Zealand</option>
																<option value="NI">Nicaragua</option>
																<option value="NE">Niger</option>
																<option value="NG">Nigeria</option>
																<option value="NU">Niue</option>
																<option value="NF">Norfolk Island</option>
																<option value="MP">Northern Mariana Islands</option>
																<option value="NO">Norway</option>
																<option value="OM">Oman</option>
																<option value="PK">Pakistan</option>
																<option value="PW">Palau</option>
																<option value="PS">Palestinian Territory, Occupied</option>
																<option value="PA">Panama</option>
																<option value="PG">Papua New Guinea</option>
																<option value="PY">Paraguay</option>
																<option value="PE">Peru</option>
																<option value="PH">Philippines</option>
																<option value="PN">Pitcairn</option>
																<option value="PL">Poland</option>
																<option value="PT" selected>Portugal</option>
																<option value="PR">Puerto Rico</option>
																<option value="QA">Qatar</option>
																<option value="RE">Réunion</option>
																<option value="RO">Romania</option>
																<option value="RU">Russian Federation</option>
																<option value="RW">Rwanda</option>
																<option value="BL">Saint Barthélemy</option>
																<option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
																<option value="KN">Saint Kitts and Nevis</option>
																<option value="LC">Saint Lucia</option>
																<option value="MF">Saint Martin (French part)</option>
																<option value="PM">Saint Pierre and Miquelon</option>
																<option value="VC">Saint Vincent and the Grenadines</option>
																<option value="WS">Samoa</option>
																<option value="SM">San Marino</option>
																<option value="ST">Sao Tome and Principe</option>
																<option value="SA">Saudi Arabia</option>
																<option value="SN">Senegal</option>
																<option value="RS">Serbia</option>
																<option value="SC">Seychelles</option>
																<option value="SL">Sierra Leone</option>
																<option value="SG">Singapore</option>
																<option value="SX">Sint Maarten (Dutch part)</option>
																<option value="SK">Slovakia</option>
																<option value="SI">Slovenia</option>
																<option value="SB">Solomon Islands</option>
																<option value="SO">Somalia</option>
																<option value="ZA">South Africa</option>
																<option value="GS">South Georgia and the South Sandwich Islands</option>
																<option value="SS">South Sudan</option>
																<option value="ES">Spain</option>
																<option value="LK">Sri Lanka</option>
																<option value="SD">Sudan</option>
																<option value="SR">Suriname</option>
																<option value="SJ">Svalbard and Jan Mayen</option>
																<option value="SZ">Swaziland</option>
																<option value="SE">Sweden</option>
																<option value="CH">Switzerland</option>
																<option value="SY">Syrian Arab Republic</option>
																<option value="TW">Taiwan, Province of China</option>
																<option value="TJ">Tajikistan</option>
																<option value="TZ">Tanzania, United Republic of</option>
																<option value="TH">Thailand</option>
																<option value="TL">Timor-Leste</option>
																<option value="TG">Togo</option>
																<option value="TK">Tokelau</option>
																<option value="TO">Tonga</option>
																<option value="TT">Trinidad and Tobago</option>
																<option value="TN">Tunisia</option>
																<option value="TR">Turkey</option>
																<option value="TM">Turkmenistan</option>
																<option value="TC">Turks and Caicos Islands</option>
																<option value="TV">Tuvalu</option>
																<option value="UG">Uganda</option>
																<option value="UA">Ukraine</option>
																<option value="AE">United Arab Emirates</option>
																<option value="GB">United Kingdom</option>
																<option value="US">United States</option>
																<option value="UM">United States Minor Outlying Islands</option>
																<option value="UY">Uruguay</option>
																<option value="UZ">Uzbekistan</option>
																<option value="VU">Vanuatu</option>
																<option value="VE">Venezuela, Bolivarian Republic of</option>
																<option value="VN">Viet Nam</option>
																<option value="VG">Virgin Islands, British</option>
																<option value="VI">Virgin Islands, U.S.</option>
																<option value="WF">Wallis and Futuna</option>
																<option value="EH">Western Sahara</option>
																<option value="YE">Yemen</option>
																<option value="ZM">Zambia</option>
																<option value="ZW">Zimbabwe</option>
		                                                    </select>
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Morada</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_morada" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Localidade</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_localidade" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Codigo Postal</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_codigoPostal" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                  
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Contacto</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_contacto" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>


                                                <div class="tab-pane" id="tab2">
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">E-mail</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_email" type="email" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Username</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_username" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->

                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Password</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_password" type="password" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->

                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Repita a password</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="u_password_2" type="password" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>
                                                <div class="tab-pane" id="tab3">
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Nome</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="s_nome" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->

                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Morada</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="s_morada" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->

                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Localidade</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="s_localidade" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->

                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Codigo Postal</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="s_codigoPostal" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->

                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label">Contacto</label>
                                                        <div class="col-md-6">
                                                            <input class="form-control" name="s_contacto" type="text" required="">
                                                        </div>
                                                        <div class="col-md-offset-3"></div>
                                                    </div>
                                                    <!-- End .control-group  -->
                                                </div>
                                            </div>
	                                        <ul class="pager">
	                                            <li class="previous"><a href="#">&larr; Anterior</a>
	                                            </li>
	                                            <li class="next"><a href="#">Proximo &rarr;</a>
	                                            </li>
	                                            <li class="next finish" style="display:none;">
	                                            	<a><button style="decoration:none;" type="submit" name="web_install">Instalar</button></a>
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