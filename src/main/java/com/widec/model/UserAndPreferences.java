package com.widec.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.Table;

@Entity
@Table(name="usuario")
@SecondaryTable(name="preferencias",
    pkJoinColumns=@PrimaryKeyJoinColumn(name="id"))
public class UserAndPreferences extends AbstractUser{

	@Column(table="preferencias", name = "Formato")
    private String format;
 
   /* @Column(table="preferencias", name = "Nivel")
    private int level;*/
    
    @Column(table="preferencias", name = "Tono")
    private String mood;
    
    @Column(table="preferencias", name = "Publico")
    private String audience;
    
    @Column(table="preferencias", name = "Genero")
    private String genre;
    

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

//	public int getLevel() {
//		return level;
//	}
//
//	public void setLevel(int level) {
//		this.level = level;
//	}

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

}
