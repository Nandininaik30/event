<%@page import="java.sql.*"%>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");
s8=request.getParameter("t8");
s9=request.getParameter("t9");


Connection con;
Statement stmt;

try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("update venue set name='"+s2+"',location='"+s3+"',address='"+s4+"',max_capacity='"+s5+"',description='"+s6+"',category='"+s7+"',contact_info='"+s8+"',cost='"+s9+"' where venue_id='"+s1+"' ");
%>
<script>
    alert("one record updated successfully");
    document.location="view_venue_detials.jsp"
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>