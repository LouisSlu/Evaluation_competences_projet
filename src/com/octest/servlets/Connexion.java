package com.octest.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.beans.*;
import com.octest.form.*;

@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	/*On récupère les champs du formulaire Connexion */
	public static final String VUE ="/WEB-INF/View/FomConnexion.jsp";
	public static final String ATT_SESSION_USER = "sessionUser";
	public static final String ATT_USER ="utilisateur";
	public static final String ATT_FORM ="form";
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* We create a new object form*/
		ConnexionForm form = new ConnexionForm();
		
		Utilisateur utilisateur = form.connecterUtilisateur(request);
		
		HttpSession session = request.getSession();
		
		if(form.getErreurs().isEmpty()) {
			session.setAttribute(ATT_SESSION_USER, utilisateur);
		}
		else {
			session.setAttribute(ATT_SESSION_USER, null);
			
		}
		request.setAttribute(ATT_FORM, form);
		request.setAttribute(ATT_USER, utilisateur);
		
		 /* Transmission de la paire d'objets request/response à notre JSP */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

}
