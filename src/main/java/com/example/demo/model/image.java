package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "image")
@EntityListeners(AuditingEntityListener.class)
public class image {
	private int id;
	private String path;
	private int idslide;
	private boolean status;
	

	@Column(name = "status", nullable = true)
	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}


	@Column(name = "id_slide", nullable = true)
	public int getIdslide() {
		return idslide;
	}

	public void setIdslide(int idslide) {
		this.idslide = idslide;
	}


	@Column(name = "path", nullable = true)
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}


	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}

