<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "data.UserDAO" %>
<!DOCTYPE html>
<html lang="it">
    <head>
    		<%String nome = (String) session.getAttribute("nome");
		String cognome = (String) session.getAttribute("cognome");%>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>CAFMi | Timbra</title>

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
			<img src="pannelloDipendente/dip-timbra/img/logo.png" alt="logo" style="width: 60px;">
		</a>

		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link text-success" href="dipendente"><h3>
						<b>PANNELLO DIPENDENTE</b>
					</h3></a>
			</li>
		</ul>


		<!-- Navbar Search-->
		<div
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<p id="nomePannello" class="text-light">
					Accesso:
					<%
				out.print(cognome);
				%>
					<%
					out.print(nome);
					%>
				</p>
			</div>
		</div>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="home">Home</a></li>
					<li><a class="dropdown-item" href="logout">Logout</a></li>
				</ul></li>
		</ul>
	</nav> <!-- FINE NAVBAR -->


	<!-- TIMBRA -->
	<div id="principale">
	<section class="appointment-section">
	<div class="container justify-content-center">
		<div class="row justify-content-center">
			<div class="col-lg-5">
				<div
					class="card shadow-lg border-0 rounded-lg mt-5 bg-light text-dark">
					<div class="card-header">
						<h3 class="text-center font-weight-light my-4">TIMBRA
							ENTRATA/USCITA</h3>
					</div>
					<div class="card-body bg-light text-dark">
						<form action="timbrato" method="post">
							<div class="form-floating mb-3 text-center">
								<h3>DATA: </h3>
								<h2><%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy");%></h2>
								<h2><input class="form-floating mb-3 text-center" placeholder="<% out.print(df.format(new java.util.Date())); %>" name="date" readonly value="<%=df.format(new java.util.Date())%>"></h2>
							</div>
							<div class="form-floating mb-3 text-center">
								<h3>ORA: </h3>
								<h2><%java.text.DateFormat tf = new java.text.SimpleDateFormat("HH:mm");%></h2>
								<h2><input class="form-floating mb-3 text-center" placeholder="<% out.print(tf.format(new java.util.Date())); %>" name="time" readonly value="<%=tf.format(new java.util.Date())%>"></h2>
							</div>
							<div class="form-floating mb-3 text-center">
								<h3>Dipendente: </h3>
								<h2><input class="form-floating mb-3 text-center" placeholder="<% out.print(cognome); %>" name="cognome" readonly value="<%=cognome%>"></h2><br>
								<h2><input class="form-floating mb-3 text-center" placeholder="<% out.print(nome); %>" name="nome" readonly value="<%=nome%>"></h2>
							</div>
							<div
								class="d-flex align-items-center justify-content-between mt-5 mb-0">
								<button class="btn btn-success" type="submit" name="entrata" value="true">TIMBRA ENTRATA</button> 
								<button class="btn btn-danger" type="submit" name="uscita" value="true">TIMBRA USCITA</button>
							</div>
						</form>
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