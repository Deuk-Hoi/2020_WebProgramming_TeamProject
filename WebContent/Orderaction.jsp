<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("UTF-8");
   ArrayList<String> list = (ArrayList)session.getAttribute("worldlist");
   list = null;
   session.setAttribute("worldlist", list);
   String[] world = request.getParameterValues("hoseo");
   
   if(list==null){
      list=new ArrayList<String>();
   }
   for(int i=0; i<world.length;i++){
      list.add(world[i]);
      System.out.println(world[i]);
   }
   
   session.setAttribute("worldlist", list);
%>
 
<script>
	alert("상품이 추가되었습니다.");
	history.back();
</script>
</body>
</html>