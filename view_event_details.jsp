<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>settle</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <link rel="stylesheet" href="https://rawgit.com/LeshikJanz/libraries/master/Bootstrap/baguetteBox.min.css">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout inner_page">
      <!-- loader  -->
      
      <!-- end loader -->
      <!-- top -->
     
      <!-- end banner -->
      <div id="myHeader" class="header diki">
         <div class="container">
            <div class="row">
               <div class="col-md-10 col-sm-12">
                  <nav class="navigation navbar navbar-expand-md navbar-dark ">
                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                     <span class="navbar-toggler-icon"></span>
                     </button>
                     <div class="collapse navbar-collapse" id="navbarsExample04">
                        <ul class="navbar-nav mr-auto">
                           <li class="nav-item ">
                              <a class="nav-link" href="index.html">Home</a>
                           </li>
                           <li class="nav-item active">
                              <a class="nav-link" href="Login.html">Login</a>
                           </li>
                        </ul>
                     </div>
                  </nav>
               </div>
              
            </div>
         </div>
      </div>
      <br>
<br>
<br>
<br>
<section>
<center>
    <h1>View_Event_Details</h1>
    <br>
<%@page import="java.sql.*"%>
<table border="4" style="color:rgb(4, 4, 219); border-color: rgb(57, 66, 66);">
    <br>
    <tr>
        <th>event_id</th>
        <th>name</th>
        <th>type</th>
        <th>event_date</th>
        <th>guests</th>
        <th>total_cost</th>
        <th>starting_time</th>
        <th> ending_time</th>
        <th>cust_id</th>
        <th>venue_id</th>
        <th>studio_id</th>
        <th>menu_id</th>
        <th>catering_id</th>
        <th>media_id</th>
        <th>approved</th>
      
        <th>Delete</th>
        <th>Update</th>
    </tr>

    <%
    Connection con;
Statement stmt;
try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
stmt=con.createStatement();

ResultSet rs=stmt.executeQuery("select * from event");
while(rs.next())
{
out.println("<tr><td>");
    out.println(rs.getString(1));
    out.println("</td><td>");
        out.println(rs.getString(2));
        out.println("</td><td>");
            out.println(rs.getString(3));
            out.println("</td><td>");
                out.println(rs.getString(4));
                out.println("</td><td>");
                    out.println(rs.getString(5));
                    out.println("</td><td>");
                        out.println(rs.getString(6));
                        out.println("</td><td>");
                           out.println(rs.getString(7));
                           out.println("</td><td>");
                              out.println(rs.getString(8));
                              out.println("</td><td>");
                                 out.println(rs.getString(9));
                                 out.println("</td><td>");
                                    out.println(rs.getString(10));
                                    out.println("</td><td>");
                                        out.println(rs.getString(11));
                                        out.println("</td><td>");
                                            out.println(rs.getString(12));
                                            out.println("</td><td>");
                                                out.println(rs.getString(13));
                                                out.println("</td><td>");
                                                    out.println(rs.getString(14));
                                                    out.println("</td><td>");
                                                        out.println(rs.getString(15));
                                                        out.println("</td><td>");
                           %>
                           <a href="delete_event_details.jsp?num=<%=rs.getString(1) %>" >Delete</a>
                           <%
                           out.println("</td><td>");
                               %> 
                               <a href="update_event_details.jsp?num=<%=rs.getString(1) %>" >Update</a>
                               <%
                               out.println("</td></tr>");
                                   %>
                               <%
                              
}
}
catch(Exception e)
{
   out.println(e);
}
%>
</table>



</center></section>
</body>
</html>