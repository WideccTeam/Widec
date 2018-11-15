package com.widec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.widec.dao.PreferencesDao;
import com.widec.model.Preferences;

@Service("preferencesService")
@Transactional
public class PreferencesServiceImpl implements PreferencesService {
 
    @Autowired
    private PreferencesDao preferencesDao;
     
    public Preferences findById(int id) {
        return preferencesDao.findById(id);
    }
     
}
