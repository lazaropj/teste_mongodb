package br.com.linkout.crudNosql.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.linkout.crudNosql.DAO.MongoDAO;
import br.com.linkout.crudNosql.model.Mural;

@Resource
@Path("/principal")
public class PrincipalController {
	
	private Result result;
	private MongoDAO dao;
	
	public PrincipalController(Result result,MongoDAO dao) {
		this.result = result;
		this.dao = dao;
	}
	
	@Get
	@Path("/index/{banco}")
	public void index(String banco){
		result.include("ghoma", "ghoma");
	}
	
	@Post
	@Path("/salvar")
	public void salvar(Mural mural){
		System.out.println("ASHDGIJDHJSDHJDFHGHDSLJKDS");
		dao.save(mural);
		result.nothing();
	}

}
