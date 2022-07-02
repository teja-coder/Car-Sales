<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String discount = request.getParameter("discount");
          
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();
            
                     
            
            
            PreparedStatement ps=connection.prepareStatement("insert into discount values(?)");
            
            ps.setString(1,discount);
           
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("adminhome.jsp?m2=success");

            }
             else
            {

                response.sendRedirect("adminhome.jsp?m3=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          