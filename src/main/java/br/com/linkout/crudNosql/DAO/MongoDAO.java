package br.com.linkout.crudNosql.DAO;

import java.net.UnknownHostException;

import br.com.caelum.vraptor.ioc.Component;
import br.com.linkout.crudNosql.model.Mural;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

@Component
public class MongoDAO {
	
	public void save(Mural mural){
		
		try {
			DB db = getConexao();
			BasicDBObject objeto = new BasicDBObject();
			objeto.put("nome", mural.getNome());
			objeto.put("url", mural.getUrl());
			objeto.put("dt_nascimento", mural.getDtNascimento());
			DBCollection dbs = db.getCollection("lazaro");
			dbs.save(objeto);
			System.out.println("TOTAL DE REGISTROS: " + dbs.getCount());			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		
	}

	private DB getConexao() throws UnknownHostException {
		MongoClientURI uri = new MongoClientURI(
				"mongodb://crud_mongo:hoje2013@ds063287.mongolab.com:63287/crud_mongo");
		MongoClient client = new MongoClient(uri);
		DB db = client.getDB(uri.getDatabase());
		return db;
	}

}
