<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver"); 

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps = db.prepareStatement("SELECT * FROM memo ");

ResultSet rs= ps.executeQuery();

%>
 
<!DOCTYPE HTML>
<HTML>
<HEAD>
<META CHARSET="UTF-8"/>
<TITLE>メモ検索ページ</TITLE>
</HEAD>
<BODY>
<H2>検索</H2>
<FORM ACTION="memo-search-conclusion.jsp" METHOD="Post">
 <TR><INPUT TYPE = "text" name = "memo-search"></TR>
 <TR><INPUT TYPE = "submit" VALUE = "検索"><BR></TR>
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
</FORM>
</TABLE>
<BR>
<FORM ACTION="memo-detail.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "戻る"></TR>
</FORM>
</BODY>
</HTML>
 
<%
rs.close();
ps.close();
db.close();
%>