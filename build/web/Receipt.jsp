<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>Payment Receipt</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  
  <!-- Javascript functions  -->
  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script> 
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
   <script src="js/Receipt.js"></script>  
  
   
</head>
    <body>
      
        <nav class="waves-effect waves-light btn-large" role="navigation">
    <div class="nav-wrapper container">
      <!-- <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Compatible with your device</a></li>
      </ul> 
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a> -->
    </div>
  </nav> 
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <h1 class="header center dark teal-text">Payment Confirmation Receipt</h1>
      </div>
      </div>
    <div class="container" id="rules">
            <ul class="collection">
      <li class="collection-item" id="patient-name">Alvin</li>
      <li class="collection-item" id="patient-number">Alvin</li>
      <li class="collection-item"id="hosp-result">Alvin</li>
      <li class="collection-item" id="dept-result">Alvin</li>
      <li class="collection-item" id="ward-result">Alvin</li>
      <li class="collection-item" id="gender-result">Alvin</li>
      <li class="collection-item" >Booking Status:  Confirmed</li>
      <li class="collection-item" >Amount Paid:  Rs.500</li>
      <li class="collection-item" >Booking Number:  HDWG 200 201 2257 </li>
      
    </ul>
        
         <div class="row">
        <div
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
                <span class="card-title">An SMS has been sent to your Mobile number.
                    Please produce that SMS to OPD/Emergency counter for your convenience without which locking facility will not be entertained.</span>
            </div>
            <div class="card-action">
              
              <a href="javascript:close_window();"  id="p2p">OK</a>
            </div>
          </div>
        </div>
      </div>

    </div>
     
        
      
       <footer class="page-footer white">
     <div class="footer-copyright teal">
      <div class="container ">
      Made by <a class="orange-text text-lighten-3" href="http://materializecss.com" target="_blank" style="target-new: tab;">Materialize</a>
      </div>
    </div>
  </footer> 

    </body>
</html>