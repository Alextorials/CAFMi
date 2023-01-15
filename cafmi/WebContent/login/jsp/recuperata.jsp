<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
 
		<!-- FAVICON -->
        <title>CAFMi | Password recuperata</title>
        <link rel="icon" type="image/x-icon" href="landing/images/CAFMi-Logo.png">
		
		<!-- BOOTSTRAP -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">	
		
        <!-- CSS FILES --> 
        <link href="landing/css/bootstrap.min.css" rel="stylesheet">
        <link href="login/css/login.css" rel="stylesheet">
        
        </head>
 
 
 
    <body> 
    
    
    
   <!-- NAVBAR -->
<nav class="navbar navbar-expand-lg bg-light shadow-lg">
    <div class="container">
                    
     <a class="navbar-brand" href="/cafmi/logout">
            <img src="landing/images/CAFMi-Logo.png" class="logo img-fluid" alt="CAFMi">
            <span>
                <img src="landing/images/CAFMi-Banner.png" class="logo img-fluid" alt="CAFMi">
                   <small>CENTRI ASSISTENZA FISCALE AUTORIZZATI MILANO</small>
            </span>
       </a>
                       
                                         
         <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto"> 

                <li class="nav-item ms-3">
                    <a class="nav-link custom-btn custom-border-btn btn" href="/cafmi/logout">Home</a>
                </li>
                
            </ul>
        </div>
        
    </div>
</nav>
    
    
            
        
        <!-- CONTENUTO -->       
       <main>	
       
       <section class="login-section">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-light text-black" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div>

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <span class="h1 fw-bold mb-0">Dati corretti</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">La tua password è:</h5>

                  <div class="form-outline mb-4">
                     <% String pass = (String)session.getAttribute("password");%>
         		 <input type="text" name="password" placeholder="Password" id="cf" autocomplete="off" value="<%out.print(pass);%>" readonly>
            	  </div>
            	  
            	  <br>
            	  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Ricordati di copiarla prima di tornare nell'area login.</h5>

                  
                  <div class="pt-1 mb-4">
                    <a href="login">
                    <button class="btn btn-success btn-lg btn-block">Torna in login</button>
                    </a>
                  </div>

                               
                </div>


          </div>
        </div>
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
            <img src="landing/images/CAFMi-Logo.png" class="logo img-fluid" alt="">
        </div>

         <div class="col-lg-4 col-md-6 col-12 mx-auto">
            <h5 class="site-footer-title mb-3 text-danger" href="logout">CAFMi</h5>

            <p class="text-white d-flex mb-2">                            
                <a href="f_login" class="site-footer-link">Prenota appuntamento</a>
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

<div class="site-footer-bottom">
    <div class="container">
        <div class="row">

            <div class="col-lg-6 col-md-7 col-12">
                <p class="copyright-text mb-0">Copyright &copy; 2023 CAFMi (a JAMI70 Project Work) </p>
    
                <p class="copyright-text mb-0">FrontEnd by Jie, Eleonora, Rona</p> 

                <p class="copyright-text mb-0">BackEnd by Maxim, Alex</p>                       	
            </div>
                                    
        </div>
    </div>
</div>
</footer>

<!-- JAVASCRIPT FILES -->
<script src="landing/js/jquery.min.js"></script>
<script src="landing/js/bootstrap.min.js"></script>
<script src="landing/js/jquery.sticky.js"></script>
<script src="landing/js/counter.js"></script>
<script src="landing/js/custom.js"></script>

<!-- JS BOOTSTRAP -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<!-- ICONS -->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>