package com.octest.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.beans.Utilisateur;
import com.octest.form.ConnexionForm;


public class HomeEleve {
	/* Take the id of student */
	 public static final String ACCES_UTILISATEUR  = "/WEB-INF/Acceuil_Eleve.jsp";
	 public static final String ATT_SESSION_USER = "sessionUser";

	    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	        /* Affichage de la page restreinte */
	        this.getServletContext().getRequestDispatcher( ACCES_UTILISATEUR ).forward( request, response );
	    } 
	    
		private ServletRequest getServletContext() {
			// TODO Auto-generated method stub
			return null;
		}
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			/* We create a new object form*/
	        this.getServletContext().getRequestDispatcher( ACCES_UTILISATEUR ).forward( request, response );
		}
}
