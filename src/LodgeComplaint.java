

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
 * Servlet implementation class LodgeComplaint
 */
@WebServlet("/LodgeComplaint")
public class LodgeComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LodgeComplaint() {
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
		String name = request.getParameter("name");
		int pnr = Integer.parseInt(request.getParameter("pnr"));
		int cellno = Integer.parseInt(request.getParameter("cellno"));
		String subject = request.getParameter("subject");
		String complaint = request.getParameter("complaint");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/in_train","root","");
			String sql = "insert into rpf values(?,?,?,?,?)";
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, name);
			pst.setInt(2, pnr);
			pst.setInt(3, cellno);
			pst.setString(4, subject);
			pst.setString(5, complaint);
			
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
