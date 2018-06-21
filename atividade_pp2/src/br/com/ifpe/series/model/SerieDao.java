package br.com.ifpe.series.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class SerieDao {

	private static final String PERSISTENCE_UNIT = "atividade_pp2";

	public void salvar(Serie serie) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(serie);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public List<Serie> listar() {
		
		EntityManagerFactory factory =
				Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
				EntityManager manager = factory.createEntityManager();
				List<Serie> lista = manager.createQuery("FROM Serie ORDER BY titulo ASC").getResultList();
				manager.close();
				factory.close();
				return lista;
	}
}
