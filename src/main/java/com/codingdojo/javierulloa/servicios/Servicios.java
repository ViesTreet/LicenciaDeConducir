package com.codingdojo.javierulloa.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.javierulloa.modelos.Licencia;
import com.codingdojo.javierulloa.modelos.Usuario;
import com.codingdojo.javierulloa.repositorios.repositorioLicencias;
import com.codingdojo.javierulloa.repositorios.repositorioUsuarios;



@Service
public class Servicios {

	
	@Autowired 
	private repositorioLicencias repoLicencia;
	
	
	@Autowired
	private repositorioUsuarios repoUsuario;
	
	
	private int numeroLicencia = 1;
	
	
	
	public List<Licencia> TodasLasLicencias(){
		
		return repoLicencia.findAll();
	}
	
	public List<Usuario> TodosLosUsuarios(){
		
		return repoUsuario.findAll();
	}
	
	public Licencia licenciaId(Long id) {
		
		return repoLicencia.findById(id).orElse(null);
	}
	
	public Usuario usuarioId(Long id) {
		
		return repoUsuario.findById(id).orElse(null);
	}
	
	public Licencia guardarLicencia(Licencia nuevaLicencia) {
		
		nuevaLicencia.setNumeroLicencia(String.format("%06d",numeroLicencia));
		numeroLicencia ++ ;
		
		return repoLicencia.save(nuevaLicencia);
		
	}
	
	public Usuario guardarUsuario(Usuario nuevoUsuario) {
		
		return repoUsuario.save(nuevoUsuario);
		
	}
	
	
	public List<Usuario> usuarioSinLicencia(){
		
		return repoUsuario.findByLicenciaIdIsNull();
	}
	
	
}
