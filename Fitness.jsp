<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%String email=null;
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
    <title>fitness</title>
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

<body style="color: #ffffff;">
    <nav class="navbar navbar-light navbar-expand-md" style="background-color: #000000;">
        <div class="container-fluid"><a class="navbar-brand" href="index.jsp" style="color: #00b5d6;font-size: 30px;"><strong><em>service Deko</em></strong></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1" style="background-color: #00b5d6;"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp" style="color: #00b5d6;">Home</a></li>
                    <!-- <li class="nav-item" role="presentation"><a class="nav-link active" href="login1.jsp" style="color: #00b5d6;">Login /Sign Up</a></li> -->
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
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#" style="color: #00b5d6;">About Us</a></li>
                </ul>
        </div>
        </div>
    </nav>
    <div style="margin-right: 10px;margin-left: 10px;">
        <div class="row" style="background-color: #70cee2;margin-top: 20px;">
            <div class="col-lg-1" style="margin-top: 10px;"><a class="btn btn-primary border rounded-circle border-secondary" role="button" data-bs-hover-animate="pulse" style="background-color: #000000;font-family: Alike, serif;color: rgb(0,0,0);" href="index.jsp"><i class="fa fa-arrow-left" style="color: #ffffff;"></i></a></div>
            <div
                class="col">
                <h1 class="text-center" style="background-color: #70cee2;color: rgb(0,0,0);">Fitness and Meditation</h1>
        </div>
    </div>
    </div>
    <div style="margin-top: 20px;margin-right: 10px;margin-left: 10px;">
        <div class="row">
            <div class="col">
                <h2 class="text-center" style="background-color: #000000;">Female Training<br></h2>
            </div>
            <div class="col">
                <h2 class="text-center" style="background-color: #000000;">Male Training<br></h2>
            </div>
            <div class="col">
                <h2 class="text-center" style="background-color: #000000;">Couple Training<br></h2>
            </div>
        </div>
    </div>
	 <%
    String qu="select * FROM postadd WHERE profadd='Fitness and Meditation'";
    Statement st=con.createStatement();
    st=con.createStatement();
    rs1=st.executeQuery(qu);
    if(rs1.next()){
        
    String que="select * from postadd where servadd='Female Personal Training'";
    st=con.createStatement();
    rs2=st.executeQuery(que);
    boolean Records=rs2.next();
    if(Records){
    %>
    <div style="margin-top: 20px;margin-right: 10px;margin-left: 10px;">
        <div class="row">
            <div class="col text-center"><img class="img-fluid" 
     src="assets/img/yoga.jpg" style="width: 1500px;height: 500px;padding: 30px;background-color: rgb(0,0,0);" /></div>
        </div>
    </div>
    <div></div>
    <div style="background-color: #000000;margin-top: 20px;margin-right: 10px;margin-left: 10px;">
        <div class="row">
            <div class="col text-center">
                <h5>Female Training</h5>
            </div>
        </div>
    </div>
	 <%
      try{  
do{
%>
    <div style="margin-top: 20px;margin-right: 10px;margin-left: 10px;">
        <div class="row">
            <div class="col text-center" style="background-color: #b2d8d8;padding: 15px;padding-right: 15px;padding-left: 15px;"><img class="img-thumbnail" src="assets/img/l1.jpg" style="width: 300px;background-color: #6bc9db;padding: 8px;">
                <p style="background-color: #FFFFFF;color: #000000;">Female Training</p>
				  <%
                                String idd=rs2.getString("id");
                                String service="Female Personal Training";
                                String price=rs2.getString("setaprice");
                                
                                %>
                                
                                <%
                                    String query4="select * from detail where id1='"+idd+"' and email='"+email+"'";
                                    st=con.createStatement();
                                    rs=st.executeQuery(query4);
                                    if(rs.next()){
                                    %>
				<input onclick="window.location.href='cart.jsp'" style="background-color:rgb(6,51,99);border: none;color: white;padding:10px; " type="button"  id="cart" value="GO TO CART"/>
<%}
else{%>
				
				<a class="btn btn-primary" role="button" data-bs-hover-animate="pulse" style="background-color: rgb(6,51,99);color:white;" onclick="window.location.href='goto1.jsp?id1=<%=idd%>&service=<%=service%>&price=<%=price%>'"  id="cart">ADD TO CART</a>
<%}%>
				<a onclick="window.location.href='bookorder.jsp?id1=<%=idd%>&service=<%=service%>&price=<%=price%>'" class="btn btn-primary" role="button" data-bs-hover-animate="pulse" style="background-color: #000000;">BOOK NOW</a>
                <p
                    style="color: #000000;background-color: #ffffff;margin-top: 10px;"><i class="fa fa-rupee"></i><%=rs2.getString("setaprice")%></p>
            </div>
            <div class="col" style="background-color: #b2d8d8;">
                <p class="text-center" style="color: #93c6e0;background-color: rgb(0,0,0);margin-top: 20px;"><span style="text-decoration: underline;">Training details</span><br></p>
                <p class="text-center" style="background-color: #ffffff;color: rgb(0,0,0);font-size: 12px;"><strong><em>DESCRIPTION</em></strong></p>
                <p class="text-left" style="color: rgb(0,0,0);font-size: 12px;background-color: #b2d8d8;"><%=rs2.getString("description")%></strong></p>
                <p
                    class="text-center" style="color: rgb(0,0,0);font-size: 12px;background-color: rgb(255,255,255);"><strong><em>EQUIPMENTS NEEDED</em></strong></p>
                    <p class="text-left" style="color: rgb(0,0,0);font-size: 12px;background-color: #b2d8d8;"><%=rs2.getString("equipments")%></p>
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
 String que1="select * from postadd where servadd='Male Personal Training'";
    st=con.createStatement();
    rs3=st.executeQuery(que1);
boolean Records1=rs3.next();
    if(Records1){
%>	
    <div style="margin-top: 20px;margin-right: 10px;margin-left: 10px;">
        <div class="row">
            <div class="col text-center" style="background-color: #000000;">
                <h5>Male Training</h5>
            </div>
        </div>
    </div>
 <%
   try{     
do{
%>
    <div style="margin-top: 20px;margin-right: 10px;margin-left: 10px;">
        <div class="row">
            <div class="col text-center"><img class="img-fluid" 
     src="assets/img/men%20yoga.jpg" style="width: 1500px;height: 500px;padding: 30px;background-color: rgb(0,0,0);" /></div>
        </div>
    </div>
    <div style="margin-top: 20px;margin-right: 10px;margin-left: 10px;">
        <div class="row">
            <div class="col text-center" style="background-color: #b2d8d8;padding: 15px;padding-right: 15px;padding-left: 15px;"><img class="img-thumbnail" src="assets/img/m2.jpg" style="width: 300px;background-color: #6bc9db;padding: 8px;">
                <p style="background-color: #FFFFFF;color: #000000;">MALE TRAINING</p>
				   <%
                                String service2="Men Personal Training";
                                String price2=rs3.getString("setaprice");
                                String idd=rs3.getString("id");
                                
                                %>
                                <%
                                    String query4="select * from detail where id1='"+idd+"' and email='"+email+"'";
                                    st=con.createStatement();
                                    rs=st.executeQuery(query4);
                                    if(rs.next()){
                                    %>
									<input onclick="window.location.href='cart.jsp'" style="background-color:rgb(6,51,99);border: none;color: white;padding:10px; " type="button"  id="cart" value="GO TO CART"/>
<%}
else{%>
				
				<a class="btn btn-primary" role="button" data-bs-hover-animate="pulse" style="background-color: rgb(6,51,99);color:white;" onclick="window.location.href='goto1.jsp?id1=<%=idd%>&service=<%=service2%>&price=<%=price2%>'"  id="cart">ADD TO CART</a>
<%}%>
				<a onclick="window.location.href='bookorder.jsp?id1=<%=idd%>&service=<%=service2%>&price=<%=price2%>'"class="btn btn-primary" role="button" data-bs-hover-animate="pulse" style="background-color: #000000;">BOOK NOW</a>
                <p
                    style="color: #000000;background-color: #ffffff;margin-top: 10px;"><i class="fa fa-rupee"></i><%=rs3.getString("setaprice")%></p>
            </div>
            <div class="col" style="background-color: #b2d8d8;">
                <p class="text-center" style="color: #93c6e0;background-color: rgb(0,0,0);margin-top: 20px;"><span style="text-decoration: underline;">Training details </span></p>
                <p class="text-center" style="background-color: #ffffff;color: rgb(0,0,0);font-size: 12px;"><strong><em>DESCRIPTION</em></strong><br></p>
                <p class="text-left" style="color: rgb(0,0,0);font-size: 12px;background-color: #b2d8d8;"><%=rs3.getString("description")%></p>
                <p
                    class="text-center" style="color: rgb(0,0,0);font-size: 12px;background-color: rgb(255,255,255);"><strong><em>EQUIPMENTS NEEDED</em></strong><br></p>
                    <p class="text-left" style="color: rgb(0,0,0);font-size: 12px;"><%=rs3.getString("equipments")%></p>
            </div>
        </div>
    </div>
<%
 }while(rs3.next());
}catch(Exception e){
out.println("e");
}
}
String que2="select * from postadd where servadd='Couple Training'";
    st=con.createStatement();
    rs4=st.executeQuery(que2);
boolean Records2=rs4.next();
    if(Records2){
    
%>
    <div style="margin-top: 20px;margin-right: 10px;margin-left: 10px;">
        <div class="row">
            <div class="col text-center" style="background-color: #000000;">
                <h5>Couple Training</h5>
            </div>
        </div>
    </div>
<%
  try{   
do{
%>
    <div style="margin-top: 20px;margin-left: 10px;margin-right: 10px;">
        <div class="row">
            <div class="col text-center"><img class="img-fluid" 
     src="assets/img/couple%20yoga.jpg" style="width: 1500px;height: 500px;padding: 30px;background-color: rgb(0,0,0);" /></div>
        </div>
    </div>
    <div style="margin-right: 10px;margin-left: 10px;">
        <div class="row">
            <div class="col text-center" style="background-color: #b2d8d8;padding: 15px;padding-right: 15px;padding-left: 15px;"><img class="img-thumbnail" src="assets/img/yc.jpg" style="width: 300px;background-color: #6bc9db;padding: 8px;">
                <p style="background-color: #FFFFFF;color: #000000;">TRAINING FOR COUPLES</p>
				<%
                                String service4="Couple Training";
                                String price4=rs4.getString("setaprice");
                                String idd=rs4.getString("id");
                                %>
                                <%
                                    String query4="select * from detail where id1='"+idd+"' and email='"+email+"'";
                                    st=con.createStatement();
                                    rs=st.executeQuery(query4);
                                    if(rs.next()){
                                    %>
									<input onclick="window.location.href='cart.jsp'" style="background-color:rgb(6,51,99);border: none;color: white;padding:10px; " type="button"  id="cart" value="GO TO CART"/>
<%}
else{%>
				
				<a class="btn btn-primary" role="button" data-bs-hover-animate="pulse" style="background-color: rgb(6,51,99);color:white;" onclick="window.location.href='goto1.jsp?id1=<%=idd%>&service=<%=service4%>&price=<%=price4%>'"  id="cart">ADD TO CART</a>
<%}%>
				<a onclick="window.location.href='bookorder.jsp?id1=<%=idd%>&service=<%=service4%>&price=<%=price4%>'"class="btn btn-primary" type="button" data-bs-hover-animate="pulse" style="background-color: #000000;">BOOK NOW</a>
                <p
                    style="color: #000000;background-color: #ffffff;margin-top: 10px;"><i class="fa fa-rupee"></i><%=rs4.getString("setaprice")%></p>
            </div>
            <div class="col" style="background-color: #b2d8d8;">
                <p class="text-center" style="color: #93c6e0;background-color: rgb(0,0,0);margin-top: 20px;"><span style="text-decoration: underline;">Trainig details</span></p>
                <p class="text-center" style="background-color: #ffffff;color: rgb(0,0,0);font-size: 12px;"><strong><em>DESCRIPTION</em></strong><br></p>
                <p class="text-left" style="color: rgb(0,0,0);font-size: 12px;background-color: #b2d8d8;"><%=rs4.getString("description")%></p>
                <p
                    class="text-center" style="color: rgb(0,0,0);font-size: 12px;background-color: rgb(255,255,255);"><strong><em>EQUIPMENTS NEEDED</em></strong><br></p>
                    <p class="text-left" style="color: rgb(0,0,0);font-size: 12px;"> <%=rs4.getString("equipments")%></p>
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
    <div class="text-center footer-dark" style="margin-top: 10px;"><a href="#" style="color: #ffffff;margin-bottom: 10px;margin-right: 5px;">Terms and Conditions</a><a href="#" style="color: #ffffff;margin-left: 5px;margin-bottom: 10px;">Privacy Policy</a>
        <footer>
            <div class="container" style="margin-top: 10px;">
                <div class="row">
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">service Deko © 2020</p>
            </div>
        </footer>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
</body>

</html>
<%
{
	con.close();
}
%>