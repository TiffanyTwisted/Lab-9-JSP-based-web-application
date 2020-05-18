<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
    <%@include file='style.css' %>
</style>
<%-- Обработать параметр сортировки --%>
<c:if test="${param.sort!=null}">
	<c:set var="sort" scope="session" value="${param.sort}" />
</c:if>
<%-- Обработать параметр направления сортировки --%>
<c:if test="${param.dir!=null}">
	<c:set var="dir" scope="session" value="${param.dir}" />
</c:if>
<%-- Общая декоративная "шапка" для всех страниц --%>
<div style="background-color: rgba(24,115,91,0.5); padding: 10px;">
	<img src="https://cdn2.iconfinder.com/data/icons/app-construction-bold-line/128/1-47-2-512.png" width="50" height="53" border="0" align="left" alt="image">
	<div style="font-family: 'Trebuchet',sans-serif; font-size: 30px; height: 53px; margin-left: 80px;">
		Доска очень важных объявлений
	</div>

</div>
<%-- Панель отображается если пользователь аутентифицирован --%>
<c:if test="${sessionScope.authUser!=null}">
	<div style="background-color: #ccc; padding: 5px" >
		<div style="float: right; margin-right: 5px" >
			 <a href="<c:url value="/doLogout.jsp" />" class="out"><span>Выйти</span><img src="https://cdn1.iconfinder.com/data/icons/feather-2/24/log-out-512.png" height="20" width="20"/></a>
		</div>
		<div style="float: right; margin-right: 5px" class="border">
			 <a href="<c:url value="/cabinet.jsp" />">Вернуться в кабинет</a>
		</div>
		<div style="float: right; margin-right: 5px" class="border">
			<a href="<c:url value="/index.jsp" />">На главную</a>
		</div>
		Вы вошли как:
		<c:out value="${sessionScope.authUser.name}" />
		(
		<c:out value="${sessionScope.authUser.login}" />
		)
	</div>
</c:if>