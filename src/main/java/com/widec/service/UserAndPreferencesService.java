package com.widec.service;

import java.util.List;

import com.widec.model.User;
import com.widec.model.UserAndPreferences;

public interface UserAndPreferencesService {
	UserAndPreferences findById(int id);

    List<UserAndPreferences> findAllUsers(); 
}
