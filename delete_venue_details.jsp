<%@page import="java.sql.*"%>
<%

String rs=request.getParameter("num");
Connection con;
Statement stmt;

try{

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("delete from venue where venue_id='"+rs+"'");
%>
<script>
    alert("one record deleted successfully");
    document.location="view_venue_detials.jsp";
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>