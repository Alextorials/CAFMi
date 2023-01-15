<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "model.Appuntamento" %>
    <%@ page import = "data.bufferAppJSON" %>
    <%@ page import = "java.io.File" %>
<!doctype html>
<html lang="en">
	<% int id = (int) session.getAttribute("id");
	bufferAppJSON bufferApp = new bufferAppJSON();
    String cartella = "C:\\JSON\\buffer_appuntamenti\\";
    File nomefile = new File(id+"_bufferApp.json");
    Appuntamento app = bufferApp.leggiFile(cartella,nomefile);
    String nome = app.getNome();
    String cognome = app.getCognome();
    String email = app.getEmail();
    String tel = app.getNumero_telefono();
    String appoint = app.getAppuntamento();
    String desc = app.getDescrizione();
    String data = app.getData();
    String ora = app.getOra();%>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
 
		<!-- FAVICON -->
        <title>CAFMi | Riepilogo appuntamento</title>
        <link rel="icon" type="image/x-icon" href="landing/images/CAFMi-Logo.png">
		
        <!-- CSS FILES --> 
        <link href="servizioappuntamento/css/bootstrap.min.css" rel="stylesheet">
        <link href="servizioappuntamento/css/templatemo-kind-heart-charity.css" rel="stylesheet"> 
 
    </head>
 
 
 
    <body> 
 
		<!-- NAVBAR -->
		<nav class="navbar navbar-expand-lg bg-light shadow-lg">
		    <div class="container">
 
		     <a class="navbar-brand" href="home">
		            <img src="servizioappuntamento/images/CAFMi-Logo.png" class="logo img-fluid" alt="CAFMi">
		            <span>
		                <img src="servizioappuntamento/images/CAFMi-Banner.png" class="logo img-fluid" alt="CAFMi">
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
		                    <ul class="dropdown-menu">
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
	                    			<a class="nav-link custom-btn custom-border-btn btn" href="/cafmi/login">Accedi</a>
	                			</li>                      
	                        
                           	<% break;
                           	} %>
                           	
                        </ul>
                    </div>
                </div>
            </nav>
            
        
        <!-- CONTENUTO -->
        <main>

           <section class="prenota">
                <div class="section-overlay"></div>
                <div class="container">
                
                    <div class="row">      
                        <div class="col-lg-6 col-12 mx-auto">
                                 
                                  
                                
                            
                                <form action="appuntamento_confermato" class="custom-form donate-form"  role="form" method="post">
                                    <h3 class="mb-4">Il tuo appuntamento</h3> 
                                  <h5 class="mb-3">Riepilogo Dettagli</h5> 

                                <div class="row">
                                    <fieldset>
                                      <label for="first_name">Nome: </label>
                                      <input type="text" id="name" name="first_name" placeholder="" required value="<%=nome%>" readonly> <br>
                                      
                                      
                                      <label for="last_name">Cognome: </label>
                                      <input type="text" id="name" name="last_name" placeholder="" required value="<%=cognome%>" readonly>  <br>
                                      
                                      <label for="mail">Email: </label>
                                      <input type="text" id="name" name="mail" placeholder="" required value="<%=email%>" readonly>  <br>
                                   
                                      <label for="tel">Numero di telefono: </label>
                                      <input type="text" id="name" name="tel" placeholder="" required value="<%=tel%>" readonly>  <br>
                                      
                                      <label for="appoint">Appuntamento per: </label>
                                      <input type="text" id="name" name="appoint" placeholder="" required value="<%=appoint%>"readonly>  <br>
                                      
                                      <label for="desc">Descrizione: </label>
                                      <input type="text" id="name" name="desc" placeholder="" required value="<%=desc%>" readonly>  <br>

                                      <label for="date">Data: </label>
                                      <input type="text" id="name" name="date" placeholder="" required value="<%=data%>" readonly>  <br>
                                      
                                      <label for="time">Orario: </label>
                                      <input type="text" id="name" name="time" placeholder="" required value="<%=ora%>" readonly>  <br>
                                 
                                    </fieldset>
                              
                                                                     
                                    
                                   <button type="submit" class="form-control mt-4">Conferma appuntamento</button>
                                   
                                   <div>
                                   <br>
                                   <br>
                                   <p class="mb-5 pb-lg-2" style="color: #393f81;">Vuoi modificare qualcosa? 
									<a href="/cafmi/prenota">Clicca qui.</a></p>
                                    <div>
                                    
                                <div>
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
                <a href="logout#info" class="site-footer-link">Contattaci </a>
            </p>

            <p class="text-white d-flex mt-3">
                <a href="logout#info" class="site-footer-link">I nostri centri </a> 
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
	<script src="landing/js/jquery.min.js"></script>
	<script src="landing/js/bootstrap.min.js"></script>
	<script src="landing/js/jquery.sticky.js"></script>
	<script src="landing/js/counter.js"></script>
	<script src="landing/js/custom.js"></script>
	
	<!-- ICONS -->
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	
</body>
</html>