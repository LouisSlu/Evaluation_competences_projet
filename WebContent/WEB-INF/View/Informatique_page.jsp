<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Page Informatique</title>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="WEB-INF/style.css">
	</head>

	<body>
		<div>
			<h5> Niveau : </h5>
			<br>
			<ul> <!-- Level is the name of the form to call when you want to see what level you choose --> 
			   <li> <input id="toutniveau" 	name="level" type="radio">Tout niveau</li>
			   <li> <input id="loin" 		name="level" type="radio">Loin</li>
			   <li> <input id="proche" 		name="level" type="radio">Proche</li>
			   <li> <input id="tresproche" 	name="level" type="radio">Très proche</li>
			   <li> <input id="attendu" 	name="level" type="radio">Attendu</li>
			   <li> <input id="audela" 		name="level" type="radio">Au-delà</li>
			</ul>
		</div>
	</body>
	
</html>