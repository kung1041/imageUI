<?php 

	$db = mysqli_connect('localhost','root','','ProjectFlutter');
	if (!$db) {
		echo "Database connection faild";
	}

	$person = $db->query("SELECT * FROM trackingsystem");
	$list = array();

	while ($rowdata= $person->fetch_assoc()) {
		$list[] = $rowdata;
	}

	echo json_encode($list);