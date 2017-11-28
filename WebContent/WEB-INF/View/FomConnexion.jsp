<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Connexion</title>
	<link type="text/css" rel="stylesheet" href="" />
</head>

<body>
	<form action="" method="post">
		<fieldset>
			 <legend>Connexion</legend>
			 <label for="login">Login : <span class="requis">*</span></label>
             <input type="text" id="login" name="login" value="" size="20" maxlength="60" />
			 <span class="erreur">${erreurs['login']}</span>
             
             <br />
             <label for="mdp">Mot de passe : <span class="requis">*</span></label>
             <input type="text" id="mdp" name="mdp" value="" size="20" maxlength="60" />
             <span class="erreur">${erreurs['mdp']}</span>
             <br />
             
          	 <input type="submit" value="Connexion" class="Sanslabel"/>
             <br />
		</fieldset>
	</form>

</body>
</html>