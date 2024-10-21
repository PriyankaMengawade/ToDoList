package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.model.ToDo;

public interface todoRepo extends JpaRepository<ToDo, Integer>
{

	ToDo deleteById(int id);

}
