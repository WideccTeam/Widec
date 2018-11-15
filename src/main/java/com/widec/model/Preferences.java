package com.widec.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="preferencias")
public class Preferences {
 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
 
    @Column(name = "Formato")
    private String format;
 
    @Column(name = "Nivel")
    private int level;
    
    @Column(name = "Tono")
    private String mood;
    
    @Column(name = "Publico")
    private String audience;
    
    @Column(name = "Genero")
    private String genre;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getMood() {
		return mood;
	}

	public void setMood(String mood) {
		this.mood = mood;
	}

	public String getAudience() {
		return audience;
	}

	public void setAudience(String audience) {
		this.audience = audience;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

   
 
   
    /*
     * Aquí había un método de equal propio de la clase employee.
     * Puede que no sea mala idea en un futuro el crear uno
     */
 
   /*
    * Aquí había un método de toString que también puede que sea útil
    */
     
}