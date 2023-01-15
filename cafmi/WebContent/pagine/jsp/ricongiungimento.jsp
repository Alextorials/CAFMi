<!doctype html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- FAVICON -->
    <title>CAFMi | Ricongiungimento familiare</title>
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
            <img src="../images/family.png" alt="ricongiungimento familiare">             
            </div>
            
            <!-- '&#39;; è&#232; ò&#242; &#224;&#224; €&#128; ù &#249; -&#150; -->
            
                <h1>RICONGIUNGIMENTO FAMILIARE</h1>
            <h3>Che cos&#39;&#232; il ricongiungimento familiare?</h3>
           <p> Lo straniero che possiede il permesso di soggiorno Ue per soggiornanti di lungo periodo o un permesso di soggiorno della durata di almeno 1 anno per lavoro subordinato o autonomo, per studio, asilo, protezione sussidiaria, motivi religiosi o familiari, pu&#242; chiedere il ricongiungimento familiare con i parenti residenti all&#39;estero.
<hr>
<h3>Chi pu&#242; richiedere il ricongiungimento familiare? </h3>
Lo straniero residente in Italia, titolare di carta di soggiorno o di permesso di soggiorno in corso di validit&#224;, di durata non inferiore ad un anno, rilasciato per i seguenti motivi:
<ul> <li>lavoro subordinato; </li>
<li>lavoro autonomo; </li>
<li>asilo politico; </li>
<li>studio; </li>
<li>motivi religiosi; </li>
<li>motivi di famiglia. </li>
</ul>
<hr>
<h4>Ricongiungimento familiare: i requisiti </h4>
Per ottenere il ricongiungimento familiare &#232; necessario soddisfare i seguenti requisiti:

disponibilit&#224; di un alloggio conforme ai requisiti igienico-sanitari e di idoneit&#224; abitativa, accertati dai competenti uffici comunali;
reddito minimo annuo che deve derivare da fonti lecite e non deve essere inferiore all&#39;importo annuo dell&#39;assegno sociale, aumentato della met&#224; dell&#39;importo dello stesso per ogni familiare da ricongiungere.
<hr>


<h4>I destinatari del ricongiungimento familiare sono i seguenti:</h4>
<ul>
<li>coniuge (o partner unito civilmente)&#150; non legalmente separato&#150; di et&#224; non inferiore ai 18 anni; </li>
<li>figli minori; </li>
<li>figli maggiorenni a carico con invalidit&#224; totale; </li>
<li>genitori a carico che non hanno altri figli nel Paese di origine o di provenienza, oppure nel caso di genitori ultrasessantacinquenni, se gli altri figli sono impossibilitati al loro sostentamento per gravi e documentati motivi di salute; </li>
<li>genitore naturale, se il richiedente &#232; minorenne e regolarmente soggiornante in Italia con l&#39;altro genitore. </li>
</ul>
<hr>
<h3>Quali sono i documenti per effettuare la domanda di ricongiungimento familiare?</h3>
I documenti necessari per effettuare la domanda di ricongiungimento familiare sono:

<ul>
<li>SPID (se non l&#39;hai ancora attivato, richiedi il servizio SPID Online) </li>
<li>Fotocopia del permesso di soggiorno- carta d&#39;identita- codice fiscale</li>
<li>Fotocopia del passaporto tuo e del familiare</li>
<li>Certificato di famiglia o autocertificazione</li>
<li>Certificato di vedovanza (solo se il familiare &#232; vedovo) - se over 65 serve l&#39;impegno alla stipulazione della polizza assicurativa</li>
<li>Idoneit&#224; alloggiativa rilasciata dal Comune di residenza</li>
<li>Documentazione attestante il reddito CUD, 730, Modello Unico</li>
<li>Modello S2 se sei ospite o affituario e devi ricongiungere un familiare</li>
<li>Copia contratto di affitto o atto di compravendita dell&#39;alloggio</li>
<li>Modello S1 se sei ospite e devi ricongiungere solo il figlio minore di 14 anni</li>
<li>Marca da bollo 16,00&#128;</li>
</ul>
In base alla tipologia di impiego sono necessarie ulteriori informazioni e documenti.

<ol>Per lavoro subordinato:

<li>Modello S3 se sei un lavoratore subordinato
<li>UNILAV comunicazione del lavoro
<li> Tre ultime buste paga
</ol>

<ol>Per lavoro autonomo:
<li>Visura camerale
<li>Bilancino
<li>Tessera professionale o documento d&#39;identit&#224; del commercialista.

*Per richiedenti ASILO- sussidiario: Non &#232; richiesta la disponibilit&#224; di un reddito o di un alloggio.

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
    
    <!-- JS jspdf -->
    <script src="../js/pdf.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
    
    <!-- ICONS -->
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
     
    </body>
 </html>    