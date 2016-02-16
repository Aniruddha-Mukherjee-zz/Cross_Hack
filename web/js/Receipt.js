/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){   
    content_creator();
    
});

function GetURLParameter(sParam)
{

    var sPageURL = window.location.search.substring(1);

    var sURLVariables = sPageURL.split('&');

    for (var i = 0; i < sURLVariables.length; i++)

    {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] === sParam)
        {
            return sParameterName[1];
        }
    }
}


function content_creator()
{
    alert("Receipt.jsp");
    var name=GetURLParameter("first-name")+GetURLParameter("last-name");
    var number=GetURLParameter("number");
    
    //alert(hosp+dept+gender+ward);
    
    
    $("#hosp-result").text("Hospital:   " +unescape(hosp));
    $("#dept-result").text("Department: "+ unescape(dept));
    $("#ward-result").text("Bed Type:   "+ unescape(ward));
    $("#gender-result").text("Gender:   "+ gender);
    $("#available-result").text("Seat Available");
    
            
}