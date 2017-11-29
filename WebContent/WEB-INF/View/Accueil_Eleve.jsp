<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil Eleve</title>
</head>
<body>
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