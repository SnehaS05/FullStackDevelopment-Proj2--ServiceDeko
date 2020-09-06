<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>

<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
    }
    catch (ClassNotFoundException e)
    {
        out.print("Database connection Error" + e );
        System.out.println("Driver class not found" + e );
        e.printStackTrace();
    }
    Connection con = null;
    try
    {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice","root","");
    }
    catch (SQLException e)
    {
        out.print("Database connection Error" + e );
        System.out.println("Database connection not established" + e );
        e.printStackTrace();
    }
    Statement st= null;
    try
    {

        assert con != null;
        st = con.createStatement();
    }
    catch (SQLException e)
    {
        out.print("Database Connection Error" + e );
        System.out.println("statement" + e );
        e.printStackTrace();
    }
    ResultSet rs;
    
    try {
        assert st != null;

                
        rs = st.executeQuery("select Code from forgot_password_check where Email_ID = '" + request.getParameter("email").toLowerCase() + "' ");

        
                
        if (!rs.next()) {
            out.print("<script> alert('Email-ID Not Found'); " +
                    "setTimeout(function() {window.location.href='forgotpassword.jsp'});  </script>");
        }

         else {
            String code = request.getParameter("userVcode");
            String code1 = rs.getString(2);
            if(code.equals(code1))
            {
                out.print("<jsp:forword page='/PasswordUpdate.jsp'>");
            }
            else {
                out.print("<script> alert('CODE is incorrect'); " +
                    "setTimeout(function() {window.location.href='forgotpassword.jsp'});  </script>");
            }
        } 
    }
    catch (Exception e){
        e.printStackTrace();
    }
    finally{
        con.close();
        st.close();
        rs.close();
    }

%>