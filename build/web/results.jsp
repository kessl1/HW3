<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
        Double hour = Double.parseDouble(request.getParameter("hours"));
        Double pay = Double.parseDouble(request.getParameter("pay"));
        Double preTaxDeduct = Double.parseDouble(request.getParameter("preTax"));
        Double postTaxDeduct = Double.parseDouble(request.getParameter("postTax"));
        
        %>
    
    <body>
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
                    <td></td>
                </tr>
                 <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                 <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                 <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                 <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                 <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                 <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
