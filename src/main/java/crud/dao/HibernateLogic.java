package crud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import crud.dto.Student;

@Repository
@Transactional
public class HibernateLogic {

	@Autowired
	EntityManager manager;

	public void addStudent(Student std) {
		manager.getTransaction().begin();
		manager.persist(std);
		manager.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Student> fetchAll() {
		return manager.createQuery("select x from Student x").getResultList();
	}

	public void deleteRecord(int id) {
		Student student=manager.find(Student.class, id);
		manager.getTransaction().begin();
		manager.remove(student);
		manager.getTransaction().commit();
	}

	public void update(Student std) {
		manager.getTransaction().begin();
		manager.merge(std);
		manager.getTransaction().commit();
		
	}

	public Student find(int id) {
		return manager.find(Student.class,id);
	}

}
