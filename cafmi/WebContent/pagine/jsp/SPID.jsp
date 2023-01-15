<!doctype html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- FAVICON -->
    <title>CAFMi | SPID</title>
    <link rel="icon" type="image/x-icon" href="../../landing/images/CAFMi-Logo.png">

    <!-- CSS FILES -->
    <link href="../../landing/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/pagine.css" rel="stylesheet">

</head>



<body>

<!-- NAVBAR -->
		<nav class="navbar navbar-expand-lg bg-light shadow-lg">
		    <div class="container">
 
		     <a class="navbar-brand" href="/cafmi/home">
		            <img src="../../landing/images/CAFMi-Logo.png" class="logo img-fluid" alt="CAFMi">
		            <span>
		                <img src="../../landing/images/CAFMi-Banner.png" class="logo img-fluid" alt="CAFMi">
		                   <small>CENTRI ASSISTENZA FISCALE AUTORIZZATI MILANO</small>
		            </span>
		       </a>
 
 
		         <div class="collapse navbar-collapse" id="navbarNav">
		            <ul class="navbar-nav ms-auto"> 
 
		                <li class="nav-item">
		                    <a class="nav-link" href="/cafmi/prenota">Prenota Appuntamento</a>
		                </li> 
 
		                <li class="nav-item dropdown">
		                    <a class="nav-link" id="navbarLightDropdownMenuLink" data-bs-toggle="dropdown"> Servizi <ion-icon name="chevron-down-outline"></ion-icon></a>
		                    <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
		                        <li><a class="dropdown-item" href="/cafmi/pagine/jsp/permesso.jsp">Permesso soggiorno</a></li> 
		                        <li><a class="dropdown-item" href="/cafmi/pagine/jsp/ricongiungimento.jsp">Ricongiungimento familiare</a></li> 
		                        <li><a class="dropdown-item" href="/cafmi/pagine/jsp/cittadinanza.jsp">Cittadinanza</a></li>
		                        <li><a class="dropdown-item" href="/cafmi/pagine/jsp/SPID.jsp">SPID</a></li>
		                    </ul>
		                </li>
 
		                <li class="nav-item">
		                    <a class="nav-link click-scroll" href="/cafmi/home#info">I nostri centri</a>
		                </li>
 
 
		                <li class="nav-item">
		                    <a class="nav-link click-scroll" href="/cafmi/home#info">Contattaci</a>
		                </li>
 
 
                           <% int ruolo = (int)session.getAttribute("ruolo"); %>
                           	<%switch (ruolo) {
                           	case 0: %>
	                            <li class="nav-item dropdown">
	                                <a class="nav-link click-scroll" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"><ion-icon name="person-circle-outline"></ion-icon> Ciao, <% String cliente = (String)session.getAttribute("nome");out.print(cliente);%>  <ion-icon name="chevron-down-outline"></ion-icon></a>
	                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
	                                	<li><a class="dropdown-item" href="/cafmi/up_pass_cli">Modifica dati</a></li>
	                                    <hr>
	                                    <li><a class="dropdown-item" href="/cafmi/logout">Logout<ion-icon name="log-out-outline"></ion-icon></a></li> 
	                                </ul>
	                            </li>
	                            
	                          <% break;
	                          case 1: %>
	                            <li class="nav-item dropdown">
	                                <a class="nav-link click-scroll" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"><ion-icon name="person-circle-outline"></ion-icon> Ciao, <% String dipendente = (String)session.getAttribute("nome");out.print(dipendente);%>  <ion-icon name="chevron-down-outline"></ion-icon></a>
	                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink"> 
	                                    <li><a class="dropdown-item" href="/cafmi/dipendente">Pannello Dipendente</a></li>    
	                                    <hr>
	                                    <li><a class="dropdown-item" href="/cafmi/logout">Logout<ion-icon name="log-out-outline"></ion-icon></a></li> 
	                                </ul>
	                            </li> 
	                            
	                           <% break;
	                           case 2: %>
	                            <li class="nav-item dropdown">
	                                <a class="nav-link click-scroll" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"><ion-icon name="person-circle-outline"></ion-icon> Ciao, <% String admin = (String)session.getAttribute("nome");out.print(admin);%>  <ion-icon name="chevron-down-outline"></ion-icon></a>
	                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink"> 
	                                    <li><a class="dropdown-item" href="/cafmi/dirigente">Pannello Dirigente</a></li>
	                                    <hr>
	                                    <li><a class="dropdown-item" href="/cafmi/logout">Logout<ion-icon name="log-out-outline"></ion-icon></a></li> 
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
    <section class="appointment-section">
        <div class="container bg-light">
        
            <div class="d-flex justify-content-center align-items-center h-100">            
            <img src="../images/spid.png" alt="ricongiungimento familiare">             
            </div>
            
            <!-- &#39;&#39;; &#232&#232; &#242;&#242; &#224;&#224; €&#128; ù &#249; -&#150; -->
            
               <h1>SPID</h1>
           <h3>Rilascio credenziali SPID</h3>
           <p>Se hai bisogno di aiuto per il rilascio della tua identit&#224; digitale SPID puoi rivolgerti a oltre 600 sportelli CAF CISL in tutta Italia, ti assisteremo per la tua registrazione in collaborazione con Lepida, una societ&#224; in house a totale ed esclusivo capitale pubblico, accreditata da AgID come Gestore di identit&#224; digitali SPID. Il servizio &#232 erogato su appuntamento, da fissare sul sito, contattando le sedi provinciali o il numero verde gratuito 800800730.
                Per gli iscritti CISL l&#39;assistenza per lo SPID &#232 gratuita!
           </p> 
           
           <hr>    
                
           <h3> Cos&#39;&#232 SPID</h3>
           <p>SPID &#232 il Sistema Pubblico di Identit&#224; Digitale che permette a cittadini e imprese di accedere con un&#39;unica identit&#224; digitale ai servizi online di pubbliche amministrazioni e privati che sono parte del sistema SPID.
                L&#39;identit&#224; SPID &#232 costituita da credenziali con caratteristiche differenti in base al livello di sicurezza richiesto per l&#39;accesso al servizio.
                Esistono tre livelli di identit&#224; SPID, ognuno dei quali corrisponde ad un diverso livello di sicurezza.
                Livello 1: permette l&#39;accesso ai servizi con nome utente e password.
                Livello 2: permette l&#39;accesso ai servizi con
                   - nome utente e password insieme ad un codice temporaneo (OTP) inviato via sms o utilizzando APP mobile dedicata LepidaID
                   -  inquadrando il QR Code presente sulla pagina di login utilizzando APP mobile dedicata LepidaID
                Livello 3: permette l&#39;accesso ai servizi con nome utente e password e l&#39;utilizzo di un dispositivo di accesso.
            </p>   
                
            <hr>    
                                
            <h3>Rilascio credenziali SPID</h3>
           	<p>Se hai bisogno di aiuto per il rilascio della tua identit&#224; digitale SPID puoi rivolgerti a oltre 600 sportelli CAF CISL in tutta Italia, ti assisteremo per la tua registrazione in collaborazione con Lepida, una societ&#224; in house a totale ed esclusivo capitale pubblico, accreditata da AgID come Gestore di identit&#224; digitali SPID. Il servizio &#232 erogato su appuntamento, da fissare sul sito, contattando le sedi provinciali o il numero verde gratuito 800800730.
               Per gli iscritti CISL l&#39;assistenza per lo SPID &#232 gratuita!
           	</p>
                
           	<hr>     
                
            <h3>Come ottenerlo</h3>
            <p>La registrazione avviene in due fasi: <br> 
            
                1) Puoi rivolgerti direttamente alla sede o registrarti in autonomia sul sito Lepida  (cliccare su registrati e seguire la procedura guidata). <br>
                2) Prenota l&#39;appuntamento per l&#39;identificazione/riconoscimento della persona interessata attraverso documento di identit&#224; e tessera sanitaria avviene presso gli sportelli CAF CISL, che  procedono ai controlli necessari e all&#39;attivazione dell&#39;identit&#224; digitale SPID LepidaID.<br>
                
                La prima fase, pu&#242; essere svolta in autonomia da parte del richiedente o direttamente in sede CAF con l&#39;assistenza dell&#39;operatore mentre la seconda sar&#224; svolta direttamente dall&#39;operatore CAF.
                
                Per richiedere e ottenere le credenziali SPID, bisogna essere maggiorenni e possedere:
                <ul>
                
                <li>  un indirizzo e-mail; </li>
                 <li> il numero di telefono del cellulare usato normalmente;</li>
                 <li> un documento di identit&#224; valido (uno tra: carta di identit&#224;, passaporto, patente);</li>
                 <li> Tessera sanitaria con il codice fiscale.</li>
                </ul>
                <br>
            </p>  
            
            
            </div> <!-- CHIUDE DIV MAIN -->
	</section>
</main>



<!-- FOOTER JSP --> 
<footer class="site-footer">
<div class="container">
    <div class="row">
        <div class="col-lg-3 col-12 mb-4">
            <a href="/cafmi/home" class="site-footer-link">
            <img src="../../landing/images/CAFMi-Logo.png" class="logo img-fluid" alt=""></a>
        </div>

         <div class="col-lg-4 col-md-6 col-12 mx-auto">
            <h5 class="site-footer-title mb-3 text-danger" href="/cafmi/home">CAFMi</h5>

            <p class="text-white d-flex mb-2">                            
                <a href="/cafmi/prenota" class="site-footer-link">Prenota appuntamento</a>
            </p>

            <p class="text-white d-flex">                        
                <a href="/cafmi/home#info" class="site-footer-link">Contattaci </a>
            </p>

            <p class="text-white d-flex mt-3">
                <a href="/cafmi/home#info" class="site-footer-link">I nostri centri </a> 
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

<!-- ANIMATED ICONS -->
	<script src="https://cdn.lordicon.com/fudrjiwc.js"></script>



    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/click-scroll.js"></script>
    <script src="js/counter.js"></script>
    <script src="js/custom.js"></script>
    
    <!-- JS jspdf -->
    <script src="../js/pdf.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
    
    <!-- ICONS -->
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
     
    </body>
 </html>    