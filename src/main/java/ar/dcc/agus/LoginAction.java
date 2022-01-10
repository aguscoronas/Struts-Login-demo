package ar.dcc.agus;


import javax.servlet.http.*;

import org.apache.struts.Globals;
import org.apache.struts.action.*;

public class LoginAction extends Action {

	public LoginAction() {
	}

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws java.io.IOException, javax.servlet.ServletException{

		LoginBean lb = new LoginBean();
		request.setAttribute("LoginBean", lb);
		lb.setParameters(request);
		ActionErrors ae = lb.validate();
		request.setAttribute(Globals.ERROR_KEY, ae);

		if(isCancelled(request)) {
			return mapping.findForward("invalid");
		}else if (ae == null || ae.size() == 0) {
			return mapping.findForward("valid");
		}
		else {
			return mapping.findForward("invalid");
		}
	}
}