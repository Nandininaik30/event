<%@page import="java.sql.*"%>
<%
String sr=request.getParameter("num");

Connection con;
Statement stmt;

try
{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
   stmt=con.createStatement();

   ResultSet rs=stmt.executeQuery("select * from menu where menu_id='"+sr+"' ");
   if(rs.next())
   {
    %>




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
      <!-- contact -->
      <div class="contact">
         <div class="container-fluid">
            <div class="row ">
               <div class="col-md-12">
                  <div class="titlepage text_align_center">
                     <h2>Menu_Details</h2>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="mapimg">
                    <br>
                    <br> <br>
                    <Br>
                         
                     <figure><img src="images/login.jpeg" style="height:1400px;"  alt="#"/></figure>
                  </div>
               </div>
               <div class="col-md-6">
                  <form id="request" class="main_form" action="update_menu_details2.jsp" method="post">
                     <div class="row">
                        <div class="col-md-10 ">
                           <label>menu_id</label>
                           <input class="contactus" placeholder="" type="text" name="t1" value="<%=rs.getString(1) %>"> 
                        </div>
                        <div class="col-md-10">
                           <label>rice</label>
                           <input class="contactus" placeholder="" type="text" name="t2" vlaue="<%=rs.getString(2) %>"> 
                        </div>
                        <div class="col-md-10">
                            <label>bread</label>
                            <input class="contactus" placeholder="" type="text" name="t3" value="<%=rs.getString(3) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label> 
                              protein</label>
                            <input class="contactus" placeholder="" type="text" name="t4" value="<%=rs.getString(4) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label> 
                              coke</label>
                            <input class="contactus" placeholder="" type="text" name="t5" value="<%=rs.getString(5) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label> 
                              miranda</label>
                            <input class="contactus" placeholder="" type="text" name="t6" value="<%=rs.getString(6) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label> 
                                  
sprite</label>
                            <input class="contactus" placeholder="" type="text" name="t7" value="<%=rs.getString(7) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label> 
                              water</label>
                            <input class="contactus" placeholder="" type="text" name="t8" value="<%=rs.getString(8) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label>dryfruit</label>
                            <input class="contactus" placeholder="" type="text" name="t9" value="<%=rs.getString(9) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label>sugarfree</label>
                            <input class="contactus" placeholder="" type="text" name="t10" value="<%=rs.getString(10) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label>icecream</label>
                            <input class="contactus" placeholder="" type="text" name="t11" value="<%=rs.getString(11) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label>cake</label>
                            <input class="contactus" placeholder="" type="text" name="t12" value="<%=rs.getString(12) %>"> 
                         </div>
                         <div class="col-md-10">
                            <label>cost</label>
                            <input class="contactus" placeholder="" type="text" name="t13" value="<%=rs.getString(13) %>"> 
                         </div>
                      
                       <br>
                       <br>
                       
                        <div class="col-md-12">
                            <br>
                            <br>
                           <button class="send_btn">Submit</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
      <!-- contact -->
      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row border_bo1 ">
                  <div class="col-md-4">
                    <div class="infoma">
                    <h3>Contact Us</h3>     
                    <ul class="conta">
                        <li><i class="fa fa-map-marker" aria-hidden="true"></i>Locations 
                        </li>
                        <li><i class="fa fa-volume-control-phone" aria-hidden="true"></i>+71 12345678901</li>
                        <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="Javascript:void(0)"> demo@gmail.com</a></li>
                     </ul>
                    <ul class="social_icon">
                        <li><a href="Javascript:void(0)"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="Javascript:void(0)"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="Javascript:void(0)"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                        <li><a href="Javascript:void(0)"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
      <script src="js/custom.js"></script>
      <script type="text/javascript">
         baguetteBox.run('.tz-gallery');
      </script>
      <script type="text/javascript">
         window.onscroll = function() {myFunction()};
         
         var header = document.getElementById("myHeader");
         var sticky = header.offsetTop;
         
         function myFunction() {
          if (window.pageYOffset > sticky) {
            header.classList.add("sticky");
          } else {
            header.classList.remove("sticky");
          }
         }
      </script>
   </body>
</html>
<%
}
}
catch(Exception e)
{
   out.println(e);
}
%>