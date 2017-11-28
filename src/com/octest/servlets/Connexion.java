package com.octest.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	/*On récupère les champs du formulaire Connexion */
	public static final String VUE ="/WEB-INF/View/FomConnexion.jsp";
	public static final String CHAMP_LOGIN ="login";
	public static final String CHAMP_PASS ="mdp";
	public static final String ATT_ERREURS = "erreurs";
	public static final String ATT_RESULTAT = "resultat";
	
	public Connexion() {
	    super();   
	}
	
	private void validationLogin(String login) throws Exception {
		if(login != null && login.trim().length() == 0) {
			throw new Exception("Merci de saisir un login !");
		}
	}
	
	private void validationPass(String mdp) throws Exception{
		if(mdp != null && mdp.trim().length() == 0) {
			throw new Exception("Merci de saisir un Mot de passe !");
		}
	}
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resultat;
        Map<String, String> erreurs = new HashMap<String, String>();

		String login = request.getParameter(CHAMP_LOGIN);
		String mdp = request.getParameter(CHAMP_PASS);
		
		/*Validation du login*/
		try {
			validationLogin(login);
		} catch(Exception e){
			erreurs.put(CHAMP_LOGIN, e.getMessage());
		}
		
		/*Validation du Mot de Passe*/
		try {
			validationPass(mdp);
		} catch(Exception e){
			erreurs.put(CHAMP_PASS, e.getMessage());
		}
		
		if (erreurs.isEmpty()) {
			resultat ="Vous êtes connecté.";
		} else {
			resultat ="Echec de la connexion.";
		}
		
		/*Stockage du résultat et des messages d'erreur dans l'objet request */
		request.setAttribute(ATT_ERREURS, erreurs);
		request.setAttribute(ATT_RESULTAT, resultat);
		
		 /* Transmission de la paire d'objets request/response à notre JSP */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

}
