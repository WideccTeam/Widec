package com.widec.dao.impl;

import org.springframework.stereotype.Repository;

import com.widec.dao.AbstractDao;
import com.widec.dao.PreferencesDao;
import com.widec.model.Preferences;

@Repository("preferencesDao")
public class PreferencesDaoImpl extends AbstractDao<Integer, Preferences> implements PreferencesDao{
	//@Resource(name = "sessionFactory") private SessionFactory sessionFactory;

	@Override
	public Preferences findById(int id) {
		Preferences preferences = getByKey(id);
        return preferences;
	}
	
	@Override
    public void saveUserPreferences(Preferences userPreferences) {
		//this.getSession().saveOrUpdate(userPreferences);
        persist(userPreferences);
	}
}
