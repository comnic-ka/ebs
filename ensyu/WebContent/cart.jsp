<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
     <head>
          <meta charset=UTF-8>
          <title>Insert title here</title>
     </head>
     <body>
     <tr>
     <th>カート内</th>
			</tr>
			<table>
			<c:forEach var="cart" items="${CartList}">
				<tr>
					<td>${cart.isbn}</td>
     		</c:forEach>
   			 </table>
   			 
     	 <from action="login.jsp">
     	 <input type="submit" value="購入">
  
     	 </from>
     	
     	<from action="delete">
     	
     	
     	</from>

     </body>
</html>