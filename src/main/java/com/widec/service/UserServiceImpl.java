package com.widec.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.widec.dao.UserDao;
import com.widec.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
 
    @Autowired
    private UserDao userDao;
     
    public User findById(int id) {
        return userDao.findById(id);
    }
 
    public void saveUser(User user) {
    	userDao.saveUser(user);
    }

	@Override
	public void deleteUserByEmail(String email) {
		userDao.deleteUserByEmail(email);
	}

	@Override
	public List<User> findAllUsers() {
		return userDao.findAllUsers();
	}

	@Override
	public User findUserByEmail(String email) {
		return userDao.findUserByEmail(email);
	}

	@Override
	public User findUserByEmailAndPassword(String email, String password) {
		return userDao.findUserByEmailAndPassword(email, password);
	}
     
}
