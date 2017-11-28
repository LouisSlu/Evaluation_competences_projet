package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	/*On récupère les champs du formulaire Connexion */
	private static final String VUE ="/WEB-INF/FomConnexion.jsp";
	private static final String CHAMP_LOGIN ="login";
	private static final String CHAMP_PASS ="mdp";
	
	public Connexion() {
	    super();
	    
	}
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter(CHAMP_LOGIN);
		String mdp = request.getParameter(CHAMP_PASS);
		
		try {
			validationLogin(login);
			validationPass(mdp);
		}catch(Exception e) {
			
		}
		
		private validationLogin(String login) throws Exception{}
	    private validationPass(String mdp) throws Exceptions{}
	}
	
	private void validationLogin(String login) throws Exception {
		if(login != null && login.trim().length() != 0) {
			throw new Exception("Merci de saisir un login !");
		}
	}
	
	private void validationPass(String mdp) throws Exception{
		if(mdp != null && mdp.trim().length() != 0) {
			throw new Exception("Merci de saisir un Mot de passe !");
		}
	}

}
