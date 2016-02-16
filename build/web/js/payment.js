/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* Card.js plugin by Jesse Pollak. https://github.com/jessepollak/card */

$('form').card({
    container: '.card-wrapper',
    width: 280,

    formSelectors: {
        nameInput: 'input[name="first-name"], input[name="last-name"]'
    }
});


$(document).ready(function(){
    
    
});
    
    function redirector(){
        
      
        // alert("call through to redirector");
        var str=document.URL.split('?') ; 
    var uri=str[0];
    var parameter=str[1];
      
      //var number=$("#number").text();
      var number=$("[name='number']").val();
      
      
      
      var name=$("[name='first-name']").val()+$("[name='last-name']").val();
      var address=$("[name='streetaddress']").val();
      
      //alert(number+name+address);
      
       
      
      parameter=parameter+"&name="+name+"&number="+number+"&address="+address;
      
      alert(parameter);
      
      //window.close();
        window.open("Receipt.jsp?"+parameter,"_self");
      return false;
    }
    
   
