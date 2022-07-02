import java.sql.*;

class first
{
// JDBC driver name and database URL
   //static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost:3306/";

   //  Database credentials
   static final String username ="root";
   static final String password= "root";
   
public static void main(String args[])
{

   try
{
 //STEP 2: Register JDBC driver
Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
Connection conn = DriverManager.getConnection(DB_URL,username,password);

      //STEP 4: Create statement and Execute a query
Statement st=conn.createStatement();

String sql;
sql="create database SHIFT2";
st.executeUpdate(sql);
System.out.println("database SHIFT2 created successfully.........");

 //STEP 5: Clean-up environment
conn.close();
}

//Handle exception for JDBC
catch(Exception t)
{
System.out.println(t);
}
}
}