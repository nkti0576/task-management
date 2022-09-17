<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver"); 

Connection db =DriverManager.getConnection("jdbc:mysql://localhost/db?user=root&password=Tik200105");

PreparedStatement ps = db.prepareStatement("select * from memo");
ResultSet rs = ps.executeQuery();

%>
 
<!DOCTYPE HTML>
<HTML>
<HEAD>
<META CHARSET="UTF-8"/>
<TITLE>メモ追加ページ</TITLE>
</HEAD>
<BODY>
<H2>追加</H2>
<FORM ACTION="memo-add-conclusion.jsp" METHOD="Post">
<TR><INPUT TYPE = "submit" VALUE = "追加"><BR></TR>
<TR>
<TH>内容</TH>
<TH><INPUT TYPE = "text" name="memo-memo" size="50"></TH>
<BR></TR>
<TR>
<TH>重要度</TH>
<TH><SELECT id="memo-imp" name="memo-importance">
        <option value="高">高</option>
        <option value="中" selected>中</option>
        <option value="低">低</option>
</SELECT></TH>
</TR>
</FORM>
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