<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
     <head>
          <meta charset=UTF-8>
          <title>書庫一覧</title>
     </head>
     <body>
     <tr>
     <th>書庫一覧</th>
			</tr>
			<table>
			<c:forEach var="cart" items="${BookList}">
				<tr>
					<td>${Book.isbn}</td>
     		</c:forEach>
   			 </table>
   			 
     	 <from action="login.jsp">
     	 <input type="submit" value="購入">
  
     	 </from>
     	
     	<from action="delete">
     	
     	
     	</from>

     </body>
</html>