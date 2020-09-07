package br.com.allSystem.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import br.com.allSystem.login.model.Login;

public class LoginDAOImpl implements LoginDAO {

	private JdbcTemplate jdbcTemplate;

	public LoginDAOImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	
	
	@Override
	public int save(Login login) throws SQLException {
		Connection conn = this.jdbcTemplate.getDataSource().getConnection();

		String query = "call cartonagem.getLogins()";
		
		PreparedStatement comand = conn.prepareStatement(query);
		
		ResultSet resultado = comand.executeQuery();
		String a = "";
		while (resultado.next()) {
			
			a = resultado.getString("usuario");
		}
		
		return 0;
	}

	@Override
	public int update(Login login) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Login get(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Login> list() {
		// TODO Auto-generated method stub
		return null;
	}

}
