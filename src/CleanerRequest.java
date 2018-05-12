

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CleanerRequest
 */
@WebServlet("/CleanerRequest")
public class CleanerRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CleanerRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pnr = Integer.parseInt(request.getParameter("pnr"));
		int seatno = Integer.parseInt(request.getParameter("seatno"));
		String coachno = request.getParameter("coachno");
		int cellno = Integer.parseInt(request.getParameter("mobileno"));
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/in_train","root","");
			String sql = "insert into cleaner values(?,?,?,?)";
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setInt(1, seatno);
			pst.setString(2, coachno);
			pst.setInt(3, pnr);
			pst.setInt(4, cellno);
			
			int i = pst.executeUpdate();
			
			if(i>0) {
				response.getWriter().println("<h1>Successfully Lodge...Please Wait</h1>");
				response.setHeader("Refresh", "3;url=index.jsp");
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

}
