<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.mail.Message" %>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Transport"%>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.util.Random" %>
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
    ResultSet rs = null;
    
    try {
        assert st != null;

                
        rs = st.executeQuery("select * from users where email = '" + request.getParameter("email").toLowerCase() + "' ");

        
                
        if (!rs.next()) {
            out.print("<script> alert('Email-ID Not Found'); " +
                    "setTimeout(function() {window.location.href='forgotpassword.jsp'});  </script>");
        }

         else {
            Properties emailProperties;
            Session mailSession;
            MimeMessage emailMessage;


            String emailPort = "587";//gmail's smtp port

            emailProperties = System.getProperties();
            emailProperties.put("mail.smtp.port", emailPort);
            emailProperties.put("mail.smtp.auth", "true");
            emailProperties.put("mail.smtp.starttls.enable", "true");


            String[] toEmails = {request.getParameter("email").toLowerCase()};

            Statement st1 = null;

            
            try {
                st1 = con.createStatement();
            } catch (SQLException e) {
                out.print("Database connection Error" + e );
                System.out.println("statement");
                e.printStackTrace();
            }
            try {
                assert st1 != null;

                final String ALPHA_CAPS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
               // final String ALPHA = "abcdefghijklmnopqrstuvwxyz";
                final String NUMERIC = "01234567890123456789012345";
                Random random=new Random();

                StringBuilder result = new StringBuilder();
                for (int i = 0; i < 14; i++) {
                    int index = random.nextInt(ALPHA_CAPS.length());

                    int type = random.nextInt(2);
                    switch (type){
                        case 0:
                           result.append(ALPHA_CAPS.charAt(index));
                            break;
                       // case 1:
                         //  result.append(ALPHA.charAt(index));
                         //   break;
                        case 1:
                            result.append(NUMERIC.charAt(index));
                            break;
                    }
                }

                st1.executeUpdate("insert into forgot_password_check values " +
                        "('" + request.getParameter("email").toLowerCase() + "'," +
                        "'" + result + "','" + new Date().getTime() +"')");
                ResultSet rs1;
                rs1 = st1.executeQuery("select username from users " +
                        "where email = '" + request.getParameter("email").toLowerCase() + "'");
                String emailSubject = "[homeservice] Recovery Password";
                rs1.next();
                String emailBody = "Hey " + rs1.getString(1) + "!<br> This is an email sent by homeservice and " +
                        "your temporary password is : " + result;

                mailSession = Session.getDefaultInstance(emailProperties, null);
                emailMessage = new MimeMessage(mailSession);

                for (String toEmail : toEmails) {
                    emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
                }

                emailMessage.setSubject(emailSubject);
                emailMessage.setContent(emailBody, "text/html");//for a html email
                //emailMessage.setText(emailBody);// for a text email


                String emailHost = "smtp.gmail.com";
                String fromUser = "servicedekho20@gmail.com";//just the id alone without @gmail.com
                String fromUserEmailPassword = "Service@dekho";

                Transport transport = mailSession.getTransport("smtp");

                transport.connect(emailHost, fromUser, fromUserEmailPassword);
                transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
                transport.close();
                //System.out.println("Email sent successfully.");
                out.print("<script> alert('Code has been sent to email : "+request.getParameter("email")+"'); " +
                        "setTimeout(function() {window.location.href='forgot_password_check1.jsp'});  </script>");
                

            } catch (SQLException e) {
                out.print("Database connection Error" + e );
                System.out.println("rs");
                e.printStackTrace();
            }
        }
    }catch (Exception e){
        e.printStackTrace();
    }
    finally {
        con.close();
        st.close();;
        rs.close();
    }

%>
