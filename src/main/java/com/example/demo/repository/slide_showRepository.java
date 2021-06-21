package com.example.demo.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.slide_show;

public interface slide_showRepository extends JpaRepository<slide_show, Integer> {
	slide_show getByIdAndStatusTrue(int id);
}
