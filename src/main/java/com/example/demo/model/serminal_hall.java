package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "serminal_hall")
@EntityListeners(AuditingEntityListener.class)
public class serminal_hall {
	private int id;
	private String name;
	private boolean status;
	private String description;
	private String imagepath;
	private boolean security;
	private boolean projector;
	private boolean wifi;
	private String address;
	private int capacity;
	

	@Column(name = "capacity", nullable = true)
	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	

	@Column(name = "address", nullable = true)
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	@Column(name = "wifi", nullable = true)
	public boolean getWifi() {
		return wifi;
	}

	public void setWifi(boolean wifi) {
		this.wifi = wifi;
	}


	@Column(name = "projector", nullable = true)
	public boolean getProjector() {
		return projector;
	}

	public void setProjector(boolean projector) {
		this.projector = projector;
	}


	@Column(name = "security", nullable = true)
	public boolean getSecurity() {
		return security;
	}

	public void setSecurity(boolean security) {
		this.security = security;
	}


	@Column(name = "imagepath", nullable = true)
	public String getImagepath() {
		return imagepath;
	}

	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}


	@Column(name = "description", nullable = true)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	@Column(name = "status", nullable = true)
	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}


	@Column(name = "name", nullable = true)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}

