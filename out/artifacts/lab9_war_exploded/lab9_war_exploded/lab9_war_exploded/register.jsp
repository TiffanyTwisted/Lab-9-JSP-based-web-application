<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Регистрация нового пользователя</title>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />

    <script src="//code.jquery.com/jquery-1.7.min.js"></script>
	<script>
		<%@include file='script.js' %>

	</script>

	<style><%@include file='styleform.css' %></style>

</head>
<body>
	<jsp:include page="/static/header.jsp"></jsp:include>
	<my:layout1Column>
		<h1 style="font-family: 'Trebuchet',sans-serif;margin-left:20%">Регистрация нового пользователя</h1>
		<my:errorMessage />
		<div class="content">
		<form id="mform" action="/lab9/doRegister.jsp" method="post">
			<table class="table" style="margin-left: 20%">
				<%-- body="0" cellspacing="0" cellpadding="10">--%>
				<tr >

					<td style="border:2px solid #d3d3d3;border-radius:5px;"><img src="https://cdn1.iconfinder.com/data/icons/animals-95/300/cat-circle-animal-pet-wild-domestic-512.png" width="20" height="20" />
						<input type="text" name="login" value="${sessionScope.userData.login}" placeholder="Логин" size="50"></td>
				</tr>

					<tr>

					<td style="border:2px solid #d3d3d3;border-radius: 5px;"><img src="https://cdn3.iconfinder.com/data/icons/wpzoom-developer-icon-set/500/102-512.png" width="20" height="20"/>
						<input type="password" name="password" value="" placeholder="Пароль"size="50" id="pswd" autocomplete="on" ></td>
				</tr>

				<tr>

					<td style="border:2px solid #d3d3d3;border-radius: 5px;"><img src="https://cdn4.iconfinder.com/data/icons/feather/24/user-512.png" width="20" height="20"/>
						<input type="text" name="name" value="${sessionScope.userData.name}" placeholder="Имя" size="50"></td>
				</tr>

				<tr>

					<td style="border:2px solid #d3d3d3;border-radius: 5px;"><img src="https://cdn2.iconfinder.com/data/icons/freecns-cumulus/16/519948-008_Mail-512.png" width="20" height="20"/>
						<input type="text" name="email" value="${sessionScope.userData.email}" placeholder="Email" size="50"></td>
				</tr>

				<tr>

					<td><input type="submit" value="Зарегистрироваться" class="button">         <input
                            type="button" value='Уже зарегистрирован? '
                            onclick="window.location='<c:url value="/index.jsp"/>';" class="button"> </td>


				</tr>

			</table>
		</form>
			<div id="pswd_info">

				<h4>Пароль должен соответствовать критериям:</h4>

				<ul>

					<li id="letter">Минимум <strong>одна буква</strong></li>

					<li id="capital">Минимум <strong>одна заглавная буква</strong></li>

					<li id="number">Минимум <strong>одна цифра</strong></li>

					<li id="length">Быть не менее <strong>8 символов</strong></li>

				</ul>

			</div>


		</div>

	</my:layout1Column>
	<%@ include file="/static/footer.jsp"%>

</body>
</html>
