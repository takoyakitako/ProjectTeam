<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("euc-kr");

	Class.forName(""); //추가
	
	String url = ""; //추가
	String id = "";
	String pass = "";
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		String sql = "INSERT INTO board1(USERNAME,TITLE,MEMO) VALUES(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, memo);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>
  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="list.jsp"; 

</script>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>

</body>
</html>