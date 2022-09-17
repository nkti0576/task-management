<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver"); 

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps = db.prepareStatement("SELECT * FROM task");

ResultSet rs= ps.executeQuery();

%>
 
<!DOCTYPE HTML>
<HTML>
<HEAD>
<META CHARSET="UTF-8"/>
<TITLE>タスク削除ページ</TITLE>
</HEAD>
<BODY>
<H2>削除</H2>
<FORM ACTION="task-delete-conclusion.jsp" METHOD="Post">
 <TR><INPUT TYPE = "text" name = "memo-delete"></TR>
 <TR><INPUT TYPE = "submit" VALUE = "削除" onclick="return confirm('本当に削除してもよいですか？')"><BR></TR>
<TABLE BORDER="5" bgcolor="#66FFCC">
<TR>
<TH>内容</TH><TH colspan="2">期限</TH>
</TR>
<% while(rs.next()){ %>
<TR>
 <TD><%=rs.getString("task")%></TD>
 <TD><%=rs.getInt("month")%></TD>
 <TD><%=rs.getInt("day")%></TD>
</TR>
<% } %>
</FORM>
</TABLE>
<BR>
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