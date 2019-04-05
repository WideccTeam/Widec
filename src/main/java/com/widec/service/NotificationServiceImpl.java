package com.widec.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.widec.dao.NotificationDao;
import com.widec.model.Notification;
import com.widec.model.User;


@Service("notificationService")
@Transactional
public class NotificationServiceImpl implements NotificationService{
	@Autowired
    private NotificationDao notificationDao;
	
	@Override
	public Notification findById(int id) {
		return notificationDao.findById(id);
	}

	@Override
	public void saveNotification(Notification notification) {
		notificationDao.saveNotification(notification);
		
	}
	
	@Override
	public List<Notification> findAllNotifications() {
		return notificationDao.findAllNotifications();
	}

//	@Override
//	public List<Notification> findNotificationsByTargetId(int targetID) {
//		return notificationDao.findNotificationsByTargetId(targetID);
//	}

}
