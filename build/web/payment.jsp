<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Payment Site</title>   
        <link rel="stylesheet" href="css/payment.css">      
  </head>

  <body>

    <body>
        <form onsubmit="return redirector()"> 
    <div class="form-container">
      <div class="personal-information">
        <h1>Payment Information</h1>
      </div> <!-- end of personal-information -->
      <input id="input-field" type="text" name="streetaddress" required="required" autocomplete="on" maxlength="45" placeholder="Address"/>

      <input id="column-left" type="text" name="city" required="required" autocomplete="on" maxlength="20" placeholder="City"/>

      <input id="column-right" type="text" name="zipcode" required="required" autocomplete="on" pattern="[0-9]*" maxlength="6" placeholder="ZIP code"/>
      
      <input id="input-field" type="text" name="phnumber"   maxlength="10" placeholder="Phone"/>
      
    <div class="card-wrapper"></div>
      <input id="column-left" type="text" name="first-name" placeholder="First Name"/>
      
      <input id="column-right" type="text" name="last-name" placeholder="Surname"/>
      
      <input id="input-field" type="text" name="number" placeholder="Card Number"/>
     
      <input id="column-left" type="text" name="expiry" placeholder="MM / YY"/>
        
      <input id="column-right" type="text" name="cvc" maxlength="3" placeholder="CCV"/>
    
      <input id="submit" type="submit" value="Submit"/>
    </form>
  </div> <!-- end of form-container -->
</body>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/121761/card.js'></script>
<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/121761/jquery.card.js'></script>

        <script src="js/payment.js"></script>

    
    
    
  </body>
</html>