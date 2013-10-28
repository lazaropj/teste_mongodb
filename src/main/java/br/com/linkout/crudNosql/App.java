package br.com.linkout.crudNosql;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ){
    	ApplicationContext ctx = new GenericXmlApplicationContext("applicationContext.xml");
    	
    	MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");
    	
    	System.out.println(mongoOperation.toString());
    }
}
