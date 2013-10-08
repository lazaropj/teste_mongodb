package br.com.linkout.crudNosql.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;

@Resource
public class OlaMundoController {

	@Path("/fresquin")
	public void boasVindas(){
		System.out.println("OLA VRAPTOR");
	}
	
	

}
