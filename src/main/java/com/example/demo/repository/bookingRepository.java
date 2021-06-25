package com.example.demo.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.booking;

public interface bookingRepository extends JpaRepository<booking, Integer> {
	List<booking> findByStatusTrue();
	@Query(value="SELECT * FROM booking b where b.id=?1",nativeQuery = true)
	public Optional<booking> findInforbooking(int id_booking);
	
	@Query(value="SELECT * FROM booking b where b.full_name=?1",nativeQuery = true)
	public Optional<booking> findInforbooking_name(String name);
	
	@Query(value="SELECT * FROM booking",nativeQuery = true)
	public Optional<booking> findInforall(String name);

}
