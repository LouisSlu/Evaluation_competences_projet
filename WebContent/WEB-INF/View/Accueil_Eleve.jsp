
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
<html>
	<head>
		<title>Accueil Eleve</title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="bootstrap/css/style.css">	
	</head>

<body>
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<div class="top">
		<div class="photo"> /* Creation of the student picture */
      		<div class="row">
      			<div class="col-lg-4">
      				Photo d'identité
      			</div>
      			<div class="row"> /* Attribute the name of session login */
      				<p> ${sessionScope.sessionUtilisateur.email}</p></div>
      		</div>
      	</div>
      	<div class="information">	
      		<div class="row"> /* Creation of the Dashboard with all courses */
        		<div class="col-lg-4 col-lg-offset-1">Dashboard</div>
        		<div class="col-lg-4 col-lg-offset-2">Electronique</div>
        		<div class="col-lg-4 col-lg-offset-2">Informatique</div>
        		<div class="col-lg-4 col-lg-offset-2">Télécom</div>
        		<div class="col-lg-4 col-lg-offset-2">Traitement du signal</div>
        		<div class="col-lg-4 col-lg-offset-2">Compétences générales</div>
      		</div>
    	</div>
    </div>
	
	
	<fieldset>
	
	ResultSet Info_eleve = statement.executeQuery( "SELECT ID_eleve, e_name, e_code  FROM Eleves;" );
	
	while(Info_eleve.next() )
	{
		int ID_eleve = Info_eleve.getInt("ID_eleve");
		String Name_eleve = Info_eleve.getString("ename");
		String
	}
			
		<input type="submit" value = "Deconexion" >			
	</fieldset>

</body>
</html>