<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "data.UserDAO" %>
<!DOCTYPE html>
<html lang="it">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>CAFMi | Modifica password</title>

        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="landing/images/CAFMi-Logo.png">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        
		<!-- Core theme CSS (includes Bootstrap)-->
        <link href="pannelloDipendente/css/stile-principale.css" rel="stylesheet" />
        <link href="pannelloDipendente/css/dip.css" rel="stylesheet" />
        
    </head>

    <body>

        <!-- Navbar-->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="dipendente" style="padding-left: 50px;">
              <img src="pannelloDipendente/dip-index/img/logo.png" alt="logo" style="width:60px;">
            </a>
            
            <!-- Links -->
            <ul class="navbar-nav">
              <li class="nav-item">
              <% String nome = (String)session.getAttribute("nome"); String cognome = (String)session.getAttribute("cognome"); %>
                <a class="nav-link text-success" href="dipendente"><h3><b>PANNELLO DIPENDENTE</b></h3></a>
              </li>
            </ul>
            
            
            <!-- Navbar Search-->
            <div class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                <p id="nomePannello" class="text-light">Accesso: <%out.print(cognome);%> <%out.print(nome); %></p>
                </div>
            </div>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    		<li><a class="dropdown-item" href="home">Home</a></li>
                        <li><a class="dropdown-item" href="logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        
        
<!-- CARD -->      
   <div id="principale">
	<section class="appointment-section">
	<div class="container justify-content-center">
		<div class="row justify-content-center">
			<div class="col-lg-5">
				<div
					class="card shadow-lg border-0 rounded-lg mt-5 bg-light text-dark">
					<div class="card-header">
						<h3 class="text-center font-weight-light my-4">CONTATTA ADMIN</h3>
					</div>
					<div class="card-body bg-light text-dark">
						
						<form action="Update_pass" method="post">
                        <div class="form-group">
                            <p class="text-center"><b>PROMEMORIA:</b> Puoi autonomamente aggiornare la tua password. <br>
                            Se vuoi aggiornare gli altri dati, per favore contatta l'amministrazione. Grazie!</p>
                        </div>
                        <div class="form-group">
                        <% UserDAO acc = new UserDAO(); 
                		int id2 = (int)session.getAttribute("id");%>
                            <input class="form-control" type="text" placeholder="<% out.print(acc.selectUser(id2).getNome()); %>" readonly>
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="<% out.print(acc.selectUser(id2).getCognome()); %>" readonly>
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="<% out.print(acc.selectUser(id2).getCodice_fiscale()); %>" readonly>
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="<% out.print(acc.selectUser(id2).getNumero_telefono()); %>" readonly>
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="<% out.print(acc.selectUser(id2).getIndirizzo()); %>" readonly>
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="<% out.print(acc.selectUser(id2).getCitta()); %>" readonly>
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="<% out.print(acc.selectUser(id2).getCap_citta()); %>" readonly>
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="<% out.print(acc.selectUser(id2).getSesso()); %>" readonly>
                        </div>
                        <br>
                        <div class="form-group">
                        	Password :
                            <input class="form-control" type="text" placeholder="enter your new password" name="password" value="<% out.print(acc.selectUser(id2).getPassword()); %>">
                        </div>
                        <br>
                        <div class="form-group">
                        	Conferma password :
                            <input class="form-control" type="text" placeholder="re-enter your new password" name="re-password" value="<% out.print(acc.selectUser(id2).getPassword()); %>">
                        </div>
                        <br>
                        <button type="submit" class="btn btn-success">AGGIORNA</button>
                      </form>

					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	</div>       
	
	<br> 
	<br>
        
 <!-- Bootstrap core JS-->
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 
   </body>
</html>