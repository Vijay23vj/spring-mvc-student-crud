package crud.configuration;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan("crud")
public class Myconfig {
	@Bean
	public EntityManager entityManager() {
		return Persistence.createEntityManagerFactory("std").createEntityManager();
	}
}
