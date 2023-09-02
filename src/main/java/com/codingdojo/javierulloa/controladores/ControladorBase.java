package com.codingdojo.javierulloa.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.javierulloa.modelos.Licencia;
import com.codingdojo.javierulloa.modelos.Usuario;
import com.codingdojo.javierulloa.servicios.Servicios;

import jakarta.validation.Valid;

@Controller	
public class ControladorBase {
	
	@Autowired
	private Servicios servicio;
	
	@GetMapping("/")
	public String index(Model model) {
		
		List<Usuario> usuarios = servicio.TodosLosUsuarios();
		model.addAttribute("usuarios",usuarios);
		
		return "index.jsp";
	}
	
	
	@GetMapping("/persons/new")
	public String nuevoUsuario(@ModelAttribute("nuevaPersona")Usuario usuario) {
		
		return "nuevoUsuario.jsp";
	}
	
	@PostMapping("/persons/new")
	public String GuardarUsuario(@Valid @ModelAttribute("nuevaPersona")Usuario usuario, BindingResult result) {
		
		if(result.hasErrors()) {
			return "nuevoUsuario.jsp";
		} else {
			servicio.guardarUsuario(usuario);
			return "redirect:/";
		}
	}
	
	@GetMapping("/licenses/new")
	public String nuevaLicencia(@ModelAttribute("nuevaLicencia")Licencia licencia , Model model) {
		
		List<Usuario> usuarioSinLicencia = servicio.usuarioSinLicencia();
		model.addAttribute("usuarios",usuarioSinLicencia);
		return "nuevaLicencia.jsp";
	}
	
	@PostMapping("/licenses/new")
	public String GuardarLicencia(@Valid @ModelAttribute("nuevaLicencia")Licencia licencia, BindingResult result,Model model) {
		
		if(result.hasErrors()) {
			List<Usuario> usuarioSinLicencia = servicio.usuarioSinLicencia();
			model.addAttribute("usuarios",usuarioSinLicencia);
			return "nuevaLicencia.jsp";
		} else {
			servicio.guardarLicencia(licencia);
			return "redirect:/";
		}
	}
	
	
	@GetMapping("/persons/{id}")
	public String mostrar(@PathVariable("id")Long id,Model model) {
		Usuario usuario = servicio.usuarioId(id);
		model.addAttribute("usuario",usuario);
		return "mostrar.jsp";
	}
	
}
