package com.codingdojo.javierulloa.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.javierulloa.modelos.Licencia;

public interface repositorioLicencias extends CrudRepository<Licencia, Long>{
	
	
	List<Licencia> findAll();

}
