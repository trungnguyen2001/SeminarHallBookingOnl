package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.booking;

public interface bookingRepository extends JpaRepository<booking, Integer> {
	List<booking> findByStatusTrue();

}
