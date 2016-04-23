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
    //alert("Receipt.jsp");
    var name=GetURLParameter("name");
    var number=unescape(GetURLParameter("number"));
    var hosp=unescape(GetURLParameter("hosp"));
    var dept=unescape(GetURLParameter("dept"));
    var ward=GetURLParameter("ward");
    var gender=GetURLParameter("gender");
    //alert(hosp+dept+gender+ward+name+number);
    
    
    $("#patient-name").text("Patient Name:      " +unescape(name));
    $("#patient-number").text("Contact Number:      "+(number));
    $("#gender-result").text("Patient Gender:   "+gender);
    $("#hosp-result").text("Hospital Name:      "+(hosp));
    $("#dept-result").text("Department Name:    "+(dept));
    $("#ward-result").text("Bedding  Type:      "+(ward));
   
            
}