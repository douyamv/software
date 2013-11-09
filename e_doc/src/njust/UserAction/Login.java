package njust.UserAction;
import com.opensymphony.xwork2.ActionContext;
import njust.User.LoginAndRegist;
public class Login {
	private String username;
	private String password;
	private LoginAndRegist lr;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute() throws Exception{
		System.out.println(username);
		lr=new LoginAndRegist();
		String mess=lr.login(username, password); 
		if(mess.equals("noexist")){ 
			ActionContext.getContext().put("tip", "���û������ڣ�");
			return "error";
		} 
		else if(mess.equals("passerror")){
			ActionContext.getContext().put("tip", "�����������");
			return "error";
		}
		else{
			ActionContext.getContext().getSession().put("username", username);
		    return "success";
		}	
	}
}
