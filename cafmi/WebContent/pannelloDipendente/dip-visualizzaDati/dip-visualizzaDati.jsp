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
        <title>CAFMi | Visualizza propri dati</title>

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


        <!-- TABELLA -->
        <section class="appointment-section">
        <div class="container">
            <div class="row justify-content-center bg-light mt-3">
                <div class="col-sm-7 text-center">
                    <h2>VISUALIZZA I PROPRI DATI</h2>
                </div>

                <table class="table table-striped">
                    <tbody>
                    <% UserDAO acc = new UserDAO(); 
                		int id1 = (int)request.getAttribute("cod_cliente");%>
                      <tr>
                        <th scope="row">Nome</th>
                        <td><% out.print(acc.selectUser(id1).getNome()); %></td>
                      </tr>
                      <tr>
                        <th scope="row">Cognome</th>
                        <td><% out.print(acc.selectUser(id1).getCognome()); %></td>
                      </tr>
                      <tr>
                        <th scope="row">Codice fiscale</th>
                        <td><% out.print(acc.selectUser(id1).getCodice_fiscale()); %></td>
                      </tr>
                      <tr>
                        <th scope="row">Numero di telefono</th>
                        <td><% out.print(acc.selectUser(id1).getNumero_telefono()); %></td>
                      </tr>
                      <tr>
                        <th scope="row">Indirizzo</th>
                        <td><% out.print(acc.selectUser(id1).getIndirizzo()); %></td>
                      </tr>
                      <tr>
                        <th scope="row">Città</th>
                        <td><% out.print(acc.selectUser(id1).getCitta()); %></td>
                      </tr>
                      <tr>
                        <th scope="row">CAP</th>
                        <td><% out.print(acc.selectUser(id1).getCap_citta()); %></td>
                      </tr>
                      <tr>
                        <th scope="row">Sesso</th>
                        <td><% out.print(acc.selectUser(id1).getSesso()); %></td>
                      </tr>
                      
                    </tbody>
                  </table>

            </div>
        </div>
        </section>

  <!-- Bootstrap core JS-->
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 
   </body>
</html>