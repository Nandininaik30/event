<%@page import="java.sql.*"%>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");



Connection con;
Statement stmt;
 try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("insert into service_provider values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");

%>
<script> 
alert("one record inserted successfully");
document.location="service_provider.html";
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>
