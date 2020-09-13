package br.com.allSystem.login.dao;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.sql.SQLException;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import br.com.allSystem.login.model.Login;

class LoginDAOTest {

	private DriverManagerDataSource dataSource;
	private LoginDAO dao;
	
	@BeforeEach
	void setupBeforaEach() {
		dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/cartonagem");
		dataSource.setUsername("root");
		dataSource.setPassword("Mysql4783*1");
		
		dao = new LoginDAOImpl(dataSource);				
	}
	
	@Test
	void testSave() throws SQLException {

		Login login = new Login(1, "Edvaldo Teste");	
		
		int result = dao.save(login); 
		
		assertTrue(result > 0);
	}

	@Test
	void testUpdate() {
		fail("Not yet implemented");
	}

	@Test
	void testGet() {
		fail("Not yet implemented");
	}

	@Test
	void testDelete() {
		fail("Not yet implemented");
	}

	@Test
	void testList() {
		fail("Not yet implemented");
	}

}
