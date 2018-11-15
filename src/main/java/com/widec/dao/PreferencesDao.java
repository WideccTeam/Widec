package com.widec.dao;

import com.widec.model.Preferences;
 
public interface PreferencesDao {
	
	Preferences findById(int id);
}