<%@page import="java.sql.*"%>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;
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
s14=request.getParameter("t14");
s15=request.getParameter("t15");


Connection con;
Statement stmt;

try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("update event set name='"+s2+"',type='"+s3+"',event_date='"+s4+"',guests='"+s5+"',total_cost='"+s6+"',starting_time='"+s7+"',ending_time='"+s8+"',cust_id='"+s9+"',venue_id='"+s10+"',studio_id='"+s11+"',menu_id='"+s12+"',catering_id='"+s13+"',media_id='"+s14+"',approved='"+s15+"' where event_id='"+s1+"' ");
%>
<script>
    alert("one record updated successfully");
    document.location="view_event_details.jsp"
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>