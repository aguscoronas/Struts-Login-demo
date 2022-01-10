package ar.dcc.agus;


import org.apache.struts.validator.ValidatorForm;
public class LoginForm extends ValidatorForm {

	
	private static final long serialVersionUID = -2421628954478595029L;
	String userId, passWord;

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getUserId() {
		return userId;
	}

	public String getPassWord() {
		return passWord;
	}

}
