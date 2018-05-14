<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<a href="http://localhost/mytravel/index.php/user/show">Lihat Data</a>
<form action="http://localhost/mytravel/index.php/user/add" method="post">
	<table>
		<tr>
			<td>Username</td>
			<td>:</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>Fullname</td>
			<td>:</td>
			<td><input type="text" name="fullname"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td>:</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td>Level</td>
			<td>:</td>
			<td><select name="level">
		<option name="user">User</option>
		<option name="admin">Admin</option>
	</select></td>
		</tr>
		<tr>
			<td><input type="submit" name="submit" value="Submit"></td>
		</tr>
		
	</table>
</form>

</table>
</body>
</html>