package com.octest.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class HomeEleve {
	/* Take the id of student */
	 public static final String ACCES_UTILISATEUR  = "/WEB-INF/Acceuil_Eleve.jsp";
	 public static final String ATT_SESSION_USER = "sessionUser";

	    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	        /* Récupération de la session depuis la requête */
	        HttpSession session = request.getSession();

	        /*
	         * Si l'objet utilisateur n'existe pas dans la session en cours, alors
	         * l'utilisateur n'est pas connecté.
	         */
	        if ( session.getAttribute( ATT_SESSION_USER ) == null ) {
	            /* Redirection vers la page publique */
	            response.sendRedirect( request.getContextPath() + ACCES_UTILISATEUR );
	        } else {
	            /* Affichage de la page restreinte */
	            this.getServletContext().getRequestDispatcher( ACCES_UTILISATEUR ).forward( request, response );
	        }
	    }

		private ServletRequest getServletContext() {
			// TODO Auto-generated method stub
			return null;
		}
	
}
