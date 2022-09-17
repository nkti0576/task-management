<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver"); 

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps = db.prepareStatement("select * from task");
ResultSet rs = ps.executeQuery();

%>
 
<!DOCTYPE HTML>
<HTML>
<HEAD>
<META CHARSET="UTF-8"/>
<TITLE>タスク追加ページ</TITLE>
</HEAD>
<BODY>
<H2>追加</H2>
<FORM ACTION="task-add-conclusion.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "追加"><BR></TR>
<TR>
<TH>内容</TH>
<TH><INPUT TYPE = "text" name="task-task" size="50"></TH>
<BR></TR>
<TR>
<TH>月</TH>
<TH><INPUT TYPE = "number" name="task-month" min="1" max="12"></TH>
<TH>日</TH>
<TH><INPUT TYPE = "number" name="task-day" min="1" max="31"></TH>
</TR>
</FORM>
<FORM ACTION="task-detail.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "戻る"></TR>
</FORM>
</BODY>
</HTML>
 
<%
rs.close();
ps.close();
db.close();
%>