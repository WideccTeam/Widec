package com.widec.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="usuario")
public class User {
 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
 
    @Column(name = "Nombre")
    private String name;
 
    @Column(name = "Clave")
    private String password;
    
    @Column(name = "Correo")
    private String email;
    
    @Column(name = "Foto")
    private String photo;

    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

 
   
    /*
     * Aquí había un método de equal propio de la clase employee.
     * Puede que no sea mala idea en un futuro el crear uno
     */
 
   /*
    * Aquí había un método de toString que también puede que sea útil
    */
     
}