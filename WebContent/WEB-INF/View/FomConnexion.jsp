<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Connexion</title>
	<link href="bootstraps/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/tuto.css" rel="stylesheet">
</head>

<body>
	<form action="" method="post">
		<fieldset>
			 <legend>Connexion</legend>
			 <label for="login">Login : <span class="requis">*</span></label>
             <input type="text" id="login" name="login" value="<c:out value="${param.login}"/>" size="20" maxlength="60" />
			 <span class="erreur">${erreurs['login']}</span>
             
             <br />
             <label for="mdp">Mot de passe : <span class="requis">*</span></label>
             <input type="password" id="mdp" name="mdp" value="" size="20" maxlength="60" />
             <span class="erreur">${erreurs['mdp']}</span>
             <br />
             
          	 <input type="submit" value="Connexion" class="Sanslabel"/>
             <br />
             
			 <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
			
             
             <p> ${sessionUser}</p>
             
		</fieldset>
	</form>

</body>
</html>