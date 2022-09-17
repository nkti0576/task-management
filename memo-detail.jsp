<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*"  %>
<%
request.setCharacterEncoding("UTF-8");

Class.forName("com.mysql.jdbc.Driver");

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps = db.prepareStatement("SELECT * FROM memo");

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
<H2>メモ</H2>
<FORM ACTION="memo-add.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "追加"></TR>
</FORM>
<FORM ACTION="memo-delete.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "削除"><BR></TR>
</FORM>
<FORM ACTION="memo-color.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "色分け"></TR>
</FORM>
</FORM>
<FORM ACTION="memo-search.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "検索"><BR></TR>
</FORM>
<TABLE BORDER="5" bgcolor="#CCFFFF">
<TR>
<TH>内容</TH><TH>重要度</TH>
</TR>
<% while(rs.next()){ %>
<TR>
 <TD><%=rs.getString("memo")%></TD>
 <TD align = "center" ><%=rs.getString("importance")%></TD>
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