<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
    String username = session.getAttribute("username").toString();
    String mileage= request.getParameter("mileage");
    String model = request.getParameter("model");
    String price= request.getParameter("price");
    String image = request.getParameter("image");
    String brand = request.getParameter("brand"); 
    String date1 = request.getParameter("date"); 
    String email = request.getParameter("email"); 
    
   
      
    Connection con = DbConnection.getconnection();
   String sql="insert into appointments(username,email,brand,model,price,mileage,image,dt) values(?,?,?,?,?,?,?,?)";
   PreparedStatement st = con.prepareStatement(sql);
   
   st.setString(1,username);
   st.setString(2,email);
   st.setString(3,brand);
   st.setString(4,model);
   st.setString(5,price);
   st.setString(6,mileage);
   st.setString(7,image);
   st.setString(8,date1);
   int i=st.executeUpdate();
    if(i>0){
        response.sendRedirect("userhome.jsp?msg2=success");
        
    }
   %>