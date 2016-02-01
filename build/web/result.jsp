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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

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
            
            
            //document.write("Nothing Yet");
            
            
        </script>
       <div class="row">
          <div class="div col s8 offset-s2">
            <div class="progress">
                <div class="indeterminate"></div>
            </div>
          </div>
        </div>
    </body>
</html>
