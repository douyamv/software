package njust.User;
import njust.PO.User;
import njust.Sessionfactory.HibernateSessionFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.*;

public class UserManage {
	private Session session;
	private Transaction tx;
	private Query query;
	//����û�
	public boolean AddUser(User user){
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		try {
			String hqlsql = "from User as u where u.username=?";
			query = session.createQuery(hqlsql);
			query.setParameter(0, user.getUsername());
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
			if (list == null || list.size() == 0) {
				MD5 md5=new MD5();
				user.setPassword(md5.toMd5Str(user.getPassword()));
				session.save(user);
				tx.commit();
				return true;
			} 
			else return false;				
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	}
	//ɾ���û�
	public boolean DeleteUser(String username){
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		try {
			String hqlsql = "from User as u where u.username=?";
			query = session.createQuery(hqlsql);
			query.setParameter(0, username);
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
			if (list == null||list.size() == 0) return true;
			if (list != null&&list.size() != 0){ 
				session.delete(list.get(0));
				tx.commit();
				return true;				
			}
			return false;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}		
	}
	
	//�޸��û�����
	public boolean ModifyPassword(String username,String password){
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		try {
			String hqlsql = "from User as u where u.username=?";
			query = session.createQuery(hqlsql);
			query.setParameter(0, username);
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
			if (list != null&&list.size() != 0){ 
				MD5 md5=new MD5();
				User user=list.get(0);
				user.setPassword(md5.toMd5Str(password));				
				session.update(user);
				tx.commit();
				return true;				
			}
			return false;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}		
	}
	//�޸��û�����
	public boolean ModifyExperience(String username,int experience){
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		try {
			String hqlsql = "from User as u where u.username=?";
			query = session.createQuery(hqlsql);
			query.setParameter(0, username);
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
			if (list != null&&list.size() != 0){ 
				User user=list.get(0);
				user.setExperience(experience);
				session.update(user);
				tx.commit();
				return true;			
			}
			return false;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}		
	}
	//�޸��û��ȼ�
	public boolean ModifyRank(String username,int rank){
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		try {
			String hqlsql = "from User as u where u.username=?";
			query = session.createQuery(hqlsql);
			query.setParameter(0, username);
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
			if (list != null&&list.size() != 0){ 				
				User user=list.get(0);
				user.setRank(rank);				
				session.update(user);
				tx.commit();
				return true;				
			}
			return false;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}		
	}
	//�޸��û������û��������������
	public boolean ModifyUser(String username,String password,int experience,int rank){
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		try {
			String hqlsql = "from User as u where u.username=?";
			query = session.createQuery(hqlsql);
			query.setParameter(0, username);
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
			if (list != null&&list.size() != 0){ 
				MD5 md5=new MD5();
				User user=list.get(0);
				user.setPassword(md5.toMd5Str(password));
				user.setExperience(experience);
				user.setRank(rank);
				session.update(user);
				tx.commit();
				return true;				
			}
			return false;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}		
	}
	//�����û�����ѯ
	public User findByUsername(String username){
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		try {
			String hqlsql = "from User as u where u.username=?";
			query = session.createQuery(hqlsql);
			query.setParameter(0, username);
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
		    tx.commit();
			if(list!=null&&list.size()!=0)	return list.get(0);
			else return null;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	//��ѯ���е��û�
	public List findAll(){
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		try {
			String hqlsql = "from User";
			query = session.createQuery(hqlsql);
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
		    tx.commit();
			return list;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}	
	@SuppressWarnings("unchecked")
	public List<User> queryForPage(final String hql,  final int offset, final int length) {
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		List<User> list;
		try {
			Query query = session.createQuery(hql);
			query.setFirstResult(offset);
			query.setMaxResults(length);
			list = query.list();
			tx.commit();
			return list;
		} catch (Exception e) {			
			tx.rollback();
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}		
	}
}
