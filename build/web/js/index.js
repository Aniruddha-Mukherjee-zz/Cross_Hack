/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


 

    $(document).ready(function(){
        $(".button-collapse").sideNav();
        $("#animation").hide();
        $("#resultend").hide();  
        $("#single-result").click(function(){redirector("single");});
        $("#double-result").click(function(){redirector("double");});
        $("#general-result").click(function(){redirector("general");});
        //alert("inside function");
    });
    
    function redirector(ward){
        //if(ward ==="single")
        {
            alert("You Will Be Redirected Now");
             var url="Booking.jsp?ward="+ward;
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
                if(result['status']===true)
                            {
                            var timeDiff=(new Date().getTime()-start_time)/1000;          
                              alert("Server Side Delay= "+timeDiff+" sec"); 
                             $("#hosp-result").text(unescape(hosp));
                             $("#dept-result").text(unescape(dept)+" Department");
                             $("#add-result").text(unescape(result['address']));
                             $("#hosp-result").attr("href",(unescape(result['link'])));
                            // $("#link-result").text(unescape(hosp+" website"));
                         $("#timestamp-result").text("Last Updated : "+result['timestamp']);
                         
//result['timestamp']);
                          var BOOK="<span class= \"badge red-text text-darken-1\">BOOK NOW</span>";     
                            if(ward === "Any")
                                {
                        $("#single-result").text("Single-bed :  "+result['single']+" seats");           
                        $("#single-result").show();$("#single-result").append(BOOK);
                                   
                        $("#double-result").text("Double-bed :  "+result['double']+" seats");                                   
                        $("#double-result").show();$("#double-result").append(BOOK);          
                        
                        
                        $("#general-result").text("General-bed ward :   "+result['general']+" seats");
                        $("#general-result").show();$("#general-result").append(BOOK);          
                    
                    }
                                
                       else {
                          
                ward=ward.substring(0,unescape(ward).indexOf(" ")).toLowerCase();    //to adjust "Single Bed" to "single" to prepare the key for json search
                                 
                                var delta =ward+"-result"; 
                           $("#tier-1").children().each(function(){
                              //var id=$(this).children("a").attr('id');
                              var id=$(this).attr('id');
                              //alert("id= "+id+" scanner says "+tagScanner(id));
                               if(id!= delta && id.search(/general|double|single/)==false)
                                   $("#"+id).hide();                                                      
                                });
                                
                                $("#"+delta).text(ward.charAt(0).toUpperCase() + ward.slice(1)+"-bed :  "+result[ward]+" seats");
                                $("#"+delta).append(BOOK);
                            }
                                                      
                   $("#resultend").show();
                   $(".button-collapse").sideNav();
                  
                            /*  $("#tier-3").children().each(function(){
                          var found = $(this).text().toLowerCase().indexOf(ward.toLowerCase())>=0;
                          if(!found)
                              $(this).hide();
                               });  */
                   
                            
                        }
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

    function nextPage()
    {
             var hosp=document.getElementById("Hospital_name").value;
             var dept=document.getElementById("Department_name").value;
             var ward=document.getElementById("Ward_name").value;
                   
             if(!hosp || !dept || !ward)  exit;
             
         //alert(document.getElementById("Hospital_name").value);
        //alert(document.getElementById("Department_name").value);
        //alert(document.getElementById("Ward_name").value);
        
            var flag1=false,flag2=false,flag3=false;
            
            var temp = document.getElementById("Hospital_list");
              for(var i=0;i<temp.options.length;i++)
                    if(temp.options[i].value==hosp)
                        flag1=true;
              
            temp = document.getElementById("Department_list");
              for(var i=0;i<temp.options.length;i++)
                    if(temp.options[i].value==dept)
                        flag2=true;
                        
             temp = document.getElementById("Ward_list");
              for(var i=0;i<temp.options.length;i++)
                    if(temp.options[i].value==ward)
                        flag3=true;
            
        
        
       if(!flag1)           {   alert("Selected Hospital information not available.");}
            else{
                    if(!flag2)     {   alert("Selected Department information not available.");}
                    else if(!flag3) {   alert("Selected Ward information not available.");}
            } 
                
       if(!flag1 || !flag2 || !flag3)  exit;
            
        
        //alert(hosp+" "+dept+" "+ward+" ");
       
        $("#searchend").hide();
        $("#animation").show();
       
       
       var uri="result.jsp?"+"hosp="+hosp+"&dept="+dept+"&ward="+ward;
       ajaxtoServlet(hosp,dept,ward);
        //window.open("result.jsp?"+"hosp="+hosp+"&dept="+dept+"&ward="+ward);
       // window.open("/search"+"hosp="+hosp+"&dept="+dept+"&ward="+ward);
    }
