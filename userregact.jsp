<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
    String username= request.getParameter("username");
    String password = request.getParameter("password");
    String email= request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String brand = request.getParameter("brand"); 
    String feedback = request.getParameter("feedback"); 
    
   
      
    Connection con = DbConnection.getconnection();
   String sql="insert into users(username,password,email,mobile) values(?,?,?,?)";
   PreparedStatement st = con.prepareStatement(sql);
   
   st.setString(1,username);
   st.setString(2,password);
   st.setString(3,email);
   st.setString(4,mobile);
   int i=st.executeUpdate();
    if(i>0){
        response.sendRedirect("user.jsp?msg=success");
        
    }
   %>