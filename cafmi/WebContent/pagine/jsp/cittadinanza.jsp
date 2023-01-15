<!doctype html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- FAVICON -->
    <title>CAFMi | Cittadinanza</title>
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

<!-- '&#39;; è&#232; ò&#242; à&#224; €&#128; ù &#249; -&#150; -->
<main>
    <section class="appointment-section">
        <div class="container bg-light">
        
            <div class="d-flex justify-content-center align-items-center h-100">            
            <img src="../images/residentcard.png" alt="cittadinanza">             
            </div>
            
             <h1> CITTADINANZA ITALIANA </h1>
            <h3> Che cos&#39;&#232;  la cittadinanza italiana? </h3>
           <p> Il termine cittadinanza indica il riconoscimento, da parte dello Stato, dei diritti civici e politici a un
            cittadino.
              <hr>

            <h4>La cittadinanza italiana pu&#242; essere concessa / ottenuta: </h4>
              <hr>
<ul>
           <li> iure sanguinis cio&#232;  se si nasce o si &#232;  adottati da cittadini italiani; </li>
            <li>allo/a straniero/a che ha prestato servizio, anche all&#39;estero, per almeno 5 anni alle dipendenze dello
            Stato; </il>
            <li>al cittadino/a di uno Stato membro delle Comunit&#224; europee se risiede legalmente da almeno 4 anni nel
            territorio della Repubblica;</il>
           <li> all&#39;apolide che risiede legalmente da almeno 5 anni nel territorio della Repubblica; </li>
            <li>allo/a straniero/a che risiede legalmente da almeno 5 anni nel territorio della Repubblica;</li>
           <li> allo/a straniero/a che ha sposato un/una cittadino/a italiano/a da almeno 2 anni;</il>
           </ul> 
             <hr>
          <h4>  Chi pu&#242; effettuare la richiesta di cittadinanza italiana per residenza?</h4>
            La cittadinanza pu&#242; essere richiesta dagli stranieri che risiedono in Italia da almeno 10 anni (4 anni in
            caso di cittadino comunitario) e sono in possesso di determinati requisiti.

            Quali sono i requisiti per effettuare la domanda di cittadinanza per residenza?
            La domanda pu&#242; essere effettuata da tutti coloro che risiedono legalmente in Italia da almeno 10 anni e che
            rispettano il seguente requisito economico a livello personale o familiare:

            euro 8.263,31 per richiedenti senza persone a carico;
            euro 11.362,05 per richiedenti con coniuge a carico
            Pi&#249; euro 516,00 per ogni ulteriore persona a carico.

            Il reddito da considerare &#232;  quello relativo ai tre anni antecedenti alla domanda di cittadinanza e l&#39;importo
            &#232; annuo.

            Inoltre per l&#39;accettazione della domanda &#232; previsto anche un criterio di "buona condotta" e cio&#232;  l&#39;assenza
            di precedenti penali e carichi pendenti, sia in Italia che in qualsiasi altro Stato.

            Quali sono i documenti ed informazioni necessari per effettuare la domanda di cittadinanza per residenza?
            I documenti e le informazioni necessarie per effettuare la domanda sono:

            SPID (se non l&#39;hai ancora attivato, richiedi il servizio SPID Online)
            Attestato di conoscenza di Lingua Italiana B1 (esonerato in caso di Permesso di soggiorno per lungo periodo
            CE)
            Atto di nascita ( tradotto e legalizzato del paese di origine)
            Certificato penale (tradotto e legalizzato del paese di origine rilasciato non oltre i 6 mesi precedenti
            alla domanda)
            Certificato o autocertificazione delle Stato di famiglia.
            Il modulo di autocertificazione sar&#224; disponibile subito dopo l&#39;acquisto
            Certificato o autocertificazione di residenza per 10 anni consecutivi (il modulo di autocertificazione
            disponibile dopo l&#39;acquisto)
            Copia Marca da bollo 16,00&#128;
            Copia passaporto in corso di validit&#224;
            Copia fronte / retro carta d&#39;identit&#224;
            Copia codice fiscale
            Copia permesso di soggiorno
            Copia del versamento del contributo di 250&#128; sul c/c n.809020 intestato a: Ministero Interno D.L.C.I.
            cittadinanza &#150; con la causale: cittadinanza &#150; contributo di cui all&#39;art. 1 co. 12, legge 15 luglio 2009 n.
            94
            CUD o 730 o Unico per 3 ultimi anni
            Questionario di cittadinanza (disponibile dopo l&#39;acquisto) 

            </p>
            <br>
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
    
   	<!-- ICONS -->
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
     
    </body>
 </html>    