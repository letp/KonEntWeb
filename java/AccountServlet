import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Account
 */
@WebServlet("/Account")
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
	    
	    Account neu = new Account();
	    
		neu.setName(request.getParameter("name"));
		neu.setVorname(request.getParameter("vorname"));
		neu.setEmail(request.getParameter("email"));
		neu.setStrasse(request.getParameter("strasse"));
		neu.setHnr(request.getParameter("hnr"));
		neu.setStadt(request.getParameter("stadt"));
		neu.setPlz(request.getParameter("plz"));
		neu.setPasswort(request.getParameter("passwort"));
		neu.setPasswort2(request.getParameter("passwort2"));
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
