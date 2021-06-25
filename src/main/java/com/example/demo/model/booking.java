package com.example.demo.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;


@Entity
@Table(name = "booking")
@EntityListeners(AuditingEntityListener.class)
public class booking {
	private int id;
	@DateTimeFormat(pattern="yyyy.MM.dd")
	private String from_date;
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	private String to_date;
	private String session;
	private Date approval_date;
	private String full_name;
	private String email;
	private String phone;
	private int id_serminal_hall;
	private int slide;
	@Column(nullable = true)
	private Boolean status;
	

	@Column(name = "status", nullable = true)
	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}


	@Column(name = "slide", nullable = true)
	public int getSlide() {
		return slide;
	}

	public void setSlide(int slide) {
		this.slide = slide;
	}


	@Column(name = "id_serminal_hall", nullable = true)
	public int getSerminal_hall_id() {
		return id_serminal_hall;
	}

	public void setSerminal_hall_id(int id_serminal_hall) {
		this.id_serminal_hall = id_serminal_hall;
	}


	@Column(name = "phone", nullable = true)
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	@Column(name = "email", nullable = true)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	@Column(name = "full_name", nullable = true)
	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}


	@Column(name = "approval_date", nullable = true)
	public Date getApproval_date() {
		return approval_date;
	}

	public void setApproval_date(Date approval_date) {
		this.approval_date = approval_date;
	}


	@Column(name = "session", nullable = true)
	public String getSession() {
		return session;
	}

	public void setSession(String session) {
		this.session = session;
	}
	@JsonFormat(pattern = "yyyy-MM-dd",shape = Shape.STRING )
	@Column(name = "to_date", nullable = true)
	public String getTo_date() {
		return to_date;
	}

	public void setTo_date(String to_date) {
		this.to_date = to_date;
	}
	@JsonFormat(pattern = "yyyy-MM-dd",shape = Shape.STRING )
	/* @DateTimeFormat(pattern="yyyy.MM.dd") */
	@Column(name = "from_date", nullable = true)
	public String getFrom_date() {
		return from_date;
	}

	public void setFrom_date(String from_date) {
		this.from_date = from_date;
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	//create display date 
	@Column(name = "from_date", nullable = true,insertable = true,updatable=false)
	public String FromDateDisplay() {
		 SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");
	      String strDate = formatter.format(from_date);
	      return strDate;
	}
	@Column(name = "to_date", nullable = true,insertable = false,updatable=false)
	public String ToDateDisplay() {
		 SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");
	      String strDate = formatter.format(to_date);
	      return strDate;
	}
	@Column(name = "approval_date", nullable = true,insertable = false,updatable=false)
	public String ApprovalDateDisplay() {
		 SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");
	      String strDate = formatter.format(approval_date);
	      return strDate;
	}

}

