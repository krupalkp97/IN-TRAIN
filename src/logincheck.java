

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class logincheck
 */
@WebServlet("/logincheck")
public class logincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logincheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter pw=response.getWriter();
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		System.out.println(uname+pass);
		try
		{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/collageproject","root","");
		Statement stmt = (Statement) conn.createStatement();
		
		String sql = "select * from signup where username = '"+uname+"' and password = '"+pass+"'";
		ResultSet rs= stmt.executeQuery(sql);
		if(rs.next())
		{
			rs.beforeFirst();
			while(rs.next())
			{
				HttpSession s=request.getSession();
				s.setAttribute("uname", uname);
				response.sendRedirect("welcome.jsp");
			}
		}
		else
		{
			HttpSession session=request.getSession();
			session.setAttribute("loginerror","please enter valid username and password");
			response.sendRedirect("login.jsp");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
