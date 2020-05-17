<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Регистрация нового пользователя</title>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
</head>
<body>
	<jsp:include page="/static/header.jsp"></jsp:include>
	<my:layout1Column>
		<h1 style="font-family: 'Trebuchet',sans-serif;margin-left:20%">Регистрация нового пользователя</h1>
		<my:errorMessage />
		<form id="mform" action="/lab9/doRegister.jsp" method="post">
			<table style="margin-left: 20%">
				<%-- body="0" cellspacing="0" cellpadding="10">--%>
				<tr >

					<td style="border:2px solid #d3d3d3;border-radius:5px;"><img src="https://cdn1.iconfinder.com/data/icons/animals-95/300/cat-circle-animal-pet-wild-domestic-512.png" width="25" height="25" /><input type="text" name="login" value="${sessionScope.userData.login}" placeholder="Логин" size="50"></td>
				</tr>
                    <tr >

                        <td ></td>
                    </tr>
				<tr>

					<td style="border:2px solid #d3d3d3;border-radius: 5px;"><img src="https://cdn3.iconfinder.com/data/icons/wpzoom-developer-icon-set/500/102-512.png" width="20" height="20"/><input type="password" name="password" value="" placeholder="Пароль"size="50"></td>
				</tr>
                    <tr >

                        <td ></td>
                    </tr>
				<tr>

					<td style="border:2px solid #d3d3d3;border-radius: 5px;"><img src="https://cdn4.iconfinder.com/data/icons/feather/24/user-512.png" width="20" height="20"/><input type="text" name="name" value="${sessionScope.userData.name}" placeholder="Имя" size="50"></td>
				</tr>
                    <tr >

                        <td ></td>
                    </tr>
				<tr>

					<td style="border:2px solid #d3d3d3;border-radius: 5px;"><img src="https://cdn2.iconfinder.com/data/icons/freecns-cumulus/16/519948-008_Mail-512.png" width="20" height="20"/><input type="text" name="email" value="${sessionScope.userData.email}" placeholder="Email" size="50"></td>
				</tr>
                    <tr >

                        <td ></td>
                    </tr>
				<tr>

					<td><input type="submit" value="Зарегистрироваться">         <input
                            type="button" value='Уже зарегистрирован? '
                            onclick="window.location='<c:url value="/index.jsp"/>';"> </td>


				</tr>
			</table>
		</form>
	</my:layout1Column>
	<%@ include file="/static/footer.jsp"%>
</body>
</html>
