package isetj.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormulaireServlet
 */
@WebServlet("/FormulaireServlet")
public class FormulaireServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormulaireServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String op1 = request.getParameter("op1");
		String op2 = request.getParameter("op2");
		String r = request.getParameter("r");
		
		if (op1 == "" || op2 == "" || r == null) {
			
			RequestDispatcher disp = request.getRequestDispatcher("Calculatrice/erreur.jsp") ;
			disp.forward(request, response) ;
		}
		else if ((Integer.parseInt(op2)==0) &&(request.getParameter("r").equals("div"))) {
			RequestDispatcher disp = request.getRequestDispatcher("Calculatrice/erreur.jsp") ;
			disp.forward(request, response) ;
		}
		
		//addition
		else if (request.getParameter("r").equals("add")) {
			
			
			Double result = Double.parseDouble(op1) + Double.parseDouble(op2);
			request.setAttribute("res", result);
			RequestDispatcher disp = request.getRequestDispatcher("Calculatrice/response.jsp") ;
			disp.forward(request, response) ;
		}
		
		//soustraction
		else if (request.getParameter("r").equals("sous")) {
			
			
			Double result = Double.parseDouble(op1) - Double.parseDouble(op2);
			request.setAttribute("res", result);
			RequestDispatcher disp = request.getRequestDispatcher("Calculatrice/response.jsp") ;
			disp.forward(request, response) ;
		}
		
		//multiplication
		else if (request.getParameter("r").equals("mult")) {
			
			
			Double result = Double.parseDouble(op1) * Double.parseDouble(op2);
			request.setAttribute("res", result);
			RequestDispatcher disp = request.getRequestDispatcher("Calculatrice/response.jsp") ;
			disp.forward(request, response) ;
		}
		//division 
		else  {
			
			
			Double result = Double.parseDouble(op1) / Double.parseDouble(op2);
			request.setAttribute("res", result);
			RequestDispatcher disp = request.getRequestDispatcher("Calculatrice/response.jsp") ;
			disp.forward(request, response) ;
		}
		
		
	}

}
