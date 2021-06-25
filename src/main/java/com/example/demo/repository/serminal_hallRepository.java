package com.example.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.serminal_hall;

public interface serminal_hallRepository extends JpaRepository<serminal_hall, Integer> {
	@Query (value="SELECT * FROM serminal_hall s where s.name = ?1", nativeQuery=true)
	public Optional<serminal_hall> findByid_serminal(String name);
}
