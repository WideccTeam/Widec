package com.widec.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.widec.dao.AbstractDao;
import com.widec.dao.UserDao;
import com.widec.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao{

	@Override
	public User findById(int id) {
        return getByKey(id);
	}

	@Override
	public void saveUser(User user) {
        persist(user);
	}

	@Override
	public void deleteUserByEmail(String email) {
		Query query = this.getSession().createSQLQuery("delete from User where email = :email");
        query.setString("email", email);
        query.executeUpdate();
	}

	@Override
	public List<User> findAllUsers() {
		Criteria criteria = createEntityCriteria();
        return (List<User>) criteria.list();
	}

	@Override
	public User findUserByEmail(String email) {
//		Query query = this.getSession().createSQLQuery("from User where email = :email");
//        query.setString("email", email);
//        return (User) query.list().get(0);
		Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("email", email));
        return (User) criteria.uniqueResult();
	}
	
	@Override
	public User findUserByEmailAndPassword(String email, String password) {
//		Query query = this.getSession().createSQLQuery("from User where email = :email");
//        query.setString("email", email);
//        return (User) query.list().get(0);
		Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("email", email));
        criteria.add(Restrictions.eq("password", password));
        return (User) criteria.uniqueResult();
	}

}
