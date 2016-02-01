<%-- 
    Document   : Result
    Created on : 1 Feb, 2016, 7:08:51 PM
    Author     : aniruddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <script>        
            var servlet_name="/search";
            var str=document.URL.split('?');
            var uri=str[0];
            var parameter=str[1];
            
            uri=uri.substring(0,uri.lastIndexOf("/"));
            
            uri=uri+servlet_name+"?"+parameter;
            
            //document.write(uri);
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() 
        {
            if (xhttp.readyState === 4 && xhttp.status === 200) 
            {
                    var response= xhttp.responseText;
                    document.write("someting received");
            }
        };
  xhttp.open("GET", uri, true);
  xhttp.send();

            
        </script>
    </body>
</html>
