package com.example.demo.model;

import javax.persistence.criteria.CriteriaBuilder.In;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<account, Integer>{

}
