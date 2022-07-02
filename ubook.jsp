<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String username = session.getAttribute("username").toString();
    String mileage= request.getParameter("mileage");
    String model = request.getParameter("model");
    String price= request.getParameter("price");
    String image = request.getParameter("image");
    String brand = request.getParameter("brand"); 
    
    /* new */
    
     String fullname = request.getParameter("fullname"); 
     String address = request.getParameter("address"); 
     String zip = request.getParameter("zip"); 
     String state = request.getParameter("state"); 
       String city = request.getParameter("city"); 
        String email = request.getParameter("email");         
      /* end  */        
        /* card details */        
         String cardname = request.getParameter("cardname"); 
         String cardno = request.getParameter("cardnumber"); 
         String expmonth = request.getParameter("expmonth"); 
         String expyear = request.getParameter("expyear"); 
        String cvv = request.getParameter("cvv");      
        
        /* end */  
        
    Connection con = DbConnection.getconnection();
   String sql="insert into bookings values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement st = con.prepareStatement(sql);
   
   st.setString(1,username);
   st.setString(2,brand);
   st.setString(3,model);
   st.setString(4,price);
   st.setString(5,mileage);
   st.setString(6,image);
    st.setString(7,fullname);
     st.setString(8,email);
      st.setString(9,address);
       st.setString(10,city);
        st.setString(11,state);
         st.setString(12,zip);
          st.setString(13,cardname);
           st.setString(14,cardno);
            st.setString(15,expmonth);
             st.setString(16,expyear);          
              st.setString(17,cvv);
                
         
               
   int i=st.executeUpdate();
    if(i>0){
        response.sendRedirect("userhome.jsp?msg1=success");
        
    }
   %>