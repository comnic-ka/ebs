<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
     <head>
          <meta charset=UTF-8>
          <title>購入画面</title>
     </head>
     <body>
     <h3>購入確認画面</h3>
		<cfquery datasource="cfartgallery" name="qArt">
 
</cfquery>
<table border="1">
  <cfoutput query="qArt">
  <tr>
    <th>書籍名</th>
    <th>ISBNコード</th>
    <th>著者</th>
    <th>値段</th>
  </tr>
  <tr>
   <td></td>
   <td></td>
   <td></td>
   <td></td>
  </tr>
  </cfoutput>
</table><br>

	以上の内容でよろしいですか？
	<form action="purchase.do" method="button">
	<input type="submit" value="購入">
     </body>
</html>