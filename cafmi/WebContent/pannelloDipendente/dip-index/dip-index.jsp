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
        <title>CAFMi | Pannello Dipendente</title>

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
        </nav>  <!-- FINE NAVBAR -->

        <!-- Indice -->
        <h1>&nbsp</h1>
        <h1>&nbsp</h1>
        
        <div id="principale">
        <section class="appointment-section">
            <div class="container justify-content-center">
                <!-- CONTENUTO-->
                <div class="row gx-lg-5">
                
                    <% int codice_cliente = (int)session.getAttribute("id");%>
                    
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-success bg-gradient text-white rounded-3 mb-4 mt-n4"><a href="timbra"><i class="bi bi-watch"></i></a></div>
                                <h2 class="fs-4 fw-bold">Timbra entrata / uscita</h2>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-success bg-gradient text-white rounded-3 mb-4 mt-n4"><a href="lista_timbrature"><i class="bi bi-ui-checks"></i></a></div>
                                <h2 class="fs-4 fw-bold">Visualizza timbrature</h2>
                            </div>
                        </div>
                    </div>
					
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-success bg-gradient text-white rounded-3 mb-4 mt-n4"><a href="view_dip"><i class="bi bi-person-circle"></i></a></div>
                                <h2 class="fs-4 fw-bold">Visualizza i propri dati</h2>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-success bg-gradient text-white rounded-3 mb-4 mt-n4"><a href="lista_appuntamenti"><i class="bi bi-calendar-event"></i></a></div>
                                <h2 class="fs-4 fw-bold">Visualizza appuntamenti prenotati</h2>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-success bg-gradient text-white rounded-3 mb-4 mt-n4"><a href="admin_form"><i class="bi bi-pencil-square"></i></a></div>
                                <h2 class="fs-4 fw-bold">Contatta l'amministrazione</h2>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-success bg-gradient text-white rounded-3 mb-4 mt-n4"><a href="up_pass"><i class="bi bi-person-bounding-box"></i></a></div>
                                <h2 class="fs-4 fw-bold">Modifica account</h2>
                            </div>
                        </div>
                    </div>
                  

                </div>
            </div>
            
                     
        </section>
        </div>

      <!-- Bootstrap core JS-->
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 
   </body>
</html>