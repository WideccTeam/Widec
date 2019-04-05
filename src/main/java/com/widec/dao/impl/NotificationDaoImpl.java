package com.widec.dao.impl;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import com.widec.dao.AbstractDao;
import com.widec.dao.NotificationDao;
import com.widec.model.Notification;


@Repository("notificationDao")
public class NotificationDaoImpl extends AbstractDao<Integer, Notification> implements NotificationDao{

	@Override
	public Notification findById(int id) {
        return getByKey(id);
	}

	@Override
	public void saveNotification(Notification notification) {
        persist(notification);
	}
	

//	@Override
//	public List<Notification> findNotificationsByTargetId(int targetID) {
//		CriteriaBuilder criteriaBuilder = this.getEntityManager().getCriteriaBuilder();
//		CriteriaQuery<Notification> criteria = criteriaBuilder.createQuery(Notification.class);
//		
//		Root<Notification> notificationRoot = criteria.from(Notification.class);
//		criteria.select(notificationRoot);
//		criteria.where(criteriaBuilder.equal(notificationRoot.get("targetId"), targetID));
//		
//		List<Notification> notifications = this.getEntityManager().createQuery(criteria).getResultList();
//		
//		return notifications;
////		Criteria criteria = createEntityCriteria();
////		//MIRAR COMO PILLAR GRUPO POR PARAMETRO
////        return (List<Notification>) criteria.list();
//	}

}
