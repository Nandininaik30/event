<%@page import="java.sql.*"%>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");
s8=request.getParameter("t8");
s9=request.getParameter("t9");
s10=request.getParameter("t10");
s11=request.getParameter("t11");
s12=request.getParameter("t12");
s13=request.getParameter("t13");



Connection con;
Statement stmt;

try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("update menu set rice='"+s2+"',bread='"+s3+"',protein='"+s4+"',coke='"+s5+"',miranda='"+s6+"',sprite='"+s7+"',water='"+s8+"',dryfruit='"+s9+"',sugarfree='"+s10+"',icecream='"+s11+"',cake='"+s12+"',cost='"+s13+"' where menu_id='"+s1+"' ");
%>
<script>
    alert("one record updated successfully");
    document.location="view_menu_detail.jsp"
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>