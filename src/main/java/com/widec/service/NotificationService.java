package com.widec.service;

import java.util.List;

import com.widec.model.Notification;
import com.widec.model.Preferences;
import com.widec.model.User;


public interface NotificationService {
	
	Notification findById(int id);
	
    void saveNotification(Notification notification);

    List<Notification> findAllNotifications(); 

    List<Notification> findNotificationsByTargetId(int targetID); 
    
}
