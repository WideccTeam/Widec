package com.widec.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.widec.dao.AbstractDao;
import com.widec.dao.UserAndPreferencesDao;
import com.widec.model.UserAndPreferences;

@Repository("userAndPreferencesDao")
public class UserAndPreferencesDaoImpl extends AbstractDao<Integer, UserAndPreferences> implements UserAndPreferencesDao{

	@Override
	public UserAndPreferences findById(int id) {
		return getByKey(id);
	}

	@Override
	public List<UserAndPreferences> findAllUsers() {
		Criteria criteria = createEntityCriteria();
        return (List<UserAndPreferences>) criteria.list();
	}
}
