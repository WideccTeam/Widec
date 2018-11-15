package com.widec.dao;

import java.util.List;
import com.widec.model.User;
 
public interface UserDao {
 
	User findById(int id);
 
    void saveUser(User user);
     
    void deleteUserByEmail(String email);
     
    List<User> findAllUsers();
 
    User findUserByEmail(String email);
    
    User findUserByEmailAndPassword(String email, String password);
}