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
			} catch(SQLException e) {
				out.println("SQLException caught: " + e.getMessage());
			}
		%>
	</body>
</html>