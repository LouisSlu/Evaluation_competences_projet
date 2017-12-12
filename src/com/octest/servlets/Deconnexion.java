package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Deconnexion")
public class Deconnexion extends HttpServlet {
	public static final String URL_REDIRECTION = "https://openclassrooms.com/courses/creez-votre-application-web-avec-java-ee/la-session-connectez-vos-clients";
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Récupération et destruction de la session en cours */
        HttpSession session = request.getSession();
        session.invalidate();
        
        /*Redirection vers la page d'acceuil */
        response.sendRedirect( URL_REDIRECTION );

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
