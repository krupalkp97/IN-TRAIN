

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class pnrcheck
 */
@WebServlet("/pnrcheck")
public class pnrcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pnrcheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int p =Integer.parseInt( request.getParameter("pnr"));
		System.out.println(p);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/in_train","root","");
			PreparedStatement pst = con.prepareStatement("select * from pnr where pnr_no=?");
			pst.setString(1,request.getParameter("pnr"));
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next())
			{	String sta = rs.getString(2);
				String seat_no = rs.getString(3);
				HttpSession ht = request.getSession();
				ht.setAttribute("status", sta);
				ht.setAttribute("seat_no", seat_no);
				ht.setAttribute("pnr", p);
				response.sendRedirect("showpnr.jsp");
			}else {
				response.getWriter().println("Invaild PNR");
				response.setHeader("Refresh", "2;url=index.jsp");
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		

	}

}
