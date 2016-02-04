/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    $(document).ready(function(){
        $("#loader").hide();       
        //alert("inside function");
    });
    

        function ajaxtoServlet(){
            
            //alert("Call successful");
             var servlet_name="/search";
            var str=document.URL.split('?');
            var uri=str[0];
            var parameter=str[1];
                       
            temp=parameter.split(/&|=/);
            
            var hosp=temp[1];var dept=temp[3];var ward=temp[5];
                       
            uri=uri.substring(0,uri.lastIndexOf("/"));
            
            uri=uri+servlet_name+"?"+parameter;
            
            $.ajax({
            url: uri,
            datatype: 'json',
            beforeSend :    function()
                            {
                               $("#loader").show();  
                            } ,
            
            success: function(result, status,xhr)
                       {                           
                           if(result['status']===true)
                            {
                                //result['address']
                                //result['link']
                                //result['timestamp']);
                                alert("debugging");                                                           
                            if(ward === "Any")
                                {
                                    //result['single']
                                    //result['double']
                                    //result['general']
                                }
                                
                                else {
                          
                ward=ward.substring(0,6).toLowerCase();    //to adjust "Single Bed" to "single" to prepare the keyfor json search
                                    //alert(ward);
                            //alert(result[ward]);
                                }
                            }
                            
                            
                            
                            
                            
                        },
            error: function(jqXHR, textStatus, errorThrown){
           
                        alert(textStatus);   
                        alert(errorThrown);
                        }
                                ,
            complete: function(event,xhr,settings){
                        //xhr.
                       $('#loader').hide();
                       
                        }
            });
            
           
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
       
       $("#loader").show();
       
       $("#searchend").hide();
       
        window.open("result.jsp?"+"hosp="+hosp+"&dept="+dept+"&ward="+ward);
       // window.open("/search"+"hosp="+hosp+"&dept="+dept+"&ward="+ward);
    }
