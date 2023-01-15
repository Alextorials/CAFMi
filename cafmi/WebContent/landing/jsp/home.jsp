<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
 
		<!-- FAVICON -->
        <title>CAFMi | Home</title>
        <link rel="icon" type="image/x-icon" href="landing/images/CAFMi-Logo.png">
		
        <!-- CSS FILES -->        
        <link href="landing/css/bootstrap.min.css" rel="stylesheet">
        <link href="landing/css/templatemo-kind-heart-charity.css" rel="stylesheet">            
 
    </head>
 
 
 
    <body> 
 
		<!-- NAVBAR -->
		<nav class="navbar navbar-expand-lg bg-light shadow-lg">
		    <div class="container">
 
		     <a class="navbar-brand" href="#hero-slide">
		            <img src="landing/images/CAFMi-Logo.png" class="logo img-fluid" alt="CAFMi">
		            <span>
		                <img src="landing/images/CAFMi-Banner.png" class="logo img-fluid" alt="CAFMi">
		                   <small>CENTRI ASSISTENZA FISCALE AUTORIZZATI MILANO</small>
		            </span>
		       </a>
 
 
		         <div class="collapse navbar-collapse" id="navbarNav">
		            <ul class="navbar-nav ms-auto"> 
 
		                <li class="nav-item">
		                    <a class="nav-link" href="prenota">Prenota Appuntamento</a>
		                </li> 
 
		                <li class="nav-item dropdown">
		                    <a class="nav-link" id="navbarLightDropdownMenuLink" data-bs-toggle="dropdown"> Servizi <ion-icon name="chevron-down-outline"></ion-icon></a>
		                    <ul class="dropdown-menu">
		                        <li><a class="dropdown-item" href="pagine/jsp/permesso.jsp">Permesso soggiorno</a></li> 
		                        <li><a class="dropdown-item" href="pagine/jsp/ricongiungimento.jsp">Ricongiungimento familiare</a></li> 
		                        <li><a class="dropdown-item" href="pagine/jsp/cittadinanza.jsp">Cittadinanza</a></li>
		                        <li><a class="dropdown-item" href="pagine/jsp/SPID.jsp">SPID</a></li>
		                    </ul>
		                </li>
 
		                <li class="nav-item">
		                    <a class="nav-link click-scroll" href="home#info">I nostri centri</a>
		                </li>
 
 
		                <li class="nav-item">
		                    <a class="nav-link click-scroll" href="home#info">Contattaci</a>
		                </li>
 
 
                           <% int ruolo = (int)session.getAttribute("ruolo"); %>
                           	<%switch (ruolo) {
                           	case 0: %>
	                            <li class="nav-item dropdown">
	                                <a class="nav-link click-scroll" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	
							<lord-icon
							    src="https://cdn.lordicon.com/imamsnbq.json"
							    trigger="hover"
							    colors="primary:#121331,secondary:#08a88a"
							    stroke="100"
							    style="width:25px;height:25px">
							</lord-icon>
	                                
								Ciao, <% String cliente = (String)session.getAttribute("nome");out.print(cliente);%>  <ion-icon name="chevron-down-outline"></ion-icon></a>
	                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
	                                	<li><a class="dropdown-item" href="up_pass_cli">Modifica dati</a></li>
	                                    <hr>
	                                    <li><a class="dropdown-item" href="logout">Logout<ion-icon name="log-out-outline"></ion-icon></a></li> 
	                                </ul>
	                            </li>
	                            
	                          <% break;
	                          case 1: %>
	                            <li class="nav-item dropdown">
	                                <a class="nav-link click-scroll" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"><ion-icon name="person-circle-outline"></ion-icon> Ciao, <% String dipendente = (String)session.getAttribute("nome");out.print(dipendente);%>  <ion-icon name="chevron-down-outline"></ion-icon></a>
	                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink"> 
	                                    <li><a class="dropdown-item" href="dipendente">Pannello Dipendente</a></li>    
	                                    <hr>
	                                    <li><a class="dropdown-item" href="logout">Logout<ion-icon name="log-out-outline"></ion-icon></a></li> 
	                                </ul>
	                            </li> 
	                            
	                           <% break;
	                           case 2: %>
	                            <li class="nav-item dropdown">
	                                <a class="nav-link click-scroll" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"><ion-icon name="person-circle-outline"></ion-icon> Ciao, <% String admin = (String)session.getAttribute("nome");out.print(admin);%>  <ion-icon name="chevron-down-outline"></ion-icon></a>
	                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink"> 
	                                    <li><a class="dropdown-item" href="dirigente">Pannello Dirigente</a></li>
	                                    <hr>
	                                    <li><a class="dropdown-item" href="logout">Logout<ion-icon name="log-out-outline"></ion-icon></a></li> 
	                                </ul>
	                            </li>                        
                            
                            <%break;
	                        default: %>
		                        <li class="nav-item ms-3">
	                    			<a class="nav-link custom-btn custom-border-btn btn" href="login">Accedi</a>
	                			</li>                      
	                        
                           	<% break;
                           	} %>
                           	
                        </ul>
                    </div>
                </div>
            </nav>
 
 
 

<!-- CONTENUTO -->
<main>

 <section class="hero-section hero-section-full-height">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-lg-12 col-12 p-0">
                            <div id="hero-slide" class="carousel carousel-fade slide" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="landing/images/carousel-1.jpg" class="carousel-image img-fluid" alt="...">
                                        
                                        <div class="carousel-caption d-flex flex-column justify-content-end">
                                            <h1>Gestione smart</h1>
                                            
                                            <p>Servizi su misura per un welfare pi&#249; semplice e diretto</p>
                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                        <img src="landing/images/carousel-2.jpg" class="carousel-image img-fluid" alt="...">" class="carousel-image img-fluid" alt="...">
                                        
                                        <div class="carousel-caption d-flex flex-column justify-content-end">
                                            <h1>Prossimit&#224;</h1>
                                            
                                            <p>Trova il punto CAFMi pi&#249; vicino a te</p>
                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                       <img src="landing/images/carousel-3.jpg" class="carousel-image img-fluid" alt="...">
                                        
                                        <div class="carousel-caption d-flex flex-column justify-content-end">
                                            <h1>Utilit&#224;</h1>
                                            
                                            <p>La documentazione necessaria a portata di click</p>
                                        </div>
                                    </div>
                                </div>

                                <button class="carousel-control-prev" type="button" data-bs-target="#hero-slide" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Precedente</span>
                                </button>

                                <button class="carousel-control-next" type="button" data-bs-target="#hero-slide" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Successivo</span>
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
           
            </section>


<!-- ICONE CON IMMAGINI DA METTERE E DESCRIZIONI -->
<section class="section-padding">
    <div class="container">
        <div class="row">

            <div class="col-lg-10 col-12 text-center mx-auto">
                <h2 class="mb-5">Cerca il servizio che ti interessa</h2>
            </div>

            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                <div class="featured-block d-flex justify-content-center align-items-center">
                    <a href="prenota" class="d-block">
                        <img src="landing/images/prenotazione1.png" class="featured-block-image img-fluid" alt="Prenota appuntamento">
                        <p class="featured-block-text"><strong>Prenota appuntamento</strong></p>
                    </a>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                <div class="featured-block d-flex justify-content-center align-items-center">
                    <a href="pagine/jsp/permesso.jsp" class="d-block">
                        <img src="landing/images/permesso.png" class="featured-block-image img-fluid" alt="Permesso di soggiorno">
                        <p class="featured-block-text"><strong>Permesso soggiorno</strong> </p>
                    </a>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                <div class="featured-block d-flex justify-content-center align-items-center">
                    <a href="pagine/jsp/cittadinanza.jsp" class="d-block">
                        <img src="landing/images/richiesta-cittadinanza.png" class="featured-block-image img-fluid" alt="Cittadinanza">
                        <p class="featured-block-text"><strong>Cittadinanza italiana</strong></p>
                    </a>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                <div class="featured-block d-flex justify-content-center align-items-center">
                    <a href="pagine/jsp/ricongiungimento.jsp" class="d-block">
                        <img src="landing/images/ricongiungimento-familiare.png" class="featured-block-image img-fluid " alt="Ricongiungimento familiare">
                        <p class="featured-block-text"><strong>Ricongiungimento familiare</strong></p>
                    </a>
                </div>
            </div>

        </div>
    </div>
</section>




    <section class="section-padding section-bg">
        <div class="container">
            <div class="row">

                <div class="col-lg-6 col-12 mb-5 mb-lg-0">
                    <img src="landing/images/CAFMi-Logo.png" class="custom-text-box-image img-fluid" alt="">
                </div>

                <div class="col-lg-6 col-12">
                    <div class="custom-text-box">
                        <h2 class="mb-2">Chi siamo</h2>

                        <h5 class="mb-3">CAFMi </h5>

                        <p class="mb-0">Presso i nostri centri CAFMi troverai persone che conoscono i tuoi problemi e ti aiuteranno ad affrontare i dubbi di carattere fiscale o legati a prestazioni sociali, e a <strong>trovare le soluzioni pi&#249; vantaggiose per te.</strong>
                            Alla professionalit&#224; dei nostri operatori si aggiunge una grande attenzione all'innovazione tecnologica. Troverai supporto su appuntamento presso una sede e online grazie al portale da quale <strong>potrai inviare e ricevere i documenti comodamente a distanza.</strong></p>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="custom-text-box mb-lg-0">
                                <h5 class="mb-3">La nostra missione</h5>

                                <p>Dare <strong>valore</strong> alle esigenze di ogni cittadino attraverso</p>

                                <ul class="custom-list mt-2">
                                    <li class="custom-list-item d-flex">
                                        <ion-icon name="checkmark-circle-outline"></ion-icon>
                                        innovazione tecnologica
                                    </li>

                                    <li class="custom-list-item d-flex">
                                        <ion-icon name="checkmark-circle-outline"></ion-icon>
                                        professionalit&#224; e competenza
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="custom-text-box d-flex flex-wrap d-lg-block mb-lg-0">
                                <div class="counter-thumb"> 
                                    <div class="d-flex">
                                        <span class="counter-number" data-from="1" data-to="10" data-speed="1000"></span>
                                        <span class="counter-number-text"></span>
                                    </div>

                                    <span class="counter-text">Sedi</span>
                                </div> 

                                <div class="counter-thumb mt-4"> 
                                    <div class="d-flex">
                                        <span class="counter-number" data-from="1" data-to="50" data-speed="1000"></span>
                                    </div>

                                    <span class="counter-text">Operatori al servizio</span>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    
   
   <br id="info">
   
       
    <!--MAPPA -->
    <section class="contact-section section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-12 mx-auto">
                    <div class="contact-info-wrap">
                        <h2>Trova le nostre sedi</h2>
                        <div class="contact-info">	
                            <p class="d-flex mb-2">
                             <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1-euJ3gEXm1fR9pWWSLJ-hIQjAweaZp0&ehbc=2E312F" width="640" height="480"></iframe>
                
                            </p>	
                        </div>
                    </div>
                </div>
                <br>

            
    			<!-- CONTATTACI GENERICO -->
                <div class="col-lg-5 col-12 mx-auto">
                    <form class="custom-form contact-form" action="#" method="post" role="form">
                        <h2>Contattaci</h2>

                        <p class="mb-4">Compila il modulo oppure manda una mail all'indirizzo:
                            <strong>info@cafmi.it</strong>
                        </p>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <input type="text" name="first-name" id="first-name" class="form-control" placeholder="Nome" required>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <input type="text" name="last-name" id="last-name" class="form-control" placeholder="Cognome" required>
                            </div>
                        </div>	
                        <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="indirizzo email" required>
                        <textarea name="message" rows="5" class="form-control" id="message" placeholder="Come possiamo aiutarti?"></textarea>
                        <button type="submit" class="form-control">Invia richiesta</button>
                    </form>
                </div>	
            </div>
        </div>
    </section>
</main>           


<!-- FOOTER --> 
<footer class="site-footer">
<div class="container">
    <div class="row">
        <div class="col-lg-3 col-12 mb-4">
            <a href="logout" class="site-footer-link"><img src="landing/images/CAFMi-Logo.png" class="logo img-fluid" alt=""></a>
        </div>

         <div class="col-lg-4 col-md-6 col-12 mx-auto">
            <h5 class="site-footer-title mb-3 text-danger" href="logout">CAFMi</h5>

            <p class="text-white d-flex mb-2">                            
                <a href="prenota" class="site-footer-link">Prenota appuntamento</a>
            </p>

            <p class="text-white d-flex">                        
                <a href="home#info" class="site-footer-link">Contattaci </a>
            </p>

            <p class="text-white d-flex mt-3">
                <a href="home#info" class="site-footer-link">I nostri centri </a> 
            </p>
            
        </div>

        <div class="col-lg-4 col-md-6 col-12 mx-auto">
            <h5 class="site-footer-title mb-3">Contatti</h5>

            <p class="text-white d-flex mb-2">                            
                <a class="site-footer-link"> 
                <ion-icon name="call"></ion-icon> +39 02 6478 5930 </a>
            </p>

            <p class="text-white d-flex">                        
                <a class="site-footer-link">
                <ion-icon name="mail"></ion-icon> info@cafmi.it</a>
            </p>

            <p class="text-white d-flex mt-3">
                   <a class="site-footer-link">
                <ion-icon name="location-outline"></ion-icon> Milano </a>
            </p>
            
        </div>
    </div>
</div>

<!-- FOOTER 2 -->
 <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
    
    <p><a class="fw-bold" href="team#features">&rarr; Powered by Rona, Jie, Eleonora, Maxim, Alex    
    <lord-icon
    src="https://cdn.lordicon.com/qhgmphtg.json"
    trigger="loop"
    style="width:25px;height:25px">
	</lord-icon>
    </a></p>
    
    &#169; 2023 Copyright CAFMi | JAMI70 GENERATION
    
  </div>
  
  
</footer>

	<!-- JAVASCRIPT FILES -->
	<script src="landing/js/jquery.min.js"></script>
	<script src="landing/js/bootstrap.min.js"></script>
	<script src="landing/js/jquery.sticky.js"></script>
	<script src="landing/js/counter.js"></script>
	<script src="landing/js/custom.js"></script>
	
	<!-- ICONS -->
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	
	<!-- ANIMATED ICONS -->
	<script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
	
	</body>
	</html>