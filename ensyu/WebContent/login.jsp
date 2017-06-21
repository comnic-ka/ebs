<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<h3>EBS System</h3>
     <head>
          <meta charset=UTF-8>
          <title>Login</title>
     </head>
     <body>
<div class="login-panel">
			<h1>Login</h1>
			<form action="login.do" method="post">
				<fieldset>
					<div>
						<label for="email">E-Mail </label>
						<input name="email" placeholder="Your email" autofocus>
					</div>
					<div>
						<label for="password">Password </label>
						<input type="password" name="password" placeholder="Your password">
					</div>
					<input type="submit" value="Login">
				</fieldset>
			</form>
			
			<p class="error">${error}</p>
			
			<jsp:include page="page-footer.jsp"></jsp:include>
			
		</div>
     </body>
</html>