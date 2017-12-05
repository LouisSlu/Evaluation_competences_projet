package com.octest.form;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.octest.beans.*;

public final class ConnexionForm {

	private static final String CHAMP_LOGIN ="login";
	private static final String CHAMP_PASS ="mdp";
	private String resultat;
	private Map<String, String> erreurs = new HashMap<String, String>();
	
	public String getResultat() {
		return resultat;
	}

	public Map<String, String> getErreurs() {
		return erreurs;
	}	



	public Utilisateur connecterUtilisateur(HttpServletRequest request) {
		
		String login = getValeurChamp(request, CHAMP_LOGIN);
		String mdp = getValeurChamp(request, CHAMP_PASS);
		
		Utilisateur utilisateur = new Utilisateur();
		
		/*Validation du login*/
		try {
			validationLogin(login);
		} catch(Exception e){
			erreurs.put(CHAMP_LOGIN, e.getMessage());
		}
		utilisateur.setLogin(login);
		
		/*Validation du Mot de Passe*/
		try {
			validationPass(mdp);
		} catch(Exception e){
			erreurs.put(CHAMP_PASS, e.getMessage());
		}
		utilisateur.setMdp(mdp);
		
		if (erreurs.isEmpty()) {
			resultat ="Vous êtes connecté.";
		} else {
			resultat ="Echec de la connexion.";
		}
	
		return utilisateur;
	}

private void validationLogin(String login) throws Exception {
	if(login != null && login.trim().length() == 0) {
		throw new Exception("Merci de saisir un login !");
	}
}

private void validationPass(String mdp) throws Exception{
	if(mdp != null) {
		if(mdp.length() < 4) {
			throw new Exception("Le mot de passe doit contenir au moins 3 caractères");
		}
		else {
			throw new Exception("Merci de saisir un Mot de passe !");
		}
	}
}

private void SetErreur (String champ, String message){
	erreurs.put(champ,message);
}


private static String getValeurChamp(HttpServletRequest request, String nomChamp) {
	String valeur = request.getParameter(nomChamp);
	if (valeur == null || valeur.trim().length() == 0) {
		return null;
	}
	else {
		return valeur.trim();
	}
}
}






