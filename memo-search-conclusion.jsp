<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");

Class.forName("com.mysql.jdbc.Driver"); 

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps = db.prepareStatement("SELECT * FROM memo where memo LIKE ?");
ps.setString(1, request.getParameter("memo-search"));

ResultSet rs = ps.executeQuery();
%>


<!DOCTYPE HTML>
<HTML>
<HEAD>
<META CHARSET="UTF-8"/>
<TITLE>メモ検索ページ</TITLE>
</HEAD>
<BODY>
<H2>検索結果</H2>
<TABLE BORDER="5" bgcolor="#CCFFFF">
<TR>
<TH>内容</TH><TH>重要度</TH>
</TR>
<% while(rs.next()){ %>
<TR>
 <TD><%=rs.getString("memo")%></TD>
 <TD><%=rs.getString("importance")%></TD>
</TR>
<% } %>
</TABLE><BR>
<FORM ACTION="memo-detail.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "戻る"></TR>
</BODY>
</HTML>

<%
rs.close();
ps.close();
db.close();
%>