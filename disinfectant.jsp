<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%! String email=null; %>
<%
    Connection con;
       PreparedStatement pst;
       ResultSet rs,rs1,rs2,rs3,rs4;
       Class.forName("com.mysql.jdbc.Driver");
	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice?useSSL=false&serverTimezone=UTC","root","");
       email=(String)session.getAttribute("email");    
       session.setAttribute("email", email);
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Disinfection</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aguafina+Script">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aladin">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Features-Boxed.css">
    <link rel="stylesheet" href="assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div>
        <nav class="navbar navbar-dark navbar-expand-md text-white" style="background-color: #000000;color: rgb(0,181,214);">
            <div class="container-fluid"><a class="navbar-brand" href="index.jsp" style="color: #00b5d6;font-size: 30px;"><strong><em>Service Deko</em></strong></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1" style="background-color: #00b5d6;"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon" style="color: #000000;"></span></button>
                <div
                    class="collapse navbar-collapse flex-grow-1 justify-content-end" id="navcol-1" style="color: rgb(0,181,214);">
                    <ul class="nav navbar-nav">
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="index.jsp" style="color: #00b5d6;">Home</a></li>
                       <!-- <li class="nav-item" role="presentation" style="color: #00b5d6;"><a class="nav-link" href="login1.jsp" style="color: #00b5d6;">Login/Sign Up</a></li> -->
						<%
if (session.getAttribute("email") == null) {
%>
<li class="nav-item" role="presentation"><a class="nav-link" href="login1.jsp" style="color: #00b5d6;">Login/Sign Up</a></li>

<%
}  else {
%>
<li class="nav-item" role="presentation"><a class="nav-link" href="user_index.jsp" style="color: #00b5d6;">Profile</a></li>

<%
}
%>

                        <li class="nav-item" role="presentation"><a class="nav-link" href="login_prof1.jsp" style="color: #00b5d6;">Login as Professional</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="1" style="color: #00b5d6;">About Us</a></li>
                    </ul>
            </div>
    </div>
    </nav>
    <div style="margin-top: 20px;padding-right: 10px;padding-left: 10px;">
        <div class="row" style="background-color: #70cee2;">
            <div class="col-md-1 col-lg-1 text-left d-lg-flex justify-content-lg-center align-items-lg-center"><a class="btn btn-primary text-left border rounded-circle border-primary d-md-flex align-items-md-center" role="button" data-bs-hover-animate="pulse" href="index.jsp" style="background-color: rgb(0,0,0);"><i class="fa fa-arrow-left d-md-flex d-lg-flex" style="color: #ffffff;"></i><br></a></div>
            <div
                class="col text-center d-md-flex align-items-md-center justify-content-lg-center">
                <h1 class="text-center d-md-flex align-items-md-start" style="margin-left: 40px;"><strong>Disinfection &amp; Sanitization</strong></h1>
        </div>
    </div>
    </div>
    </div>
    <div style="margin-top: 20px;margin-bottom: 20px;padding-right: 10px;padding-left: 10px;">
        <div class="row">
            <div class="col" style="height: 58px;">
                <h5 class="text-center d-lg-flex justify-content-lg-center align-items-lg-center" style="background-color: #000000;color: #ffffff;height: 50px;">Home</h5>
            </div>
            <div class="col">
                <h5 class="text-center d-lg-flex justify-content-lg-center align-items-lg-center" style="background-color: #000000;color: #ffffff;height: 50px;">Small offices</h5>
            </div>
            <div class="col">
                <h5 class="text-center d-lg-flex justify-content-lg-center align-items-lg-center" style="background-color: #000000;color: #ffffff;height: 50px;">Large offices</h5>
            </div>
        </div>
    </div>
	 <%
    String qu="select * FROM postadd WHERE profadd='Disinfection and Sanitization'";
    Statement st=con.createStatement();
    st=con.createStatement();
    rs1=st.executeQuery(qu);
    if(rs1.next()){
        
    String que="select * from postadd where servadd='Home'";
    st=con.createStatement();
    rs2=st.executeQuery(que);
    boolean Records=rs2.next();
    if(Records){
    %>
    <div style="background-color: #000000;padding-left: 20px;padding-bottom: 20px;padding-right: 20px;padding-top: 20px;margin-right: 10px;margin-left: 10px;"><img class="img-fluid" src="assets/img/heading.jpg" style="height: 450px;width: 1980px" /></div>
    <div style="padding-right: 0px;padding-left: 0px;">
        <div class="text-center" style="background-color: #000000;margin-top: 20px;margin-bottom: 10px;">
            <div class="row">
                <div class="col" style="padding-right: 0px;padding-left: 0px;">
                    <h3 style="color: #ffffff;">Home Disinfection</h3>
                </div>
            </div>
        </div>
    </div>
	 <%
      try{  
do{
%>
    <div style="margin-right: 20px;margin-left: 20px;padding-top: 20px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;background-color: #000000;"><img class="img-fluid" src="assets/img/home%20new.jpg" style="height: 450px;width: 1980px" /></div>
    <div class="text-center" style="background-color: #b2d8d8;margin-bottom: 20px;margin-top: 10px;padding-right: 10px;padding-left: 10px;">
        <div class="row" style="padding-right: 10px;padding-left: 10px;">
            <div class="col"><img src="assets/img/home cleaning.jpg" style="background-color: #6bc9db;padding-top: 10px;padding-right: 10px;padding-bottom: 10px;padding-left: 10px;margin-top: 15px;">
                <h5 style="margin-bottom: 15px;background-color: #ffffff;">HOME DISINFECTION</h5>
				 <%
                                String idd=rs2.getString("id");
                                String service="Home";
                                String price=rs2.getString("setaprice");
                                
                                %>
                                
                                <%
                                    String query4="select * from detail where id1='"+idd+"' and email='"+email+"'";
                                    st=con.createStatement();
                                    rs=st.executeQuery(query4);
                                    if(rs.next()){
                                    %>
									<input onclick="window.location.href='cart.jsp?id1=<%=idd%>'" style="background-color:rgb(6,51,99);border: none;color: white;padding:10px; " type="button"  id="cart" value="GO TO CART"/>
<%}
else{%>
				<input class="btn btn-primary" role="button" data-bs-hover-animate="pulse" style="background-color: rgb(6,51,99)"onclick="window.location.href='goto1.jsp?id1=<%=idd%>&service=<%=service%>&price=<%=price%>'" id="cart" value="ADD TO CART"/>
<%}%>
				<a onclick="window.location.href='bookorder.jsp?id1=<%=idd%>&service=<%=service%>&price=<%=price%>'"class="btn btn-primary" role="button" style="background-color: rgb(0,0,0);color:white;;margin-left: 10px;">BOOKNOW</a>
                <p style="margin-top: 10px;font-size: 25px;margin-bottom: 10px;background-color: #ffffff;"><i class="fa fa-rupee"></i><%=rs2.getString("setaprice")%></p>
            </div>
            <div class="col">
                <h3 style="color: #00b5d6;background-color: #000000;margin-bottom: 10px;margin-top: 10px;"><span style="text-decoration: underline;">Home</span></h3>
                <h3 style="background-color: #ffffff;margin-top: 10px;margin-bottom: 10px;">DECRIPTION</h3>
                <p class="text-left" style="font-size: 20px;"><i class="icon ion-android-remove"></i><%=rs2.getString("description")%></p>
                <h3 style="background-color: #ffffff;margin-top: 10px;margin-bottom: 10px;">EQUIPMENTS NEEDED</h3>
                <p class="text-left" style="font-size: 20px;"><i class="icon ion-android-remove"></i><%=rs2.getString("equipments")%></p>
            </div>
        </div>
    </div>
	 <%
        }while(rs2.next());
}
catch(Exception e){
out.println("e");
}
}
 String que1="select * from postadd where servadd='Offices'";
    st=con.createStatement();
    rs3=st.executeQuery(que1);
boolean Records1=rs3.next();
    if(Records1){
%>
    <div style="background-color: #000000;margin-bottom: 10px;padding-right: 10px;padding-left: 10px;">
        <div class="row">
            <div class="col">
                <h3 class="text-center" style="color: #ffffff;">Small offices &amp; Shops</h3>
            </div>
        </div>
    </div>
	<%
   try{     
do{
%>
    <div style="margin-right: 20px;margin-left: 20px;padding-top: 20px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;background-color: #000000;"><img class="img-fluid" src="assets/img/small%20off.jpg" style="height: 450px;width: 1980px" /></div>
    <div style="background-color: #b2d8d8;margin-bottom: 20px;padding-right: 10px;padding-left: 10px;">
        <div class="row">
            <div class="col text-center"><img src="assets/img/small.jpg" style="padding-top: 10px;padding-right: 10px;padding-bottom: 10px;padding-left: 10px;background-color: #6bc9db;margin-top: 15px;">
                <h4 style="margin-bottom: 15px;background-color: #ffffff;">Small offices &amp; Shops</h4>
				 <%
                                 String idd=rs3.getString("id");
                                String service2="Small Offices";
                                String price2=rs3.getString("setaprice");;
                                
                                %>
                                <%
                                    String query4="select * from detail where id1='"+idd+"'and email='"+email+"' ";
                                    st=con.createStatement();
                                    rs=st.executeQuery(query4);
                                    if(rs.next()){
                                    %>
									<input onclick="window.location.href='cart.jsp?id1=<%=idd%>'" style="background-color:rgb(6,51,99);border: none;color: white;padding:10px; " type="button"  id="cart" value="GO TO CART"/>
<%}
else{%>
				<input class="btn btn-primary" role="button" data-bs-hover-animate="pulse" style="background-color: rgb(6,51,99)"onclick="window.location.href='goto1.jsp?id1=<%=idd%>&service=<%=service2%>&price=<%=price2%>'" id="cart" value="ADD TO CART"/>
<%}%>
				<a onclick="window.location.href='bookorder.jsp?id1=<%=idd%>&service=<%=service2%>&price=<%=price2%>'"class="btn btn-primary" role="button" style="background-color: rgb(0,0,0);color:white;margin-left: 10px;">BOOK NOW</a>
                <p style="font-size: 25px;margin-top: 10px;margin-bottom: 10px;background-color: #ffffff;"><i class="fa fa-rupee"></i><%=rs3.getString("setaprice")%></p>
            </div>
            <div class="col">
                <h3 class="text-center" style="margin-top: 10px;margin-bottom: 10px;background-color: #000000;color: #00b5d6;"><span style="text-decoration: underline;">Small offices</span></h3>
                <h3 class="text-center" style="margin-bottom: 10px;background-color: #ffffff;margin-top: 10px;">DECRIPTION</h3>
                <p style="font-size: 20px;"><i class="icon ion-android-remove"></i><%=rs3.getString("description")%></p>
                <h3 class="text-center" style="margin-bottom: 10px;background-color: #ffffff;margin-top: 10px;">EQUIPMENTS NEEDED</h3>
                <p style="font-size: 20px;"><i class="icon ion-android-remove"></i><%=rs3.getString("equipments")%></p>
            </div>
        </div>
    </div>
	<%
                            }while(rs3.next());
}catch(Exception e){
out.println("e");
}
}
String que2="select * from postadd where servadd='Showrooms'";
    st=con.createStatement();
    rs4=st.executeQuery(que2);
boolean Records2=rs4.next();
    if(Records2){
    
%>
    <div style="background-color: #000000;margin-bottom: 10px;padding-right: 10px;padding-left: 10px;">
        <div class="row">
            <div class="col">
                <h3 class="text-center" style="color: #ffffff;">LARGE OFFICES (&gt;5000 Sq.ft)</h3>
            </div>
        </div>
    </div>
	<%
  try{   
do{
%>
    <div style="margin-right: 20px;margin-left: 20px;padding-top: 20px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;background-color: #000000;margin-bottom: 20px;"><img class="img-fluid" src="assets/img/large%20off.jpg" style="height: 450px;width: 1980px"/></div>
    <div class="text-center" style="margin-bottom: 20px;padding-right: 10px;padding-left: 10px;">
        <div class="row" style="background-color: #b2d8d8;">
            <div class="col" style="margin-bottom: 20px;"><img src="assets/img/large.jpg" style="background-color: #6bc9db;padding-top: 10px;padding-right: 10px;padding-bottom: 10px;padding-left: 10px;margin-top: 15px;">
                <h4 style="margin-bottom: 15px;background-color: #ffffff;">LARGE OFFICES(&gt;5000 Sq.ft)</h4>
				<%
                                String idd=rs4.getString("id");
                                String service4="Large offices";
                                String price4=rs4.getString("setaprice");
                                %>
                                <%
                                    String query4="select * from detail where id1='"+idd+"' and email='"+email+"'";
                                    st=con.createStatement();
                                    rs=st.executeQuery(query4);
                                    if(rs.next()){
                                    %>
									<input onclick="window.location.href='cart.jsp?id1=<%=idd%>'" style="background-color:rgb(6,51,99);border: none;color: white;padding:10px; " type="button"  id="cart" value="GO TO CART"/>
<%}
else{%>
				<input class="btn btn-primary" role="button" data-bs-hover-animate="pulse" style="background-color: rgb(6,51,99)"onclick="window.location.href='goto1.jsp?id1=<%=idd%>&service=<%=service4%>&price=<%=price4%>'" id="cart" value="ADD TO CART"/>
<%}%>
				<a onclick="window.location.href='bookorder.jsp?id1=<%=idd%>&service=<%=service4%>&price=<%=price4%>'" class="btn btn-primary" role="button" style="background-color: rgb(0,0,0);color:white;margin-left: 10px;">BOOKNOW</a>
                <p style="margin-top: 10px;margin-bottom: 10px;font-size: 25px;background-color: #ffffff;"><i class="fa fa-rupee"></i><%=rs4.getString("setaprice")%></p>
            </div>
            <div class="col">
                <h3 style="background-color: #000000;color: #00b5d6;margin-top: 10px;margin-bottom: 10px;"><span style="text-decoration: underline;">Large offices</span></h3>
                <h3 style="margin-bottom: 10px;background-color: #ffffff;margin-top: 10px;">DECRIPTION</h3>
                <p class="text-left" style="font-size: 20px;"><i class="icon ion-android-remove"></i><%=rs4.getString("description")%></p>
                <h3 class="text-center" style="margin-bottom: 10px;background-color: #ffffff;margin-top: 10px;">EQUIPMENTS NEEDED</h3>
                <p class="text-left" style="font-size: 20px;"><i class="icon ion-android-remove"></i><%=rs4.getString("equipments")%></p>
            </div>
        </div>
    </div>
	<%
       }while(rs4.next());
}
catch(Exception e){
out.println("e");
}
}
}

%>
    <!--Comment-->
    <div class="text-center footer-dark"><a href="#" style="color: #ffffff;margin-right: 5px;margin-bottom: 5px;">Terms and Conditions&nbsp;</a><a href="#" style="color: #ffffff;margin-left: 5px;margin-bottom: 5px;">Privacy Policy</a>
        <footer>
            <div class="container" style="margin-top: 10px;">
                <div class="row">
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Sevice Deko © 2020</p>
            </div>
        </footer>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
</body>

</html>