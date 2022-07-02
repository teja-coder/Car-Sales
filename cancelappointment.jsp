<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
    String username = session.getAttribute("username").toString();
    String date = request.getParameter("date"); 
    
   
      
    Connection con = DbConnection.getconnection();
   String sql="delete from appointments where username = '"+username+"' and dt = '"+date+"'";
   PreparedStatement st = con.prepareStatement(sql);
   
   int i=st.executeUpdate();
    if(i>0){
        response.sendRedirect("userhome.jsp?del=Cancelled");
        
    }
   %>