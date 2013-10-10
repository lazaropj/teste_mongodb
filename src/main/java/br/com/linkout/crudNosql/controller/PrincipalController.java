package br.com.linkout.crudNosql.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;

@Resource
public class PrincipalController {
	
	@Get
	@Path("/principal/{banco}")
	public void index(String banco){
		System.out.println("teste");
	}

}
