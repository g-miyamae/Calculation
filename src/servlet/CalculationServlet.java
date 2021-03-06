package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculationServlet
 */
@WebServlet("/CalculationServlet")
public class CalculationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CalculationServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = request.getParameter("action");
		int ans =0;

		try{


			if(action.equals("login")){

				gotoPage(request,response,"/WEB-INF/jsp/NamberEntry.jsp");

			}

			if(action.equals("namber")){


				int calculationNamber1 = Integer.parseInt(request.getParameter("calculationNamber1"));
				String operator = String.valueOf(request.getParameter("operator"));
				int calculationNamber2 = Integer.parseInt(request.getParameter("calculationNamber2"));


				System.out.println(calculationNamber1);
				System.out.println(operator);
				System.out.println(calculationNamber2);


				if(operator.equals("+")){
					ans =calculationNamber1 + calculationNamber2;
				}

				else if(operator.equals("-")){
					ans =calculationNamber1 - calculationNamber2;
				}

				else if(operator.equals("*")){
					ans =calculationNamber1 * calculationNamber2;
				}

				else if(operator.equals("/")){
					//					if(calculationNamber2 != 0){
					ans =calculationNamber1 / calculationNamber2;
				}

			}

			request.setAttribute("ans",ans);
			gotoPage(request,response,"/WEB-INF/jsp/Result.jsp");

		}
		catch(Exception e){
			e.printStackTrace();
		}

	}
	private void gotoPage( HttpServletRequest request, HttpServletResponse response, String page) throws ServletException,IOException{
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);

	}
}

