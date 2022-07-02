<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String name = request.getParameter("name");
            String password = request.getParameter("password");                      
            String mobile = request.getParameter("mobile");
            String email = request.getParameter("email");
         
            				
            try {
						
            String driverName = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String dbName = "shift2";
            String userId = "root";
            String password = "root";				
            Connection connection = DriverManager.getconnection(connectionUrl+dbName,userId,password);
            
                     
            
            
            PreparedStatement ps=connection.prepareStatement("insert into users values(?,?,?,?)");
            
            ps.setString(1,name);
            ps.setString(2,password);            
            ps.setString(3,mobile);
            ps.setString(4,email);	
          
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("user.jsp?m2=success");

            }
             else
            {

                response.sendRedirect("index.jsp?m3=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          