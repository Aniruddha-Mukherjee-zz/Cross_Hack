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
        $("#nextSearch").click(function(){nextSearch("create")});
        $("#single-result").click(function(){redirector("single");});
        $("#double-result").click(function(){redirector("double");});
        $("#general-result").click(function(){redirector("general");});
        $("#first-BC").click(function(){reverter();});
        //$("#second-BC").click(function(){nextSearch();});
        $(document).on('click', "#second-BC", function(){nextSearch("delete"); });
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
                                     
     var third="<a href=\"javascript:void(0);\" class=\"breadcrumb\" id=\"third-BC\">Result</a>";
     $("#navigator").append(third);  
                   
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
            $("#resultend").hide();
            $("#searchend").show();
    }
        
    $("#search2").show();
    
    //alert("what ??");
    
}

    function nextPage()
    {
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
