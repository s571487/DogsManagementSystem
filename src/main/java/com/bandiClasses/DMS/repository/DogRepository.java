package com.bandiClasses.DMS.repository;

/** @author S571487 [Sudha Sravya Gandla]**/

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.bandiClasses.DMS.Models.Dog;

public interface DogRepository extends CrudRepository<Dog, Integer> {
	List<Dog> findByName(String name);
	
}
