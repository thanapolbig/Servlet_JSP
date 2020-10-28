<%-- 
    Document   : result
    Created on : Oct 28, 2020, 3:22:02 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <% 
                double output = (Double) request.getAttribute("output");
                String input1 = request.getParameter("input1");
                String input2 = request.getParameter("input2");
                String result;
                if(request.getParameter("add") != null){
                    result = "The Result of " + input1 + " + " + input2 + "is: " + output;
                }else if(request.getParameter("sub") != null){
                    result = "The Result of " + input1 + " - " + input2 + "is: " + output;
                }else if(request.getParameter("mul") != null){
                    result = "The Result of " + input1 + " * " + input2 + "is: " + output;
                }else {
                    result = "The Result of " + input1 + " / " + input2 + "is: " + output;
                }
                out.println(result);       
            %>
        </h1>
    </body>
</html>
