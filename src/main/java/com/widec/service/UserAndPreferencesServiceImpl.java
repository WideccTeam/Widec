package com.widec.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.widec.dao.UserAndPreferencesDao;
import com.widec.model.User;
import com.widec.model.UserAndPreferences;

@Service("userAndPreferencesService")
@Transactional
public class UserAndPreferencesServiceImpl implements UserAndPreferencesService{

    @Autowired
    private UserAndPreferencesDao userAndPreferencesDao;
    
	public UserAndPreferences findById(int id) {
        return userAndPreferencesDao.findById(id);
	}

	@Override
	public List<UserAndPreferences> findAllUsers() {
		return userAndPreferencesDao.findAllUsers();
	}

}
