<%@page import="java.sql.*"%>
<%
String s1,s2,s3,s4,s5,s6,s7,s8;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");
s8=request.getParameter("t8");




Connection con;
Statement stmt;
 try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("insert into register values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");

%>
<script> 
alert("one record inserted successfully");
document.location="Register.html";
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>
