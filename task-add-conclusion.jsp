<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");

Class.forName("com.mysql.jdbc.Driver"); 

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps = db.prepareStatement("INSERT INTO task(task, month, day) VALUES(?, ?, ?)");
ps.setString(1,request.getParameter("task-task"));
ps.setString(2,request.getParameter("task-month"));
ps.setString(3,request.getParameter("task-day"));

ps.executeUpdate();
ps.close();
db.close();
response.sendRedirect("task-detail.jsp");
%>