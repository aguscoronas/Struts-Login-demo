package ar.dcc.agus;


import javax.servlet.http.*;
import org.apache.struts.action.*;
import org.apache.struts.action.ActionMessage;

public class LoginBean {

	String userType, userId ,passWord;

	public LoginBean() {}

	public void setParameters(HttpServletRequest request) {
		userId = request.getParameter("userId");
		passWord = request.getParameter("passWord");
	}

	public ActionErrors validate() {

		if (!userId.equals(passWord)) {
			ActionErrors ae = new ActionErrors();
			ae.add("userId", new ActionMessage("error.invalid.login"));
			return ae;
		}

		if (userId.equals("admin")) {
			userType = "loginbean.admin";
		} else
		if (userId.equals("user")) {
			userType = "loginbean.user";
		} else {
			ActionErrors ae = new ActionErrors();
			ae.add("userId", new ActionMessage("error.invalid.login"));
			return ae;
		}

		return null;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
}		