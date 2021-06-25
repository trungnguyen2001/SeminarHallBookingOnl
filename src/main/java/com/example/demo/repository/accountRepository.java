package com.example.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.account;

public interface  accountRepository extends JpaRepository<account, Integer>{
	account findByEmail(String email);
	@Query(value="SELECT * FROM account a where a.username=?1", nativeQuery = true)
	public Optional<account> findallinforuser(String nam_user);
	@Query(value="SELECT * FROM account a where a.id=?1", nativeQuery = true)
	public Optional<account> findallinforuser_id(int id);
}
