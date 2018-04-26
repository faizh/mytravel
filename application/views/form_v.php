<!DOCTYPE html>
<html>
<head>
	<title>Hello</title>
	
</head>
<body>
	<form action="http://localhost/mytravel/user/add" method="post">
		<table>

		<tr>
		<td>Username</td> <td>:</td><td><input type="text" name="username"></td>
		</tr>
		<tr>
		<td>Password</td> <td>:</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
		<td>Fullname</td> <td>:</td><td><input type="text" name="fullname"></td>
		</tr>
		<tr>
		<td>Level</td><td><select name="level">
			<option value="admin">Admin</option>
			<option value="user">User</option>
		</select>
		</tr>
		<tr>
		<td><input type="submit" name="submit" value="Submit"></td>
		</table>
	</form>
</body>
</html>