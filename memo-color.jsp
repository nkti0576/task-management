<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver"); 

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps1 = db.prepareStatement("SELECT * FROM memo where importance = '高'");
PreparedStatement ps2 = db.prepareStatement("SELECT * FROM memo where importance = '中'");
PreparedStatement ps3 = db.prepareStatement("SELECT * FROM memo where importance = '低'");

ResultSet rs1= ps1.executeQuery();
ResultSet rs2= ps2.executeQuery();
ResultSet rs3= ps3.executeQuery();

%>
 
<!DOCTYPE HTML>
<HTML>
<HEAD>
<META CHARSET="UTF-8"/>
<TITLE>色分け</TITLE>
</HEAD>
<BODY>
<H1>色分け</H1>
<TABLE BORDER="3">
<TR>
 <TH>内容</TH>
 <TH>重要度</TH>
</TR>
<% while(rs1.next()){ %>
<TR>
 <TD><%=rs1.getString("memo")%></TD>
 <TD align = "center" bgcolor="#FFABCE"><%=rs1.getString("importance")%></TD>
</TR>
<% } %>
</TABLE><BR>
<TABLE BORDER="3">
<TR>
 <TH>内容</TH>
 <TH>重要度</TH>
</TR>
<% while(rs2.next()){ %>
<TR>
 <TD><%=rs2.getString("memo")%></TD>
 <TD align = "center" bgcolor="#E9FFA5"><%=rs2.getString("importance")%></TD>
</TR>
<% } %>
</TABLE><BR>
<TABLE BORDER="3">
<TR>
 <TH>内容</TH>
 <TH>重要度</TH>
</TR>
<% while(rs3.next()){ %>
<TR>
 <TD><%=rs3.getString("memo")%></TD>
 <TD align = "center" bgcolor="#A4C6FF"><%=rs3.getString("importance")%></TD>
</TR>
<% } %>
</TABLE>
<FORM ACTION="memo-detail.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "戻る"></TR>
</BODY>
</HTML>
 
<%
rs1.close();
ps1.close();
rs2.close();
ps2.close();
rs3.close();
ps3.close();
db.close();
%>