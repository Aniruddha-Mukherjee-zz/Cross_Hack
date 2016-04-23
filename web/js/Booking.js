/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){   
    content_creator();
    
    
    $("#p2p").click(function(){
        //$("#rules").hide();
        //alert("redirecting");
        window.open("payment.jsp?"+parameter,"_self")
    });
});

function content_creator()
{
    //alert("fjkqqhgf");
    var str=document.URL.split('?') ; 
    var uri=str[0];
    parameter=str[1];
                       
    temp=parameter.split(/&|=/);
      
    
    var hosp=temp[1];var dept=temp[3];var gender=temp[5];var ward=temp[7];
    
    //alert(hosp+dept+gender+ward);
    
    $("#hosp-result").text("Hospital:   " +unescape(hosp));
    $("#dept-result").text("Department: "+ unescape(dept));
    $("#ward-result").text("Bed Type:   "+ unescape(ward));
    $("#gender-result").text("Gender:   "+ gender);
    $("#available-result").text("Seat Available");
    
            
}