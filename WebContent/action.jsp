<%@page import="java.io.*,java.net.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%
try {
	URL url = new URL("https://hackalco2018-bfa4.restdb.io/rest/sensor?apikey=65fca61a60d53f260e7c7b8687eff4a7d2c42");
	BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
	String str = "";
	while (null != (str = br.readLine())) {
		out.println(str);
	}
} catch (Exception ex) {
	ex.printStackTrace();
}
%>