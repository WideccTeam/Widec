package com.widec.service;

import java.util.List;

import com.widec.model.User;

public interface UserService {
	User findById(int id);
     
    void saveUser(User user);
     
    void deleteUserByEmail(String email);
 
    List<User> findAllUsers(); 
     
    User findUserByEmail(String email);

	User findUserByEmailAndPassword(String email, String password);
}
