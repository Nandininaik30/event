<%@page import="java.sql.*"%>
<%

String rs=request.getParameter("num");
Connection con;
Statement stmt;

try{

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("delete from employee where emp_id='"+rs+"'");
%>
<script>
    alert("one record deleted successfully");
    document.location="view_employee_details.jsp";
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>