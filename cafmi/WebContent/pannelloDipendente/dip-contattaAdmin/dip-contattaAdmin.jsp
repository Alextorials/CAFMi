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
        <title>CAFMi | Contatta Admin</title>

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
              <img src="pannelloDipendente/dip-contattaAdmin/img/logo.png" alt="logo" style="width:60px;">
            </a>
            
            <!-- Links -->
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link text-success" href="dipendente"><h3><b>PANNELLO DIPENDENTE</b></h3></a>
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
						
						<form action="admin_message" method="post">		
		                        <div class="form-group">
		                            <p class="text-center"><b>PROMEMORIA:</b> <br>
		                            In caso di richiesta di permesso di malattia, comunicare anche il codice di protocollo malattia fornitovi dal proprio dottore.</p>
		                        </div>
		
		
		                        <div class="form-group">
		                          <label for="exampleFormControlSelect1">Argomento</label>
		                          <select class="form-control" id="exampleFormControlSelect1" name="argomento" value="">
		                            <option selected>Scegli argomento...</option>
		                            <option>Richiedi ferie / permessi</option>
		                            <option>Richiedi permesso di malattia</option>
		                            <option>Altro</option>
		                          </select>
		                        </div>
		                        <br>
		                        <div class="form-group">
		                          <label for="exampleFormControlTextarea1">Messaggio</label>
		                          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="messaggio" value=""></textarea>
		                        </div>
		                        <br>
		                        <button type="submit" class="btn btn-success">INVIA</button>
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