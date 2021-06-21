package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.image;

public interface imageRepository extends JpaRepository<image, Integer> {
	List<image> findByIdslide(int idslide);
}
