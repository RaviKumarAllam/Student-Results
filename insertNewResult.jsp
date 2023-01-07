<%@page import = "StudentProject.ConnectionProvider"%>
<%@page import = "java.sql.*" %>
<%
String rollNo = request.getParameter("rollNo");
String s1 = request.getParameter("s1");
String s2 = request.getParameter("s2");
String s3 = request.getParameter("s3");
String s4 = request.getParameter("s4");
String s5 = request.getParameter("s5");
String l1 = request.getParameter("l1");
String l2 = request.getParameter("l2");
String l3 = request.getParameter("l3");

try
{
	Connection con =ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("insert into result values('"+rollNo+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+l1+"','"+l2+"','"+l3+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
	out.println(e);
}
%>