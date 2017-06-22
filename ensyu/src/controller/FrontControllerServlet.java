package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class FrontControllerServlet
 */
@WebServlet("*.do") // 「.do」が付くすべてのリクエストを受け付ける
public class FrontControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontControllerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doservice(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// リクエストURLから適切なActionオブジェクト(ビジネス・ロジックの実行をカプセル化するオブジェクト)を取得
		Action action = ActionFactory.getAction(request.getServletPath());
		// Actionを実行して、転送先Viewのパスを取得
		String forwardPath = action.execute(request, response);

		// Actionの実装先でsendRedirectが実行されている場合にはレスポンスがすでに返送されているためnullが返る
		if (forwardPath != null) { // レスポンスがまだ返送されていなければ
			// 適切なViewに転送
			request.getRequestDispatcher(forwardPath).forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hoooooooooooooo");
		doservice(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hoooooooooooooo");
		doservice(request, response);
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */

}
