
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class Account
 */
@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    @Resource(lookup="jdbc/MyTHIPool")
    DataSource ds;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Alle Angaben zu neuem Account holen
	    request.setCharacterEncoding("UTF-8");
	    
	    Account form = new Account();
	    
		form.setName(request.getParameter("name"));
		form.setVorname(request.getParameter("vorname"));
		/**form.setEmail(request.getParameter("email"));
		form.setStrasse(request.getParameter("strasse"));
		form.setHnr(request.getParameter("hnr"));
		form.setStadt(request.getParameter("stadt"));
		form.setPlz(request.getParameter("plz"));
		form.setPasswort(request.getParameter("passwort"));
		form.setPasswort2(request.getParameter("passwort2"));*/
		
		persist(form);
		
		request.setAttribute("form", form);
		
		final RequestDispatcher dispatcher = request.getRequestDispatcher("outputaccount.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void persist(Account form) throws ServletException {
	    String[] generatedkeys = new String[] {"id"};

        try(Connection con = ds.getConnection();
        PreparedStatement p = con.prepareStatement("INSERT INTO accounts (name,vorname) VALUES (?,?)",generatedkeys)){
        
        p.setString(1, form.getName());
        p.setString(2, form.getVorname());
        p.executeUpdate();
        
        ResultSet rs = p.getGeneratedKeys();
        while(rs.next()){
            form.setId(rs.getLong(1));
        }
        
        } catch (Exception ex) {
            // TODO Auto-generated catch block
            throw new ServletException(ex.getMessage());
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
