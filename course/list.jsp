<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
           
            
            <h2>수강 조회/수정</h2>
<table>
           <tr><th>학번</th><th>학생이름</th><th>과목번호</th><th>과목이름</th><th>수정</th></tr>
            <%
		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from  student, regist, course where student.sno=regist.sno and course .cno=regist.cno");
			while(rs.next()) {
				out.println("<tr><td>" + rs.getString(1) + "</td>");
				out.println("<td>" + rs.getString(2) + "</td>");
				out.println("<td>" + rs.getString(4) + "</td>");
				out.println("<td>" + rs.getString(6) + "</td>");
				out.println(" <td>수정</td></tr>");
			}
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</table>
<%@ include file="footer.jsp" %>