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
             <div class="collection"  id="tier-1">
    <a href="javascript:void(0);" class="collection-item teal-text" id="-result"></a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="dept-result"></a> 
    <a href="javascript:void(0);" class="collection-item teal-text" id="ward-result">default</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="available-result"></a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="gender-result"></a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="amount-result">Amount to be paid:   Rs 500</a>
    </div>
        
         <div class="row">
        <div>
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Please bring a print out of this receipt with you</span>
            </div>
            <div class="card-action">
              
              <a href="javascript:void(0);"  id="p2p">PROCEED TO PAYMENT</a>
            </div>
          </div>
        </div>
      </div>

    </div>
     
        <table>
        <thead>
          <tr>
              <th data-field="id">Name</th>
              <th data-field="name">Item Name</th>
              <th data-field="price">Item Price</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>Alvin</td>
            <td>Eclair</td>
            <td>$0.87</td>
          </tr>
          <tr>
            <td>Alan</td>
            <td>Jellybean</td>
            <td>$3.76</td>
          </tr>
          <tr>
            <td>Jonathan</td>
            <td>Lollipop</td>
            <td>$7.00</td>
          </tr>
        </tbody>
      </table>
        
        
      
       <footer class="page-footer white">
     <div class="footer-copyright teal">
      <div class="container ">
      Made by <a class="orange-text text-lighten-3" href="http://materializecss.com" target="_blank" style="target-new: tab;">Materialize</a>
      </div>
    </div>
  </footer> 

    </body>
</html>