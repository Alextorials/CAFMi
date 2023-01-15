<!doctype html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- FAVICON -->
    <title>CAFMi | Permesso di soggiorno</title>
    <link rel="icon" type="image/x-icon" href="../../landing/images/CAFMi-Logo.png">

    <!-- CSS FILES -->
    <link href="../../landing/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/pagine.css" rel="stylesheet">
<!-- table -->
<style>
table, th, td {
  border: 1px solid black;
}
</style>
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
    <section class="appointment-section ">
        <div class="container bg-light">
        
            <div class="d-flex justify-content-center align-items-center h-100">            
            <img src="../images/residentcard.png" alt="permesso"> 
            </div>
            
            
            <h1>PERMESSO DI SOGGIORNO</h1>

			<h4>Che cos&#39;&#232; il permesso di soggiorno?</h4>
            Il permesso di soggiorno &#232; un documento che attesta la regolarit&#224; della presenza di una persona straniera in
            Italia e viene rilasciato, su presentazione del visto di ingresso e di altri documenti che elenchiamo sotto,
            per motivi di lavoro subordinato, stagionale, autonomo, per ricongiungimento familiare, studio, cure
            mediche, richiesta di asilo, etc. Il permesso di soggiorno di lunga durata (superiore a 3 mesi) d&#224; diritto a
            fissare la residenza in Italia, ottenere la carta di identit&#224;, usufruire dell&#39;assistenza sanitaria,
            dell&#39;alloggio, dello studio e di tutta una serie di misure di integrazione sociale a livello locale.

			<hr>

            <h4>Per quali motivi pu&#242; essere richiesto un permesso di soggiorno?</h4>
             I motivi per i quali pu&#242; essere richiesto un permesso di soggiorno sono i seguenti:
            <ul>
            <li>ai cittadini comunitari soggiornanti lungo periodo in Italia per lavoro subordinato; </li>
            <li>ai cittadini comunitari soggiornanti lungo periodo in Italia per lavoro autonomo;</li>
            <li>per motivi di famiglia;</li>
            <li>per attesa di occupazione;</li>
            <li>per motivi religiosi;</li>
            <li>per riacquisto della cittadinanza italiana;</li>
            <li>per motivi di studio: gli stranieri possono studiare in Italia ma per farlo hanno bisogno di uno specifico
            permesso di soggiorno.</li>          
            </ul>
            
            <hr>

            <h4> Quanto dura un permesso di soggiorno?</h4>
            La durata del permesso di soggiorno dipende dal motivo dello stesso, ad esempio dalla durata del rapporto di
            lavoro o del permesso del familiare che provvede al mantenimento. Il documento &#232; generalmente rilasciato
            entro 60 giorni dalla richiesta.

			<hr>	

            <h4>Quanto costa un permesso di soggiorno?</h4>
            Per ogni richiesta di rilascio e di rinnovo del permesso di soggiorno &#232; previsto il versamento di un
            contributo sul soggiorno correlato alla durata di validit&#224; del permesso. L&#39;importo varia come di seguito
            riportato:
            
            
         
            <table style="width:100%" >
            <tr>

            <th>Durata</th> <th>Importo</th>
             </tr>
            
                <tr><td>Da 3 mesi a 1 anno 40 &#8364; </td> 
                <td>30,46 &#8364; per permesso di soggiorno elettronico</td>
                </tr>
                <tr><td>Da 1 anno a 2 anni 50 &#8364; </td><td>30,46 &#8364; per permesso di soggiorno elettronico </td></tr>
                <tr><td>Ue per soggiornanti lungo periodo</td>   <td> 100 &#8364; + 30,46 &#8364; per permesso di soggiorno elettronico</td>
                <tr><td>per lavoro altamente specializzato</td>   <td> 100 &#8364; + 30,46 &#8364; per permesso di soggiorno elettronico</td>
                <tr><td>per trasferimenti intra-societari</td>  <td> 100 &#8364; + 30,46 &#8364; per permesso di soggiorno elettronico</td>
           </tr>
			
			</table>

			<hr>

            <h4> Chi &#232; esente dal contributo?</h4>
            Il contributo non &#232; dovuto per i minori di 18 anni, i richiedenti asilo, i titolari di protezione
            internazionale, da chi richiede conversione, da chi deve aggiornare o richiedere un duplicato del permesso
            di soggiorno, dagli stranieri che fanno ingresso in Italia per cure mediche. &#200; in ogni caso dovuto il
            pagamento di 30,46 &#8364; per il rilascio del permesso di soggiorno elettronico (Pse).

    

		<hr>


 <!--*****************************
FORM PERMESSO SOGGIORNO            
********************************* -->

         
	 
		<div class="form">
		<div>
		<form method="post" class="">
          <h4 class="title" style="color: #FBFBFB; text-align: center;">Richiesta permesso di soggiorno</h4>
          <br>
          <h6 class="subtitle" style="color: rgb(255, 250, 241); text-align: center;">Compila con i dati richiesti</h6>
          <br>
                         
                         <div class="form-floating mb-3">
	 						 <input type="text" class="form-control" id="nome" placeholder="Nome" required>
	  						 <label for="floatingInput">Nome</label>
						 </div>
						 
						 <div class="form-floating mb-3">
	 						 <input type="text" class="form-control" id="cognome" placeholder="Cognome" required>
	  						 <label for="floatingInput">Cognome</label>
						 </div>
						 
						  <div class="form-floating mb-3">
	 						 <input type="text" class="form-control" id="datanascita" placeholder="Data di Nascita" required>
	  						 <label for="floatingInput">Data di nascita</label>
						 </div>
						 
						 <div class="form-floating mb-3">
	 						 <input type="text" class="form-control" id="luogonascita" placeholder="Luogo di Nascita" required>
	  						 <label for="floatingInput">Luogo di nascita</label>
						 </div>
		<p class="text-black">Sesso<p>
                        <div class="form-check">
						  <input class="form-check-input" type="radio" name="sesso" value="Maschio" checked>
						  <label class="form-check-label" for="flexRadioDefault1">
						  Maschio
						  </label>
						</div>
						 <div class="form-check">
						  <input class="form-check-input" type="radio" name="sesso" value="Femmina">
						  <label class="form-check-label" for="flexRadioDefault1">
						   Femmina
						  </label>
						</div>
                      
                        
                        <br>
                        
                        <div class="form-floating mb-3">
	 						 <input type="text" class="form-control" id="residenza" placeholder="Residenza" required>
	  						 <label for="floatingInput">Citt&#224; di residenza</label>
						</div>
						
						<div class="form-floating mb-3">
	 						 <input type="text" class="form-control" id="indirizzo" placeholder="Indirizzo" required>
	  						 <label for="floatingInput">Indirizzo e numero civico</label>
						</div>
						
						<div class="form-floating mb-3">
	 						 <input type="text" class="form-control" id="telefono" placeholder="telefono" required>
	  						 <label for="floatingInput">Telefono</label>
						</div>
						
						<div class="form-floating mb-3">
	 						 <input type="email" class="form-control" id="email" placeholder="E-mail" required>
	  						 <label for="floatingInput">E-mail</label>
						</div>
  
 
 						<p class="text-black">Documento<p>
                        <div class="form-check">
						  <input class="form-check-input" type="radio" name="documento" value="Passaporto" checked>
						  <label class="form-check-label" for="flexRadioDefault1">
						   Passaporto
						  </label>
						</div>
						 <div class="form-check">
						  <input class="form-check-input" type="radio" name="documento" value="Altro">
						  <label class="form-check-label" for="flexRadioDefault1">
						   Altro
						  </label>
						</div>
                        
                        <br>
                       
                       
                       <div class="form-floating mb-3">
	 						 <input type="text" class="form-control" id="numero" placeholder="NumeroDocumento" required>
	  						 <label for="floatingInput">Numero Documento</label>
						</div>
						
 						<div>
                        <textarea id="messaggio" name="messaggio" rows="5" cols="70" placeholder="Inserisci un messaggio"></textarea>
                    	</div>
                    	
                        <button onclick="creaPdf()" type="button">Scarica</button>
                        
                  </form>
                  
			</div> <!-- CHIUDE DIV DEL FORM -->
			
			
 		 </div> <!-- CHIUDE DIV DELLA SEZIONE FORM -->
 		 
 		 <br>
	</section>
	
</main>










<!-- FOOTER JSP--> 
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