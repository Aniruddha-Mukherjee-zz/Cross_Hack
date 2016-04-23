<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>Cross Hack</title>

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
      <script src="js/index.js"></script>

      
      <datalist id="Hospital_list" >
            <option value="Calcutta National Medical College">  
            <option value="Medical College Kolkata">
            <option value="R.G.Kar Medical College and Hospital">
            <option value="SSKM Hospital">
            <option value="Bangur Hospital">
            <option value="DESUN Hospital">
            <option value="Ruby General Hospital">
            <option value="Apollo Hospital">
            <option value="Fortis Hospital">
            <option value="Woodland Hospital">
        </datalist> 
        
        <datalist id="Department_list" >
            <option value= "Burn">
            <option value= "Cardiology">
            <option value= "ENT">
            <option value= "Gastroenterology">
            <option value= "General Medicine">
            <option value= "General Surgery">
            <option value= "Gynaecology & Obstetrics">
            <option value= "Ophthalmology(Eye)">
            <option value= "Orthopaedics">
            <option value= "Paediatrics">
            <option value= "Psychiatry">
            <option value= "Pulmonary Medicine">
            <option value= "Urology">
            
        </datalist>

        <datalist id="Ward_list" >
            <option value= "Children Bed">
            <option value= "Cabin Bed">
            <option value= "General Bed">
            <option value ="Any">
        </datalist>

</head>
<body>    
   <nav class="waves-effect waves-light btn-large" role="navigation">
    <!-- <div class="nav-wrapper container">
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Compatible with your device</a></li>
      </ul> 
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a> 
    </div> -->
  </nav> 
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <!-- <br><br> -->
      <h1 class="header center dark blue-text">Running Bed Counter</h1>
      <div class="row center">
        <h5 class="header col s12 light">A brand new website to find running bed count of Hospital and Nursing Homes in Kolkata</h5>
      </div>

     
   <nav class="row">
    <div class="nav-wrapper blue-grey darken-1">
      <div class="col s12 " id="navigator">
        <a href="javascript:void(0);" class="breadcrumb" id="first-BC">Step 1</a>
      </div>
    </div>
  </nav>
                       <br>

      <div class="row" id="searchend">
    <form id="search1">
   
    <input list="Hospital_list" id="Hospital_name" placeholder="Select Hospital" class="teal-text" required>
        

    
    <input list="Department_list" id="Department_name" placeholder="Select Department" class="teal-text" required>
        
    <!-- <input list="Ward_list" id="Ward_name" placeholder="Select Ward" class="teal-text" required> -->
    
    <br><br>
    <button class="btn-large waves-effect waves-light" type="button" id="nextSearch">Next<i class="material-icons right">send</i></button>
  
    </form>  
          
          <div class="container"  id="search2">
      <div class="input-field col s12 teal-text">
    <select id="Ward_name">
      <option value="" disabled selected>Select Bedding Type</option>
      <option value="Children Bed">Children Bed</option>
      <option value="Cabin Bed">Cabin Bed</option>
      <option value="General Bed">General Bed</option>
      <option value="Any">Any</option>
    </select> 
      </div>
              
       <div class="input-field col s12 teal-text">
    <select id="Gender">
      <option value="" disabled selected>Select Gender</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
    </select> 
      </div>
              <br><br><br>
    <!-- <div class="row">           -->
      <!-- <button class="btn-large waves-effect waves-light left" type="button" name="action" onClick="reverter()"><i class="large material-icons" left>navigate_before</i></button> -->
    <button class="btn-large waves-effect waves-light centralize" type="button" name="action" onClick="nextPage()">Search<i class="material-icons right">send</i></button>
  </div>
   <!-- </div> -->
</div>
  
    <div class="container" id="confirmation">      
       <div class="row">
        <div>
          <div class="card blue-grey darken-1">
            <!-- <div class="card-content white-text">
              <span class="card-title">Confirmation Box</span>
              <p>The final decision of admission will be entirely on the relevant hospital.
              This site provides data on availability of seats.Only provisional booking is available in.This booking is valid for the next 5 hours.</p>
            </div> -->
            <div class="card-content white-text">
              <span class="card-title">Terms & Conditions</span>
              <p>The decision of admission solely depends on the hospital administration authority.</p>
              <p>This site provides data on availability of seats.</p>
              <p>Only provisional booking is available which is valid for the next 5 hours.</p>
            </div>
            <div class="card-action">
              <a href="javascript:void(0);"  id="disagree">I DISAGREE</a>
              <a href="javascript:void(0);" class="right" id="agree">I AGREE</a>
            </div>
          </div>
        </div>
      </div>
        </div>
         


          
      <div class="container" id="resultend">
   
    <div class="row"><h5 class="header center  teal-text" id="hosp-result"></h5></div>
  <!--  <div class="row"><h6 class="header center  teal-text" id="add-result"></h6></div> -->
    <div class="row"><h4 class="header center  teal-text" id="dept-result"></h4></div>
    <!-- <div class="row center-align"  id="tier-1">
         <h5  class= "teal-text col s3 m4 " id="hosp-result">Hospital</h5>
         <h5  class= "teal-text col s3 m4" id="add-result">Address</h5>
         <h5  class= "teal-text col s3 m4" id="dept-result">Department</h5> 
      </div>    -->
   <h5 class="header col s12 red-text light">Paid Bed</h5> 
    <div class="collection"  id="tier-1">
   <!-- <a href="javascript:void(0);" target="_blank" class="collection-item" id="hosp-result">Hospital</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="add-result">Address</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="dept-result">Department<span class="badge">1</span></a> -->
    <a href="javascript:void(0);" class="collection-item teal-text" id="Children-result">default</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="Cabin-result">default</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="General-result">default</a>
    </div>

   <div id="freebed">
    <h5 class="header col s12 red-text light">Free Bed</h5> 
    <div class="collection" id="tier-2" >
          
   <!-- <a href="javascript:void(0);" target="_blank" class="collection-item" id="hosp-result">Hospital</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="add-result">Address</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="dept-result">Department<span class="badge">1</span></a> -->
    <a href="javascript:void(0);" class="collection-item teal-text" id="Childrenfree-result">default</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="Cabinfree-result">default</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="Generalfree-result">default</a>
    </div>
   </div>
     <div class="row">
        <p class="grey-text right-align" id="timestamp-result"><i>Last updated: </i>.</p>
     </div>
    
    
    
      <nav>             
          <div class="nav-wrapper deep-purple accent-2">
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            
      <ul class="right hide-on-med-and-down">
        <li><a href="#" onclick="reverter();return false;">Close</a></li>
      </ul>
        
      <ul class="side-nav" id="mobile-demo">
          <li><a href="#" onclick="reverter();return false;">Close</a></li>
      </ul>        
    </div>
  </nav>
             
      </div>      
      
      
      
    <div  id="animation" class="row" >
          <div class="div col s8 offset-s2">
            <div class="progress">
                <div class="indeterminate"></div>
            </div>
          </div>
        </div>
      <br><br>

    </div>
  </div>


  <div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons">flash_on</i></h2>
            <h5 class="center">Latest Updates</h5>

            <p class="light">This site provides latest accurate information from hospitals in Kolkata round the clock. You get to know number of seats available in different departments of hospitals at any instant of time throughout the day.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons">group</i></h2>
            <h5 class="center">User Experience Focused</h5>

    <p class="light"> We scan all the information we receive from hospitals and highlight strategic points. This enables the user to select the exact information he needs while ignoring other unnecessary details.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons">settings</i></h2>
            <h5 class="center">Mobile Friendly</h5>

            <p class="light">This website is compatible with all web enabled devices. We ensure that no user ever misses out the latest updates from hospitals and nursing homes in Kolkata.</p>
          </div>
        </div>
      </div>

    </div>
    <br><br>

  </div>

  <footer class="page-footer light teal">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">ABOUT US</h5>
          <p class="grey-text text-lighten-4">We are a team of college students working on this prototype.Any thoughts/suggestions would be highly appreciated.</p>

        </div>
        <div class="col l3 s12">
          <h5 class="white-text">CONTACT US</h5>
          <ul>
<li><a class="white-text" href="https://www.facebook.com/aniruddha.mukherjee1" target="_blank" style="target-new: tab;">Aniruddha Mukherjee</a></li>
<li><a class="white-text" href="https://www.facebook.com/arpan.rulzdehert" target="_blank" style="target-new: tab;">Arpan Das</a></li>
<li><a class="white-text" href="https://www.facebook.com/rupam.sarkar.9" target="_blank" style="target-new: tab;">Rupam Sarkar</a></li>
<li><a class="white-text" href="https://www.facebook.com/RHEIJU" target="_blank" style="target-new: tab;">Saumyarup Pal</a></li>
<li><a class="white-text" href="https://www.facebook.com/fuyu.yu.9" target="_blank" style="target-new: tab;">Yu Fu Yu</a></li>

          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Made by <a class="orange-text text-lighten-3" href="http://materializecss.com" target="_blank" style="target-new: tab;">Materialize</a>
      </div>
    </div>
  </footer>


  </body>
</html>
