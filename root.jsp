<%@ page import = "java.sql.*" %>
<html>
	<head>
		<title>JDBC Connection example</title>
	</head>
	<body>
		<h1>JDBC Connection example</h1>
		<%
			try {
				java.sql.Connection con;
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", "root", "root");
				out.println("cs157a database successfully opened.");
		%>
		<h3>Table contents:</h3>
		<%
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from emp");
				while(rs.next()) {
					out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getInt(3));
		%>
		<br>
		<%
				}
				con.close();
			} catch(SQLException e) {
				out.println("SQLException caught: " + e.getMessage());
			}
		%>
	</body>
</html>