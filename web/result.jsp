<%-- 
    Document   : Result
    Created on : 1 Feb, 2016, 7:08:51 PM
    Author     : aniruddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="js/index.js"></script>
        <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <title>Result</title>
    </head>
    <body>
        <script >        
            //document.write("Nothing Yet");
            ajaxtoServlet();
            
        </script>
     
        
      <div class="container" id="resultend">
      <div class="row center-align"  id="tier-1">
         <h5  class= "teal-text col s3 m4 " id="hosp-result">Hospital</h5>
         <h5  class= "teal-text col s3 m4" id="add-result">Address</h5>
         <h5  class= "teal-text col s3 m4" id="dept-result">Department</h5> 
      </div>  
     <!-- <div class="row centralize">     
          <a class="blue-text centralize" id="link-result"href="#">Link</a>
     </div> -->            
    <div class="row centralize" id="tier-2">
     <div class="col s4 m4 centralize">
      <p class="card-panel teal lighten-3 z-depth-3" id="single-result">default</p>
    </div>  
     <div class="centralize col s4 m4">
      <p class="card-panel teal lighten-3 z-depth-3" id="double-result">default</p>
    </div>
    <div class="centralize col s4 m4">
      <p class="card-panel teal lighten-3 z-depth-3" id="general-result">default</p>
    </div>  
        </div>          
         <div class="row center-block" id="tier-3" >
         <h5  class= "grey-text col s4 m4 ">Seats available in Single Bed</h5>
         <h5  class= "grey-text col s4 m4">Seats available in Double Bed</h5>
         <h5  class= "grey-text col s4 m4">Seats available in General Bed</h5> 
      </div>  
  
       <div class="row" id="tier-3" >   
    <button onClick="window.close();"class=" centralize btn-large waves-effect waves-light">Close</button>       
        </div>
    
      <a class="blue-text centralize col s3 m4" id="link-result"href="#">Link</a> 
     
       </div>
        
        
        <div  id="animation" class="row" >
          <div class="div col s8 offset-s2">
            <div class="progress">
                <div class="indeterminate"></div>
            </div>
          </div>
        </div>
      
    
    </body>
</html>
