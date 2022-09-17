<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*"  %>
<%
request.setCharacterEncoding("UTF-8");

Class.forName("com.mysql.jdbc.Driver");

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps = db.prepareStatement("SELECT * FROM task");

ResultSet rs= ps.executeQuery();
%>

<!DOCTYPE HTML>
<HTML>
<HEAD>
<META CHARSET="UTF-8"/>
<TITLE>タスク管理</TITLE>
</HEAD>
<BODY>
<TABLE BORDER>
<H2>タスク</H2>
<FORM ACTION="task-add.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "追加"></TR>
</FORM>
<FORM ACTION="task-delete.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "削除"><BR></TR>
</FORM>
<FORM ACTION="task-sort.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "ソート"></TR>
</FORM>
</FORM>
<FORM ACTION="task-search.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "検索"><BR></TR>
</FORM>
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
</TR>
</TABLE>
<FORM ACTION="first-page.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "一覧へ"></TR>
</FORM>
</BODY>
</HTML>

<%
rs.close();
ps.close();
db.close();
%>