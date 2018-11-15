package com.widec.dao.impl;

import org.springframework.stereotype.Repository;

import com.widec.dao.AbstractDao;
import com.widec.dao.PreferencesDao;
import com.widec.model.Preferences;

@Repository("preferencesDao")
public class PreferencesDaoImpl extends AbstractDao<Integer, Preferences> implements PreferencesDao{

	@Override
	public Preferences findById(int id) {
        return getByKey(id);
	}
}
