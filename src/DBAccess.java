import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBAccess {

	public static void main(String[] args) throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/";
		String dbname="ajp";
		String DBdriver="com.mysql.cj.jdbc.Driver";
		String userName="oshi";
		String password="polonnaruwa123";
		
		Class.forName(DBdriver).newInstance();
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/ajp?useTimezone=true&serverTimezone=UTC", "oshi", "polonnaruwa123");
		
		PreparedStatement ps=conn.prepareStatement("insert into student values(?,?,?)");
		ps.setInt(1,3);
		ps.setString(2,"arvind");
		ps.setString(3, "BCS");
		ps.executeUpdate();
	    Statement st=conn.createStatement();
		
		ResultSet rs=st.executeQuery("select * from student");
		
		while(rs.next())
		{
			System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+" "+rs.getString(3));
			
		}
		
		conn.close();
		
		
		

	}

}
