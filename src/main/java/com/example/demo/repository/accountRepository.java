package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.account;

public interface  accountRepository extends JpaRepository<account, Integer>{
	account findByEmail(String email);
}
