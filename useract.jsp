<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

    

                
                
   	        String Password=request.getParameter("password");
                String username=request.getParameter("username");
                String email = null;
                   
                try {
					String driverName = "com.mysql.jdbc.Driver";
					String connectionUrl = "jdbc:mysql://localhost:3306/";
					String dbName = "shift2";
					String userId = "root";
					String password = "root";
                Connection connection = DriverManager.getconnection();
                        
			String sql="SELECT * FROM users where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
                            
                         email = rs.getString("email");   
                       session.setAttribute("username",username);
                       session.setAttribute("email",email);
                    
                       
			response.sendRedirect("userhome.jsp?msg=success");
			
			
			}
			else
			{
			
                         response.sendRedirect("user.jsp?m1=Failed");   
                            
			}

                }
                
              catch(Exception e)
        {
		out.print(e.getMessage());
	    }  

                        
                        
%>