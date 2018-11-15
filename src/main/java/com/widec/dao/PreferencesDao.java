package com.widec.dao;

import com.widec.model.Preferences;
import com.widec.model.User;
 
public interface PreferencesDao {
	
	Preferences findById(int id);

    void saveUserPreferences(Preferences userPreferences);
	
}