<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String brands = request.getParameter("brands");
            String model = request.getParameter("model");                      
            String price = request.getParameter("price");
            String mileage = request.getParameter("mileage");
            String cc = request.getParameter("cc");
            String seating = request.getParameter("seating");
            String image = request.getParameter("image");
             String status = request.getParameter("status");
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();
            
                     
            
            
            PreparedStatement ps=connection.prepareStatement("insert into models values(?,?,?,?,?,?,?,?)");
            
            ps.setString(1,brands);
            ps.setString(2,model);            
            ps.setString(3,price);
            ps.setString(4,mileage);	
            ps.setString(5,cc);
            ps.setString(6,seating);
            ps.setString(7,image);
            ps.setString(8,status);
                       
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
          