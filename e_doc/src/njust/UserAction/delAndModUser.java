package njust.UserAction;
import njust.PO.User;
import njust.User.UserManage;

public class delAndModUser {
	private String[] choice;
	private User  user;
	private int tag;
	private UserManage userManage;
	public String[] getChoice() {
		return choice;
	}
	public void setChoice(String[] choice) {
		this.choice = choice;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getTag() {
		return tag;
	}
	public void setTag(int tag) {
		this.tag = tag;
	}
	
	public String execute() throws Exception{
		userManage=new UserManage();
		//�޸Ĳ���ֵ��ModifyUser��jspҳ��
		if(tag==1){
			this.user=userManage.findByUsername(choice[0]);
			return "modify";
		}
		else{//ɾ��
			try {
				for(int i=0;i<choice.length;i++){
					System.out.println(choice[i]);
					userManage.DeleteUser(choice[i]);
				}
				
				return "delete";
			} catch (Exception e) {
				return "error";
			}
		}
	}
}
