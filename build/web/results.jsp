<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
        <link rel="stylesheet" type="text/css" href="formatting.css"/>
    </head>
    
    <%
        Double hour = Double.parseDouble(request.getParameter("hours"));
        Double pay = Double.parseDouble(request.getParameter("pay"));
        Double preTaxDeduct = Double.parseDouble(request.getParameter("preTax"));
        Double postTaxDeduct = Double.parseDouble(request.getParameter("postTax"));
        Double overtime = 0.0;
        Double grossPay = 0.0;
        Double overTimeRate = pay*1.5;
        Double preTaxPay = 0.0;
        Double taxAmt = 0.0;
        Double postTaxPay = 0.0;
        Double net = 0.0;
        
        if(hour>40){
            overtime = hour-40;
        }
        
        grossPay = ((hour-overtime) * pay)+(overtime*(overTimeRate));

        preTaxPay = grossPay - preTaxDeduct;
        
        if(grossPay<500){
            taxAmt=preTaxPay*.18;
        }
        else{
            taxAmt=preTaxPay*.22;
        }
        
        postTaxPay=preTaxPay-taxAmt;
        
        net = postTaxPay-postTaxDeduct;

        %>
    
    <body>
        <a href="/HW3/index.jsp"> Back </a>
        <h1>Salary Info</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hour %></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= pay %></td>
                </tr>
                 <tr>
                    <td>#Hours Overtime:</td>
                    <td><%= overtime %></td>
                </tr>
                 <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overTimeRate%></td>
                </tr>
                 <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                 <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= preTaxPay %></td>
                </tr>
                 <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmt %></td>
                </tr>
                 <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                 <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Net Pay:</td>
                    <td><%= net %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
