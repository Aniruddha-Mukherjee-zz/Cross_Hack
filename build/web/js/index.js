/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


 

    $(document).ready(function(){
        $('select').material_select();
        $(".button-collapse").sideNav();
        $("#search2").hide();
        
        $("#animation").hide();
        $("#resultend").hide();  
        $("#confirmation").hide();  
        
        $("#nextSearch").click(function(){nextSearch("create")});
        $("#Children-result").click(function(){confirm("start","Children");});
        $("#Cabin-result").click(function(){confirm("start","Cabin");});
        $("#General-result").click(function(){confirm("start","General");});
        //$("#first-BC").click(function(){reverter();});
        //$("#second-BC").click(function(){nextSearch();});
        //$(document).on('click', "#second-BC", function(){nextSearch("delete"); });
        //alert("inside function");
        $("#disagree").click(function(){confirm("no","");});
         $("#agree").click(function(){confirm("yes","");});
    });
    
    
    function confirm(arg,ward)
    {
        
        //alert(arg);
        if(arg=== "start")
        {
            var second="<a href=\"javascript:void(0);\" class=\"breadcrumb\" id=\"confirm-BC\">Confirmation</a>";
        $("#navigator").append(second);
            $("#resultend").hide();
            $("#confirmation").show();
            global_ward=ward;
        }
    
    else if(arg=== "yes"){
        redirector();        
    }
    
    else if(arg=== "no"){
            $("#resultend").show();
            $("#confirmation").hide();
            $("#confirm-BC").remove();
    }
}
    
    function redirector(){
        
        //if(ward ==="Children")
        {
            alert("You Will Be Redirected Now");
            var hosp=$("#Hospital_name").val();
             var dept=$("#Department_name").val();
             var gender=$("#Gender").val();
             var ward=$("#Ward_name").val();
             
             var url="Booking.jsp?hosp="+hosp+"&dept="+dept+"&gender="+gender+"&ward="+global_ward;
             var win = window.open(url, '_blank');
             win.focus();
        }
        
    }

        function ajaxtoServlet(hosp,dept,ward){
            
            var start_time=new Date().getTime();
             var servlet_name="/search";
            //var str=uri.split('?');
            //var uri=str[0];
            //var parameter=str[1];
                       
            //temp=parameter.split(/&|=/);
            
            //var hosp=temp[1];var dept=temp[3];var ward=temp[5];
                    
              
            //uri=uri.substring(0,uri.lastIndexOf("/"));
            
            
            //uri=uri+servlet_name+"?"+parameter;
            
            var uri=document.URL+servlet_name+"?"+"hosp="+hosp+"&dept="+dept+"&ward="+ward;            
            
            $.ajax({
            url: uri,
            datatype: 'json',
            beforeSend :    function()
                            {
                               //alert("executing before send");
                                $("#animation").show();  
                            } ,
            
            success: function(result, status,xhr)
                       {                           
                                     $("#animation").hide();  
                                     
     var third="<a href=\"javascript:void(0);\" class=\"breadcrumb\" id=\"third-BC\">Result</a>";
     $("#navigator").append(third);  
                    
                var timeDiff=(new Date().getTime()-start_time)/1000;          
                              alert("Server Side Delay= "+timeDiff+" sec"); 
                             $("#hosp-result").text(unescape(hosp));
                             $("#dept-result").text(unescape(dept)+" Department");
                             $("#add-result").text(unescape(result['address']));
                             $("#hosp-result").attr("href",(unescape(result['link'])));
                            // $("#link-result").text(unescape(hosp+" website"));
                         $("#timestamp-result").text("Last Updated : "+result['timestamp']);
                         
            
                 {
                          //PaidBed
                    //alert("in paid bed");    
                    //$("#tier-2").hide();
//result['timestamp']);
                var BOOK="<span class= \"badge red-text text-darken-1\">BOOK NOW</span>";     
                       if(ward === "Any")
                                {
                        $("#Children-result").text("Children-bed :  "+result['Children']+" seats");           
                        $("#Children-result").show();$("#Children-result").append(BOOK);
                                   
                        $("#Cabin-result").text("Cabin-bed :  "+result['Cabin']+" seats");                                   
                        $("#Cabin-result").show();$("#Cabin-result").append(BOOK);          
                        
                        
                        $("#General-result").text("General-bed ward :   "+result['General']+" seats");
                        $("#General-result").show();$("#General-result").append(BOOK);          
                    
                    }
                                
                       else {
                          
                ward=ward.substring(0,unescape(ward).indexOf(" ")).toLowerCase();    //to adjust "Children Bed" to "Children" to prepare the key for json search
                                 
                                var delta =ward.charAt(0).toUpperCase() + ward.slice(1)+"-result"; 
                           $("#tier-1").children().each(function(){
                              //var id=$(this).children("a").attr('id');
                              var id=$(this).attr('id');
                              //alert("id= "+id+" scanner says "+tagScanner(id));
                              
                               if(id!= delta && id.search(/General|Cabin|Children/)==false)
                                   $("#"+id).hide();                                                      
                                });
                        //alert("ward="+ward); 
                        ward=ward.charAt(0).toUpperCase() + ward.slice(1);
                        
                                $("#"+delta).text(ward+"-bed :  "+result[ward]+" seats");
                                $("#"+delta).append(BOOK);
                            }
                  // $("#confirm-BC").remove();                                   
                  // $("#resultend").show();
                  // $(".button-collapse").sideNav();
              
     
                  
                    
                        }
                
                if(result['status']=== false)
                {
                    
                  //  alert("debug"); 
                    //$("#tier-2").show();
                        //freeBed
           
                       if(ward === "Any")
                                {
                        $("#Childrenfree-result").text("Children-bed :  "+result['Children']+" seats");           
                        $("#Childrenfree-result").show();
                                   
                        $("#Cabinfree-result").text("Cabin-bed :  "+result['Cabin']+" seats");                                   
                        $("#Cabinfree-result").show();
                        
                        
                        $("#Generalfree-result").text("General-bed ward :   "+result['General']+" seats");
                        $("#Generalfree-result").show();//$("#General-result").append(BOOK);          
                    
                    }
                                
                       else {
                          
               
          
                        //ward=ward.substring(0,unescape(ward).indexOf(" ")).toLowerCase();    //to adjust "Children Bed" to "Children" to prepare the key for json search
               
               
                var temp=ward.charAt(0).toUpperCase() + ward.slice(1);  
                ward=temp;
                //string.charAt(0).toUpperCase() + string.slice(1)
               
                
               var delta =ward+"free-result"; 
                                
                                
                           $("#tier-2").children().each(function(){
                              //var id=$(this).children("a").attr('id');
                              var id=$(this).attr('id');
                             
                               if(id!= delta && id.search(/Generalfree|Cabinfree|Childrenfree/)==false)
                                   $("#"+id).hide();                                                      
                                });
                                
                                $("#"+delta).text(ward.charAt(0).toUpperCase() + ward.slice(1)+"-bed :  "+result[ward]+" seats");
                                //$("#"+delta).append(BOOK);
                            }
                            
                }
                else{
                   
                    $("#freebed").hide();
                }
                
                   $("#confirm-BC").remove();                                   
                   $("#resultend").show();
                   $(".button-collapse").sideNav();
        
             
                    },
            error: function(jqXHR, textStatus, errorThrown){
           
                        alert(textStatus);   
                        alert(errorThrown);
                        }
                                ,
            complete: function(event,xhr,settings){
                        //xhr.
                       
                       
                        }
            });
            
           
        }


function reverter(){
   
    /*$("#resultend").hide();
    $("#Hospital_name").val('');
    $("#Department_name").val('');
    $("#Ward_name").val('');
    $("#searchend").show();*/
    location.reload(false);
    
}

function validator(){
    var hosp=$("#Hospital_name").val();
    var dept=$("#Department_name").val();
     if(!hosp || !dept)  {
        alert("No input"); 
        return false;
     }
     
              var flag1=false,flag2=false;
            
            var temp = document.getElementById("Hospital_list");
              for(var i=0;i<temp.options.length;i++)
                    if(temp.options[i].value==hosp)
                        flag1=true;
              
            temp = document.getElementById("Department_list");
              for(var i=0;i<temp.options.length;i++)
                    if(temp.options[i].value==dept)
                        flag2=true;
                        
             
        
        
       if(!flag1)           {   alert("Selected Hospital information not available.");}
            else{
                    if(!flag2)     {   alert("Selected Department information not available.");}
            } 
                
       if(!flag1 || !flag2 )  return false;
       
       return true;
   
}

function nextSearch(warning){
    //alert("nextsearch called");
    $("#confirmation").hide();
     if(!validator()){
         exit;
     }
    
    $("#search1").hide();
    $("#resultend").hide();
    
    
    
    if(warning === "create")
    {
        var second="<a href=\"javascript:void(0);\" class=\"breadcrumb\" id=\"second-BC\">Step 2</a>";
        $("#navigator").append(second);
    }
    
    else{
            $("#third-BC").remove();
            $("#confirm-BC").remove();
            
            $("#resultend").hide();
            $("#searchend").show();
            $("#confirmation").hide();
            
    }
        
    $("#search2").show();
    
    //alert("what ??");
    
}

    function nextPage()
    {
        $("#confirmation").hide();     
        //alert("call forwarded to nextPage()");
             var hosp=$("#Hospital_name").val();
             var dept=$("#Department_name").val();
             var ward=$("#Ward_name").val();
             var gender=$("#Gender").val();
             
             if(!gender || !ward){
                 alert("Select from list");
                    exit;
             }
             
        //alert(document.getElementById("Hospital_name").value);
        //alert(document.getElementById("Department_name").value);
        //alert(document.getElementById("Ward_name").value);
        
            
        
        //alert(hosp+" "+dept+" "+ward+" ");
       
        $("#searchend").hide();
        $("#animation").show();
       
       
       var uri="result.jsp?"+"hosp="+hosp+"&dept="+dept+"&ward="+ward;
       ajaxtoServlet(hosp,dept,ward);
        //window.open("result.jsp?"+"hosp="+hosp+"&dept="+dept+"&ward="+ward);
       // window.open("/search"+"hosp="+hosp+"&dept="+dept+"&ward="+ward);
    }
