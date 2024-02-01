<%@page import="java.sql.*"%>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
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

Connection con;
Statement stmt;

try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("update employee set name='"+s2+"',dob='"+s3+"',email='"+s4+"',phone_no='"+s5+"',cnic='"+s6+"',account_number='"+s7+"',wage_type='"+s8+"',wage_rate='"+s9+"',mgr_id='"+s10+"' where emp_id='"+s1+"' ");
%>
<script>
    alert("one record updated successfully");
    document.location="view_employee_details.jsp"
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>