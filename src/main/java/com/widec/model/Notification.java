package com.widec.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="notificaciones")
public class Notification {
 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
	
	@Column(name = "Id_destino")
    private int targetId;
 
    @Column(name = "Tipo")
    private String type;
 
    @Column(name = "Mensaje")
    private String message;
    

	@Column(name = "Autor")
    private String author;
	
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	 public int getTargetId() {
		return targetId;
	}

	public void setTargetId(int targetId) {
		this.targetId = targetId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String string) {
		this.message = string;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
}