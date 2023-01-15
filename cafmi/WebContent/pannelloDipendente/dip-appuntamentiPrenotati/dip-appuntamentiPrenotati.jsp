<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "data.UserDAO" %>
    <%@ page import = "com.google.gson.Gson" %>
    <%@ page import = "model.Appuntamento" %>
    <%@ page import = "data.appuntamentoJSON" %>
    <%@ page import = "java.io.File" %>
    <%@ page import = "java.util.List" %>
    <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="it">
    <head>
    		<% String nome = (String)session.getAttribute("nome"); String cognome = (String)session.getAttribute("cognome"); %>
    		<% Gson gson = new Gson();
    		appuntamentoJSON appoint = new appuntamentoJSON();
    		List<Appuntamento> ListaApp = new ArrayList<Appuntamento>();
    		String cartella = "C:\\JSON\\list_appuntamenti\\";
    		File nomefile = new File("appuntamenti.json");
    		ListaApp = appoint.leggiFile(cartella,nomefile);%>
    		
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>CAFMi | Agenda</title>

        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="landing/images/CAFMi-Logo.png">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="pannelloDipendente/css/stile-principale.css" rel="stylesheet" />
        <link href="pannelloDipendente/css/dip.css" rel="stylesheet" />
        
        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

</style>
    </head>

    <body>
 <main>  
        
        <!-- Navbar-->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="dipendente" style="padding-left: 50px;">
              <img src="pannelloDipendente/dip-index/img/logo.png" alt="logo" style="width:60px;">
            </a>
            
            <!-- Links -->
            <ul class="navbar-nav">
              <li class="nav-item">
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
     
        <!-- =============================================== -->
     
        <!-- TABELLA -->
        <main>
        <section class="appointment-section">
        <div class="container justify-content-center mt-3">
            <div class="row justify-content-center bg-light">
            
                <div class="col-sm-7 text-center">
                    <h2>Visualizza appuntamenti</h2>
                </div>

         <table class="table table-striped">
                    <thead>
                      <tr>
                      	<th scope="col">Nome</th>
                      	<th scope="col">Cognome</th>
                      	<th scope="col">Email</th>
                      	<th scope="col">Telefono</th>
                      	<th scope="col">Dipartimento</th>
                      	<th scope="col">Descrizione</th> 
                        <th scope="col">Data</th>
                        <th scope="col">Ora</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                      	<th scope="row"><% for (Appuntamento app : ListaApp){out.print(app.getNome());%><br><br><br><%}%></th>
                        <th scope="row"><% for (Appuntamento app : ListaApp){out.print(app.getCognome());%><br><br><br><%}%></th>
                        <th scope="row"><% for (Appuntamento app : ListaApp){out.print(app.getEmail());%><br><br><br><%}%></th>
                        <th scope="row"><% for (Appuntamento app : ListaApp){out.print(app.getNumero_telefono());%><br><br><%}%></th>
                        <th scope="row"><% for (Appuntamento app : ListaApp){out.print(app.getAppuntamento());%><br><br><br><%}%></th>
                        <th scope="row"><% for (Appuntamento app : ListaApp){out.print(app.getDescrizione());%><br><%}%></th>
                        <th scope="row"><% for (Appuntamento app : ListaApp){out.print(app.getData());%><br><br><%}%></th>
                        <th scope="row"><% for (Appuntamento app : ListaApp){out.print(app.getOra());%><br><br><br><%}%></th>
                      </tr>
                    </tbody>
                  </table>
            </div>
        </div>
        </section>        
        </main>
 

       <!-- Bootstrap core JS-->
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 
   </body>
</html>