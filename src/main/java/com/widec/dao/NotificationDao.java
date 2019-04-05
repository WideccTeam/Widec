package com.widec.dao;

import java.util.List;

import com.widec.model.Notification;
import com.widec.model.User;

public interface NotificationDao {
	
	Notification findById(int id);
    
	void  saveNotification(Notification notification);
	
	List<Notification> findAllNotifications();
	
    List<Notification> findNotificationsByTargetId(int targetID);

}
