<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*"  %>
<%
request.setCharacterEncoding("UTF-8");

Class.forName("com.mysql.jdbc.Driver");

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps1 = db.prepareStatement("SELECT * FROM memo");
PreparedStatement ps2 = db.prepareStatement("SELECT * FROM task");

ResultSet rs1= ps1.executeQuery();
ResultSet rs2= ps2.executeQuery();
%>

<!DOCTYPE HTML>
<HTML>
<HEAD>
<META CHARSET="UTF-8"/>
<TITLE>タスク管理</TITLE>
</HEAD>
<BODY>
<H2>メモ</H2>
<TABLE BORDER="5" bgcolor="#CCFFFF">
<FORM ACTION="memo-detail.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "詳細"></TR>
</FORM>
<TR>
<TH>内容</TH><TH>重要度</TH>
</TR>
<% while(rs1.next()){ %>
<TR>
 <TD><%=rs1.getString("memo")%></TD>
 <TD align = "center" ><%=rs1.getString("importance")%></TD>
</TR>
<% } %>
</TABLE>
</TD>
<TD>
<H2>タスク</H2>
<TABLE BORDER="5" bgcolor="#66FFCC">
<FORM ACTION="task-detail.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "詳細"></TR>
</FORM>
<TR>
<TH>内容</TH><TH colspan="2">期限</TH>
</TR>
<TR>
<% while(rs2.next()){ %>
 <TD><%=rs2.getString("task")%></TD>
 <TD><%=rs2.getInt("month")%></TD>
 <TD><%=rs2.getInt("day")%></TD>
</TR>
<% } %>
</TABLE>
</BODY>
</HTML>

<%
rs1.close();
ps1.close();
rs2.close();
ps2.close();
db.close();
%>