<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<a href="http://localhost/mytravel/index.php/user">Input Data</a>
<table border="1">
	<th>No</th>
	<th>Username</th>
	<th>Fullname</th>
	<th>Password</th>
	<th>Level</th>
	<th>Aksi</th>

	<?php
	$nomor=1;
	foreach ($t_user as $row) {
		?>
	<tr>
		<td><?php echo $nomor++;?></td>
		<td><?php echo $row->username;?></td>
		<td><?php echo $row->fullname;?></td>
		<td><?php echo $row->password;?></td>
		<td><?php echo $row->level;?></td>
		<td><a href="<?php echo base_url('index.php/user/del/'.$row->id);?>">Hapus | Edit</td>
	</tr>
	
	<?php
	}
	
	?>
</body>
</html>