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
    String feedback = request.getParameter("feedback"); 
    
   
      
    Connection con = DbConnection.getconnection();
   String sql="insert into feedback(username,brand,model,price,mileage,image,feedback) values(?,?,?,?,?,?,?)";
   PreparedStatement st = con.prepareStatement(sql);
   
   st.setString(1,username);
   st.setString(2,brand);
   st.setString(3,model);
   st.setString(4,price);
   st.setString(5,mileage);
   st.setString(6,image);
   st.setString(7,feedback);
   int i=st.executeUpdate();
    if(i>0){
        response.sendRedirect("ufeedback.jsp?msg=success");
        
    }
   %>