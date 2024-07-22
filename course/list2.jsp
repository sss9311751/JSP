<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
           
            
            <h2>수강 과목 조회</h2>
<table>
           <tr><th>과목번호</th><th>과목이름</th><th>현재상태</th><th>수강인원</th><th>상태변경</th></tr>
            <%
		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select c.cno, c.cname, c.status, count(regist.cno) from course c left join regist on c.cno=regist.cno group by c.cno, c.cname, c.status, regist.cno");
			while(rs.next()) {
				out.println("<tr><td>" + rs.getString(1) + "</td>");
				out.println("    <td>" + rs.getString(2) + "</td>");
				out.println("    <td>"                            );
				if(rs.getInt(3)==1) out.print("개강");
				    else out.print("폐강");
				out.println("    <td>" + rs.getString(4) + "</td>");
				if(rs.getInt(3)==1){
				%>
				<td onclick="alert('이 <%=rs.getString(2)%> 과목을 폐강합니다')">
				    <a href='list2ex.jsp?cno=<%=rs.getString(1)%>&st=0'>상태변경</a>
				</td></tr>
				<% } else{
				%>
				<td onclick="alert('이 <%=rs.getString(2)%> 과목을 개강합니다')">
				    <a href='list2ex.jsp?cno=<%=rs.getString(1)%>&st=1'>상태변경</a>
				</td></tr>
				<%
				}
			}
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</table>
<%@ include file="footer.jsp" %>