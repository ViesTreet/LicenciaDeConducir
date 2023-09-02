package com.codingdojo.javierulloa.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.javierulloa.modelos.Usuario;

public interface repositorioUsuarios extends CrudRepository<Usuario, Long>{
	
	
	List<Usuario> findAll();
	
	List<Usuario> findByLicenciaIdIsNull();

}
