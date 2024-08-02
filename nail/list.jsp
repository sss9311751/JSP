<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>

        <h3>네일메뉴 조회</h3>
        
<table>
<tr><th>번호</th><th>고객아이디</th><th>성명</th><th>주소</th><th>고객등급</th><th>네일</th><th>패디</th><th>기타</th><th>방문일자</th></tr>
	<%
		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from tbl_customer c,TBL_FERFORMANCE f,tbl_menu m1,tbl_menu m2,tbl_menu m3 where c.customerid=f.customerid and f.menucode1=m1.menucode and f.menucode2=m2.menucode and f.menucode3=m3.menucode order by f.P_NUMBER ");
			while(rs.next()) {
				out.println("<tr><td>" + rs.getString(7) + "</td>");
				out.println("    <td>" + rs.getString(1) + "</td>");
				out.println("    <td>" + rs.getString(2) + "</td>");
				out.println("    <td>" + rs.getString(5) + "</td>");
					
				out.print("    <td>");
				if(rs.getString(9).equals("V")) out.print("우수고객");
				else if(rs.getString(9).equals("G")) out.print("일반고객");
				else out.print("학생고객");
				out.println("</td>");				
				
				out.println("    <td>" + rs.getString(15) + "</td>");
				out.println("    <td>" + rs.getString(19) + "</td>");
				out.println("    <td>" + rs.getString(23) + "</td>");
				out.print("    <td>");
				out.print("20"+rs.getString(13).substring(0,2)+"/"); 
				out.print(rs.getString(13).substring(2,4)+"/"); 
				out.print(rs.getString(13).substring(4,6)); 
				out.println("</td>");

			}
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}
	%>

</table>

<%@ include file="bottom.jsp" %>

