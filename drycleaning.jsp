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
    <title>Drycleaning</title>
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

<body class="text-center" style="margin-top: 20PX;margin-bottom: 10PX;">
    <div style="padding-right: 10PX;padding-left: 10PX;margin-top: 20px;margin-bottom: 10px;">
        <nav class="navbar navbar-light navbar-expand-md" style="background-color: #000000;">
            <div class="container-fluid"><a class="navbar-brand" href="index.jsp" style="color: #00b5d6;font-size: 30px;"><strong><em>Service Deko</em></strong></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1" style="background-color: #00b5d6;"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="index.jsp" style="color: #00b5d6;">Home</a></li>
                        <!--<li class="nav-item" role="presentation"><a class="nav-link" href="login1.jsp" style="color: #00b5d6;">Login/ Sign Up</a></li>-->
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
    </div>
    <div class="text-center" style="padding-left: 25px;padding-right: 25px;">
        <div class="row">
            <div class="col-2 col-md-2" style="background-color: #82E2EF;margin-bottom: 10px;"><a class="btn btn-primary text-left border rounded-circle border-secondary shadow-sm" role="button" data-bs-hover-animate="pulse" style="background-color: #000000;margin-top: 24px;margin-bottom: 10px;" href="index.jsp"><i class="fa fa-arrow-left"></i></a></div>
            <div
                class="col text-center" style="background-color: #82E2FE;margin-bottom: 10px;">
                <h1 class="text-center" style="background-color: #82e2ef;margin-top: 21px;padding: 0px;">Dry Cleaning&nbsp; &nbsp;&nbsp;</h1>
        </div>
    </div>
    </div>
    <div class="text-justify" style="padding-right: 10PX;padding-left: 10PX;margin-bottom: 10px;margin-top: 10px;">
        <div class="row" style="margin-top: 0px;">
            <div class="col">
                <h3 class="text-center" style="color: #ffffff;background-color: #000000;margin-bottom: 0px;">Denim Wash&nbsp;</h3>
            </div>
            <div class="col">
                <h3 class="text-center" style="color: #ffffff;background-color: #000000;margin-bottom: 0px;">Suit</h3>
            </div>
            <div class="col">
                <h5 class="text-center" style="color: #ffffff;font-size: 28px;background-color: #000000;margin-bottom: 0px;">Others</h5>
            </div>
        </div>
    </div>
	    <%
    String qu="select * FROM postadd WHERE profadd='Dry Cleaning'";
    Statement st=con.createStatement();
    st=con.createStatement();
    rs1=st.executeQuery(qu);
    if(rs1.next()){
        
    String que="select * from postadd where servadd='Denim Wash'";
    st=con.createStatement();
    rs2=st.executeQuery(que);
    boolean Records=rs2.next();
    if(Records){
    %>
    <div style="padding-right: 10PX;padding-left: 10PX;">
        <div class="row" style="margin-top: 20px;">
            <div class="col"><img class="img-fluid" src="assets/img/PRESS2.JPG" width="2090px" padding="30px" height="300px" /></div>
        </div>
    </div>
    <div style="padding-right: 10PX;padding-left: 10PX;margin-top: 10PX;margin-bottom: 10px;">
        <div class="row" style="margin-top: 20px;">
            <div class="col">
                <h2 class="text-center" style="background-color: #000000;color: #ffffff;padding: 3px;margin-bottom: 0px;">Denim Wash</h2>
            </div>
        </div>
    </div>
	<%
      try{  
do{
%>
    <div class="text-center" style="padding-right: 10PX;padding-left: 10PX;height: 555px;background-color: #B2D8D8;">
        <div class="row" style="margin-top: 20px;">
            <div class="col" style="font-size: 21px;filter: brightness(112%);"><img class="img-fluid" src="assets/img/denimj.jpg" style="margin: 6px;width: 389px;height: 204px;background-color: #6bc9db;padding: 9px;">
		
                <p style="background-color: #ffffff;color: #000000;font-size: 14px;height: 40px;margin-top: 5px;margin-bottom: 26px;padding: 0px;font-family: Roboto, sans-serif;"><strong>INCLUDES ALL TYPES OF DENIMS</strong></p>
				 <%
                                String idd=rs2.getString("id");
                                String service="Denim Wash";
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
                  <button onclick="window.location.href='bookorder.jsp?id1=<%=idd%>&service=<%=service%>&price=<%=price%>'"class="btn btn-primary" type="button" style="background-color: #000000;height: 50px;padding: 2px;font-size: 15px;">BOOK NOW</button>
            
                <p style="background-color: #ffffff;color: #000000;height: 33px;padding: 0px;font-size: 17px;margin-top: 18PX;margin-bottom: 32PX;">&nbsp;<i class="fa fa-rupee"></i><%=rs2.getString("setaprice")%></p>
            </div>
            <div class="col" style="background-color: #b2d8d8;">
                <p></p>
                <p class="text-center" style="background-color: #ffffff;color: #000000;font-size: 16PX;"><strong>DESCRIPTION</strong></p>
                <p><%=rs2.getString("description")%></p>
                <p class="text-center" style="background-color: #ffffff;color: #000000;font-size: 16px;"><strong>EQIUPMENTS NEEDED</strong></p>
                <p><%=rs2.getString("equipments")%></p>
                <p></p>
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
 String que1="select * from postadd where servadd='Suit Wash'";
    st=con.createStatement();
    rs3=st.executeQuery(que1);
boolean Records1=rs3.next();
    if(Records1){
%>
    <div style="padding-right: 10PX;padding-left: 10PX;margin-top: 5px;margin-bottom: 10px;">
        <div class="row" style="margin-top: 20px;">
            <div class="col">
                <h2 class="text-center" style="background-color: #000000;color: #ffffff;margin-bottom: 0px;margin-top: 4px;">Suit Wash</h2>
            </div>
        </div>
    </div>
	 <%
   try{     
do{
%>
    <div class="text-center" style="padding-right: 10PX;padding-left: 10PX;background-color: #B2D8D8;height: 480px;">
        <div class="row" style="margin-top: 20px;">
            <div class="col" style="height: 299PX;margin-top: 10px;margin-bottom: 19px;padding: 12px;"><img class="img-fluid" src="assets/img/SIT2.jpeg" style="width: 420PX;margin: 7PX;padding: 10PX;background-color: #6bc9db;">
                <p class="text-center" style="background-color: #ffffff;padding: 3P;color: #000000;margin-top: 7px;margin-bottom: 19px;height: 29px;font-size: 20px;"><strong>SUIT WASH</strong></p>
				<%
                                String idd=rs3.getString("id");
                                String service2="Suit Wash";
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
               <button onclick="window.location.href='bookorder.jsp?id1=<%=idd%>&service=<%=service2%>&price=<%=price2%>'"class="btn btn-primary" type="button" style="background-color: #000000;height: 50px;padding: 2px;font-size: 15px;">BOOK NOW</button>
                
                <p style="background-color: #ffffff;color: #000000;height: 33px;padding: 0px;font-size: 17px;margin-top: 18PX;margin-bottom: 32PX;">&nbsp;<i class="fa fa-rupee"></i><%=rs3.getString("setaprice")%> </p>
            </div>
            <div class="col" style="background-color: #B2D8D8;height: 299PX;">
                <p class="text-center" style="background-color: #ffffff;font-size: 16px;font-family: Roboto, sans-serif;padding: 2px;height: 33PX;color: #000000;margin-top: 16PX;"><strong>DESCRIPTION</strong></p>
                <p style="padding: 1PX;margin-bottom: 21px;"><%=rs3.getString("description")%></p>
                <p class="text-center" style="background-color: #ffffff;color: #000000;margin: 2PX;font-size: 16px;"><strong>EQIUPMENTS NEEDED</strong></p>
                <p style="margin: 2PX;margin-bottom: 11px;margin-top: 10px;"><%=rs3.getString("equipments")%></p>
            </div>
        </div>
    </div>
	 <%
 }while(rs3.next());
}catch(Exception e){
out.println("e");
}
}
String que2="select * from postadd where servadd='Clothing Alteration'";
    st=con.createStatement();
    rs4=st.executeQuery(que2);
boolean Records2=rs4.next();
    if(Records2){
    
%>
    <div class="text-center" style="padding-top: 10PX;padding-left: 10PX;margin-top: -8px;margin-bottom: 2px;">
        <div class="row" style="margin-top: 20px;">
            <div class="col">
                <h2 class="text-center" style="background-color: #000000;color: #FFFFFF;margin-bottom: 10px;margin-top: 10px;margin-right: 9px;">Clothing Alterations</h2>
            </div>
        </div>
    </div>
	<%
  try{   
do{
%>
    <div class="text-center" style="padding-right: 10PX;padding-left: 10PX;background-color: #B2D8D8;height: 570px;">
        <div class="row" style="margin-top: 20px;">
            <div class="col" style="height: 299PX;margin-top: 10px;margin-left: 10px;padding: 2px;"><img class="img-fluid" src="assets/img/alter3.jpg" style="width: 420PX;padding: 12PX;background-color: #6bc9db;">
                <p class="text-center" style="background-color: #ffffff;padding: 3P;color: #000000;margin-top: 7px;margin-bottom: 19px;height: 29px;font-size: 20px;"><strong>CLOTHING ALTERATIONS</strong></p>
				<%
                                String idd=rs4.getString("id");
                                String service4="Clothing Alteration";
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
                
                    <button onclick="window.location.href='bookorder.jsp?id1=<%=idd%>&service=<%=service4%>&price=<%=price4%>'"class="btn btn-primary" type="button" style="background-color: #000000;height: 50px;padding: 2px;font-size: 15px;">BOOK NOW</button>
                
                <p style="background-color: #ffffff;color: #000000;height: 33px;padding: 0px;font-size: 17px;margin-top: 18PX;margin-bottom: 32PX;">&nbsp;<i class="fa fa-rupee"></i><%=rs4.getString("setaprice")%> </p>
            </div>
            <div class="col" style="background-color: #b2d8d8;height: 299PX;">
                <p class="text-center" style="background-color: #ffffff;font-size: 16px;font-family: Roboto, sans-serif;padding: 2px;height: 33PX;color: #000000;margin-top: 21PX;"><strong>DESCRIPTION</strong></p>
                <p style="padding: 1PX;margin-bottom: 21px;margin-top: 10px;"><%=rs4.getString("description")%></p>
                <p class="text-center" style="background-color: #ffffff;color: #000000;margin: 2PX;font-size: 16px;"><strong>EQIUPMENTS NEEDED</strong></p>
                <p style="margin-bottom: 11px;margin-top: 10px;"><%=rs4.getString("equipments")%></p>
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
    <div class="text-center footer-dark" style="margin-top: 20px;height: 236px;color: rgb(255,255,255);background-color: #000000;font-size: 20px;padding-top: 20px;"><a href="#" style="color: #ffffff;margin-right: 5px;margin-bottom: 10px;font-size: 16px;">Terms and Conditions</a><a href="#" style="color: #ffffff;margin-left: 5px;margin-bottom: 10px;font-size: 16px;">Privacy Policy</a>
        <footer>
            <div class="container" style="margin-top: 10px;">
                <div class="row">
                    <div class="col item social" style="font-size: 32px;"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright" style="font-size: 16px;">Service Deko © 2020</p>
            </div>
        </footer>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
</body>

</html>