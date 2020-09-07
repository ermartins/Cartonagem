package br.com.allSystem.login.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.allSystem.login.model.Login;

public interface LoginDAO {
	public int save(Login login) throws SQLException;
	public int update(Login login);
	public Login get(Integer id);
	public int delete(Integer id);
	public List<Login> list();
}
