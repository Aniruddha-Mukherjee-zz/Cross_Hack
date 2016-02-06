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
            <option value="Apollo Gleneagles Hospitals">  
            <option value="Kolkata Medical College and Hospital">
            <option value="R.G.Kar Medical College and Hospital">
            <option value="Calcutta Medical Research Institute">
            <option value="Columbia Asia Hospital - Salt Lake">
            <option value="DESUN Hospital">
            <option value="Ruby General Hospital">
        </datalist> 
        
        <datalist id="Department_list" >
            <option value= "Cardiology Institute of cardiovascular science">
            <option value= "Anatomy">
            <option value= "Physiology">
            <option value= "Biochemistry">
            <option value= "Pharmacology">
            <option value= "Radiology">
            <option value= "Ophthalmology">
            <option value= "Oforhinology">
            <option value= "Dentistry">
            <option value= "Psychiatry">
            <option value= "Dermatology">
            <option value= "General Surgery">
            <option value= "Orthopedics">
            <option value= "General Medicine">
            <option value= "Chest Medicine">
        </datalist>

        <datalist id="Ward_list" >
            <option value= "Single Bed">
            <option value= "Double Bed">
            <option value= "General Bed">
            <option value ="Any">
        </datalist>

</head>
<body>    
  <nav class="waves-effect waves-light btn-large" role="navigation">
    <div class="nav-wrapper container">
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Compatible with your device</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <br><br>
      <h1 class="header center dark blue-text">Running Bed Counter</h1>
      <div class="row center">
        <h5 class="header col s12 light">A brand new website to find running bed count of Hospital and Nursing Homes in Kolkata</h5>
      </div>
<div class="row" id="searchend">
<form>
   <!-- <div class= "grey-text">Select Hospital</div> -->
    <input list="Hospital_list" id="Hospital_name" placeholder="Select Hospital" class="teal-text" required>
        

    <!-- <div class= "grey-text">Select Department</div> -->
    <input list="Department_list" id="Department_name" placeholder="Select Department" class="teal-text" required>
        
    
    <!-- <div class="grey-text">Select Ward</div> -->
    <input list="Ward_list" id="Ward_name" placeholder="Select Ward" class="teal-text" required>
    <br><br>
    <button class="btn-large waves-effect waves-light" type="button" name="action" onClick="nextPage()">Search</button>
  
    </form>
</div>
  
          
      <div class="container" id="resultend">
          <h1 class="header center  grey-text"> Latest Updated Result</h1>
    <!-- <div class="row center-align"  id="tier-1">
         <h5  class= "teal-text col s3 m4 " id="hosp-result">Hospital</h5>
         <h5  class= "teal-text col s3 m4" id="add-result">Address</h5>
         <h5  class= "teal-text col s3 m4" id="dept-result">Department</h5> 
      </div>    -->
    <div class="collection"  id="tier-1">
    <a href="javascript:void(0);" target="_blank" class="collection-item teal-text" id="hosp-result">Hospital</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="add-result">Address</a>
    <a href="javascript:void(0);" class="collection-item teal-text" id="dept-result">Department</a>
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
  
     
     <div class="row">
   <!-- <a class="blue-text centralize col s3 m4" id="link-result"href="#">Link</a> -->
     <p class="grey-text right-align" id="timestamp-result"><i>Last updated: </i>.</p>
     </div>
    <!--   <div class="row" id="tier-3" >   
    <button onClick="reverter()"class=" centralize btn-large waves-effect waves-light">Close</button>       
        </div> -->
    
      <nav>
    <div class="nav-wrapper deep-purple accent-2">
      <ul id="nav-mobile" class="right hide-on-med-and-down">
           <!-- <li><a href="#" id="link-result">Link</a></li> -->
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

    <div class="section">

    </div>
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
