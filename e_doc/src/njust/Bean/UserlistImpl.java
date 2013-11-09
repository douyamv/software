package njust.Bean;

import java.util.List;

import njust.PO.User;
import njust.User.UserManage;

public class UserlistImpl implements Userlist {
	public PageBean queryForPage(int pageSize, int page) {
		UserManage userManage=new UserManage();
		@SuppressWarnings("unchecked")
		List<User> list=userManage.findAll();
		int allRow = list.size();//�ܼ�¼��
		int totalPage = PageBean.countTotalPage(pageSize, allRow);//��ҳ��
		final int offset = PageBean.countOffset(pageSize, page);
		final int length = pageSize; //ÿҳ��¼��
		final int currentPage = PageBean.countCurrentPage(page);
		String hql="from User";
		List<User> userlist= userManage.queryForPage(hql, offset, length);  //"һҳ"�ļ�¼
		//System.out.print(list.get(0).get)
		//�ѷ�ҳ��Ϣ���浽Bean��
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(userlist);
		return pageBean;
	}
    
}
