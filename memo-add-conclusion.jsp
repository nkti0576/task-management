<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");

Class.forName("com.mysql.jdbc.Driver"); 

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps = db.prepareStatement("INSERT INTO memo(memo, importance) VALUES(?, ?)");
ps.setString(1,request.getParameter("memo-memo"));
ps.setString(2,request.getParameter("memo-importance"));

ps.executeUpdate();
ps.close();
db.close();
response.sendRedirect("memo-detail.jsp");
%>