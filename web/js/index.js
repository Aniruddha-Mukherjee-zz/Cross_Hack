/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
       
       window.open("result.jsp?"+"hosp="+hosp+"&dept="+dept+"&ward="+ward);
    }
